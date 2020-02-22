using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RideXpress.BLL;
using RideXpress.Models;

namespace RideXpress_StarterKit
{
    public partial class EditReport : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RideXpressConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReportBLL bll = new ReportBLL(connectionString);
                ReportViewModel report = bll.GetReportById(Convert.ToInt32(Request.QueryString["ReportID"]));
                
                ReportID.Text = report.ReportID.ToString();
                DateOfIncident.Text = report.DateOfIncident.ToString();
                CarID.Text = report.CarID.ToString();
                ReportName.Text = report.ReportName;
                ReportDescription.Text = report.ReportDescription;
            }
        }

        protected void ReportEditButtonClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ReportBLL bll = new ReportBLL(connectionString);
                ReportViewModel report = new ReportViewModel();
                report.ReportID = Convert.ToInt32(Request.QueryString["ReportID"]);
                report.ReportName = ReportName.Text;
                report.ReportDescription = ReportDescription.Text;
                report.DateOfIncident = Convert.ToDateTime(DateOfIncident.Text);
                bll.EditReport(report);
                Response.Redirect("~/Reports.aspx");
            }
        }
    }
}