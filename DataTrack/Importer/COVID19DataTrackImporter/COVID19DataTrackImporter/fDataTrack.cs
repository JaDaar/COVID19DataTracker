using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity.Migrations.Sql;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using CsvHelper;
using System.Globalization;
using System.Data.SqlClient;
using COVID19DataTrackImporter.Models;

namespace COVID19DataTrackImporter
{
    public partial class fDataTrack : Form
    {
        private COVID19Context covid19Context;
        private bool isLoaded = false;
        private List<UsStates> dataRecords;
        private List<UsCounty> dataRecordCounties;
        public fDataTrack()
        {
            InitializeComponent();
            covid19Context = new COVID19Context();
            dataRecords=new List<UsStates>();
            dataRecordCounties=new List<UsCounty>();
        }

        private void InitializeGrid()
        {
            DataGridViewCellStyle style = dgvMain.ColumnHeadersDefaultCellStyle;
            style.BackColor = Color.Navy;
            style.ForeColor = Color.White;
            dgvMain.RowsDefaultCellStyle.BackColor = Color.LightBlue;
            dgvMain.AlternatingRowsDefaultCellStyle.BackColor =Color.LightCyan;
            style.Font = new Font("Arial", 10, FontStyle.Bold);
            this.dgvMain.Font = new Font("Arial", 7, FontStyle.Regular);
            this.dgvMain.RowTemplate.Height = 25;
            dgvMain.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvMain.MultiSelect = false;
            dgvMain.BackgroundColor = Color.Navy;
        }



        private void cmdImportStates_Click(object sender, EventArgs e)
        {
            ImportNYTimesStatesData();

        }

        private void ImportNYTimesStatesData()
        {
            var fileContent = string.Empty;
            var filePath = string.Empty;

            using (OpenFileDialog openFileDialog = new OpenFileDialog())
            {
                var directory = @"D:\\GIT\\COVID-19\\covid-19-data";
                openFileDialog.InitialDirectory = directory;
                openFileDialog.Filter = "csv files (*.csv)|*.csv";
                openFileDialog.FilterIndex = 1;
                openFileDialog.RestoreDirectory = true;


                if (openFileDialog.ShowDialog() == DialogResult.OK)
                {
                    //Get the path of specified file
                    filePath = openFileDialog.FileName;

                    //Read the contents of the file into a stream
                    var fileStream = openFileDialog.OpenFile();

                    using (StreamReader reader = new StreamReader(fileStream))
                    {
                        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
                        {
                            var record = new Models.UsStates();
                            var records = csv.EnumerateRecords(record);

                            try
                            {
                                foreach (var r in records)
                                {
                                    this.dgvMain.Rows.Add(r.state, r.date, r.cases, r.deaths);
                                    var dm = new UsStates
                                    {
                                        date = r.date,
                                        state = r.state,
                                        fips = r.fips,
                                        cases = r.cases,
                                        deaths = r.deaths
                                    };
                                    dataRecords.Add(dm);
                                }

                                isLoaded = true;
                                this.cmdUpload.Enabled = true;
                            }
                            catch (Exception)
                            {
                                isLoaded = false;
                                this.cmdUpload.Enabled = false;
                                throw;
                            }
                        }
                    }
                }
            }
        }

        private void ImportNYTimesCountyData()
        {
            var fileContent = string.Empty;
            var filePath = string.Empty;

            using (OpenFileDialog openFileDialog = new OpenFileDialog())
            {
                var directory = @"D:\\GIT\\COVID-19\\covid-19-data";
                openFileDialog.InitialDirectory = directory;
                openFileDialog.Filter = "csv files (*.csv)|*.csv";
                openFileDialog.FilterIndex = 1;
                openFileDialog.RestoreDirectory = true;


                if (openFileDialog.ShowDialog() == DialogResult.OK)
                {
                    //Get the path of specified file
                    filePath = openFileDialog.FileName;

                    //Read the contents of the file into a stream
                    var fileStream = openFileDialog.OpenFile();

                    using (StreamReader reader = new StreamReader(fileStream))
                    {
                        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
                        {
                            var record = new Models.UsCounty();
                            var records = csv.EnumerateRecords(record);

                            try
                            {
                                foreach (var r in records)
                                {
                                    this.dgvMain.Rows.Add(r.state,r.date,r.cases,r.deaths);
                                    var dm = new UsCounty
                                    {
                                        date = r.date,
                                        county = r.county,
                                        fips = r.fips,
                                        state = r.state,
                                        cases = r.cases,
                                        deaths = r.deaths
                                    };
                                    dataRecordCounties.Add(dm);
                                }

                                isLoaded = true;
                                this.button2.Enabled = false;
                                this.button1.Enabled = true;
                            }
                            catch (Exception e)
                            {
                                isLoaded = false;
                                this.cmdUpload.Enabled = false;
                                Console.WriteLine($"{e}");
                            }
                        }
                    }
                }
            }
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            InitializeGrid();
        }

        private void cmdUpload_Click(object sender, EventArgs e)
        {
            if (dataRecords.Any())
            {
                UploadStatesReferenceData();
                UploadStatesDate();
            }

            cmdUpload.Enabled = false;
            cmdImportStates.Enabled = false;
        }

        private void UploadStatesReferenceData()
        {

            string[] ExclusionList= {"District of Columbia", "Guam", "Puerto Rico", "Virgin Islands", "Northern Mariana Islands" };
            var statesList = (from d in dataRecords select d.state).Distinct().ToList();
            statesList.Sort();
            foreach (var item in statesList)
            {
                covid19Context.DEV_States.Add(new DEV_State {StateNm = item,Isastate = !ExclusionList.Contains(item) });
            }

            covid19Context.SaveChanges();
        }

        private void UploadStatesDate()
        {
            foreach (var itemRecord in dataRecords)
            {
                covid19Context.DEV_UsStatesTrackings.Add(new DEV_UsStatesTracking
                {
                    Cases = itemRecord.cases,
                    Date = DateTime.Parse(itemRecord.date),
                    Deaths = itemRecord.deaths,
                    Fips = itemRecord.fips,
                    Stateid = covid19Context.DEV_States.FirstOrDefault(x => x.StateNm == itemRecord.state).Stateid
                });
            }

            covid19Context.SaveChanges();
            SendMessageStatus("States Data Processing");
        }

        private void UploadCountyReferenceData()
        {
            Application.DoEvents();
            var cnt = 0;
            foreach (var itemRec in dataRecordCounties)
            {
                covid19Context.DEV_Counties.Add(new DEV_County
                {
                    CountyNm = itemRec.county,
                    StateNm = itemRec.state
                });
                cnt += 1;
            }
            covid19Context.SaveChanges();
            SendMessageStatus("County Data Processing");
        }

        private void SendMessageStatus(string msg)
        {
            MessageBox.Show(msg, "Import Processing is Completed.", MessageBoxButtons.OK, MessageBoxIcon.Information);
            dgvMain.DataSource =new List<string>();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ImportNYTimesCountyData();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            UploadCountyReferenceData();
        }
    }

}
