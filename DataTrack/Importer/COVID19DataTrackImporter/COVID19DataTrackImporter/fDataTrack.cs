using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
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
        public fDataTrack()
        {
            InitializeComponent();
            covid19Context = new COVID19Context();
            dataRecords=new List<UsStates>();
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

        private void cmdImport_Click(object sender, EventArgs e)
        {
            var reader = new StreamReader("D:\\GIT\\COVID-19\\covid-19-data\\us-states.csv");
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
                catch(Exception)
                {
                    isLoaded = false;
                    this.cmdUpload.Enabled = false;
                    throw;
                }
            }

            Console.ReadLine();
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
        }

        private void UploadStatesReferenceData()
        {

            string[] ExclusionList= {"District of Columbia", "Guam", "Puerto Rico", "Virgin Islands"};
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
        }
    }

}
