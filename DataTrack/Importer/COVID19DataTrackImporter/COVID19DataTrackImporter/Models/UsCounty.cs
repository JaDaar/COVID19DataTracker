using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace COVID19DataTrackImporter.Models
{
    public class UsCounty
    {
        public string date { get; set; }
        public string county { get; set; }
        public string state { get; set; }
        public int? fips { get; set; }
        public int? cases { get; set; }
        public int? deaths { get; set; }
    }
}
