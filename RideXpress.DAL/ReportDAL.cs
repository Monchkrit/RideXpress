using RideXpress.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace RideXpress.DAL
{
    public class ReportDAL
    {
        private string _connectionString;

        public ReportDAL(string connectionString)
        {
            _connectionString = connectionString;
        }

        public List<ReportViewModel> GetReports()
        {
            string sqlQuery = "SELECT * FROM dbo.IncidentReport " +
                "INNER JOIN dbo.Car ON IncidentReport.CarID = Car.CarID";
            List<ReportViewModel> reports = new List<ReportViewModel>(); 
            
            using (SqlConnection con = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand(sqlQuery, con))
            {
                con.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        ReportViewModel temp = new ReportViewModel()
                        {
                            ReportID = Convert.ToInt32(reader["ReportID"]),
                            CarID = Convert.ToInt32(reader["CarID"]),
                            DateOfIncident = Convert.ToDateTime(reader["DateOfIncident"]),
                            ReportDescription = reader["ReportDescription"].ToString(),
                            ReportName = reader["ReportName"].ToString(),
                            CarName = reader["Name"].ToString()
                        };
                        reports.Add(temp);
                    }                   
                }
            }
            return reports;
        }

        public ReportViewModel GetReportByID(int id)
        {
            ReportViewModel report = new ReportViewModel();
            string sqlQuery = "SELECT * FROM IncidentReport " + "WHERE ReportID = @ReportID";
            using (SqlConnection con = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand(sqlQuery, con))
            {
                con.Open();
                cmd.Parameters.Add("@ReportID", SqlDbType.Int).Value = id;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        report.ReportID = Convert.ToInt32(reader["ReportID"]);
                        report.ReportName = reader["ReportName"].ToString();
                        report.CarID = Convert.ToInt32(reader["CarID"]);
                        report.DateOfIncident = Convert.ToDateTime(reader["DateOfIncident"].ToString());
                        report.ReportDescription = reader["ReportDescription"].ToString();
                        report.DateOfReport = Convert.ToDateTime(reader["DateOfReport"]);
                    }
                }
            }
            return report;
        }

        public int EditReport(ReportViewModel edit)
        {
            string sqlQuery = "UPDATE IncidentReport SET ReportName=@ReportName, " +
                "DateOfIncident=@DateOfIncident, ReportDescription=@ReportDescription " +
                "WHERE ReportID=@ReportID";
            using (SqlConnection con = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand(sqlQuery, con))
            {
                con.Open();
                cmd.Parameters.Add("@ReportID", SqlDbType.Int).Value = edit.ReportID;
                cmd.Parameters.Add("@ReportName", SqlDbType.VarChar).Value = edit.ReportName;
                cmd.Parameters.Add("@ReportDescription", SqlDbType.VarChar).Value = edit.ReportDescription;
                cmd.Parameters.Add("@DateOfIncident", SqlDbType.DateTime).Value = edit.DateOfIncident;
                return cmd.ExecuteNonQuery();
            }
        }

        public int AddReport(ReportViewModel add)
        {
            string sqlQuery = "INSERT INTO IncidentReport (CarID, DateOfIncident, ReportName, ReportDescription) " +
                "VALUES (@CarID, @DateOfIncident, @ReportName, @ReportDescription)";
            using (SqlConnection con = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand(sqlQuery, con))
            {
                con.Open();
                cmd.Parameters.Add("@ReportID", SqlDbType.Int).Value = add.ReportID;
                cmd.Parameters.Add("@CarID", SqlDbType.Int).Value = add.CarID;
                cmd.Parameters.Add("@DateOfIncident", SqlDbType.DateTime).Value = add.DateOfIncident;
                cmd.Parameters.Add("@ReportName", SqlDbType.VarChar).Value = add.ReportName;
                cmd.Parameters.Add("@ReportDescription", SqlDbType.VarChar).Value = add.ReportDescription;
                return cmd.ExecuteNonQuery();
            }
        }

        public int DeleteReport(int id)
        {
            string sqlQuery = "DELETE FROM IncidentReport WHERE ReportID=@ReportID";
            using (SqlConnection con = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand(sqlQuery, con))
            {
                con.Open();
                cmd.Parameters.Add("@ReportID", SqlDbType.Int).Value = id;
                return cmd.ExecuteNonQuery();
            }
        }
    }
}
