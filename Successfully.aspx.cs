using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace DC
{
    public partial class Successfully : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection(ConfigurationManager.AppSettings["webconn"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = DateTime.Now.ToShortDateString();
            findorderid();
        }
        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            String BookingId;
            BookingId = "Bk" + DateTime.Now.Hour.ToString() +
           DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() +
           DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() +
           DateTime.Now.Year.ToString() + new string(mypass);
            Label3.Text = BookingId;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into BookingDetails(BookingId,BookingDate) values('" + Label3.Text + "','" + Label4.Text + "')";
                String mycon1 = "Data Source=DESKTOP-V7UTR4K;Initial Catalog = DataDictionary; Integrated Security = True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();
            }
            Response.Redirect("UserHome.aspx");

        }

    }
}