using System;
using RideXpress.BLL;
using RideXpress.Models;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideXpress_StarterKit
{
    public partial class AddReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ReportAddButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["RideXpressConnectionString"].ToString();
                ReportBLL bll = new ReportBLL(connectionString);
                ReportViewModel report = new ReportViewModel();
                report.ReportName = ReportName.Text;
                report.CarID = Convert.ToInt32(CarID.Text);
                report.DateOfIncident = Convert.ToDateTime(DateOfIncident.Text);
                report.ReportDescription = ReportDescription.Text;
                bll.AddReport(report);
                Response.Redirect("~/Reports.aspx");
            }
        }
    }
}