using System;
using System.ComponentModel.DataAnnotations;

namespace RideXpress.Models
{
    public class ReportViewModel
    {
        public int ReportID { get; set; }
        public int CarID { get; set; }
        public CarViewModel Car { get; }
        public string CarName { get; set; }
        public string ReportName { get; set; }
        public string ReportDescription { get; set; }
        public DateTime DateOfReport { get; set; }
        public DateTime DateOfIncident { get; set; }
    }
}
