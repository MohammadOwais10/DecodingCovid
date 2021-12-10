using System;
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
    public partial class WhenWhere : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection(ConfigurationManager.AppSettings["webconn"]);
        SqlCommand CMD;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CONN.Open();
            CMD = new SqlCommand("insert into WhenWhere (VDate,VTime,MobileNo,States,Address,City,PinCode) values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "'," + TextBox2.Text + ",'" + DropDownList2.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ")", CONN);

            //int x = CMD.ExecuteNonQuery();
            //if (x > 0)
            //    Label1.Text = "done !";
            //else
            //    Label1.Text = "not done !";
            //CONN.Close();
            int x = CMD.ExecuteNonQuery();
            if (x > 0) 
                Label1.Text = "done !";
            else

                Label1.Text = "not done !";

            CONN.Close();
            Response.Redirect("Payment.aspx");
        }
    }
}