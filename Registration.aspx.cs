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
    public partial class Registration : System.Web.UI.Page
    {

        SqlConnection CONN = new SqlConnection(ConfigurationManager.AppSettings["webconn"]);
        SqlCommand CMD;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CONN.Open();
            CMD = new SqlCommand("insert into UsersDetails (Name,EmailId,DOB,Gender,MobileNo,Address,PostalCode,ConfirmPassword) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "', '" + DropDownList1.SelectedValue+ "'," + TextBox4.Text + ",'" + TextBox5.Text + "'," + TextBox6.Text + ",'" + TextBox8.Text + "'); insert into LoginDetails (EmailId,Password,UserType ) values('" + TextBox2.Text + "','" + TextBox7.Text + "','USER')", CONN);

            int x = CMD.ExecuteNonQuery();
            if (x > 0)
                Label1.Text = "done !";
            else
                Label1.Text = "not done !";
            CONN.Close();
        }
    }
}