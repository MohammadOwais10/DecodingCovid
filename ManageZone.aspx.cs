using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DC
{
    public partial class ManageZone : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection(ConfigurationManager.AppSettings["webconn"]);
        SqlCommand CMD;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CONN.Open();
            CMD = new SqlCommand("insert into ZoneDetails(ZoneId,ZoneName,EmailId,PhoneNo,City,PinCode,Address,ConfirmPassword)values(" + TextBox1.Text + ", '" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + TextBox5.Text + "'," + TextBox6.Text + ",'" + TextBox7.Text + "','" + TextBox9.Text + "'); insert into LoginDetails (EmailId,Password,UserType ) values('" + TextBox3.Text + "','" + TextBox8.Text + "','ZONE')", CONN);
            int x = CMD.ExecuteNonQuery();
            if (x > 0)
                Label2.Text = "Done !";
            else
                Label2.Text = "Not Done !";
            CONN.Close();
        }
    }
}