using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DC
{
    public partial class ManagePayment : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection(ConfigurationManager.AppSettings["webconn"]);
        SqlCommand CMD;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            CONN.Open();
            CMD = new SqlCommand("select * from PaymentDetails", CONN);
            dr = CMD.ExecuteReader();
            dr.Read();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }
    }
}