using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DC
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection(ConfigurationManager.AppSettings["webconn"]);
        SqlCommand CMD;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CONN.Open();
            CMD = new SqlCommand("select UserType,Name from LoginDetails INNER JOIN UsersDetails on LoginDetails.EmailId=UsersDetails.EmailId where LoginDetails.EmailId='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'", CONN);

            dr = CMD.ExecuteReader();

            dr.Read();
            if (dr.HasRows == true)
            {
                Session["UN"] = dr["Name"].ToString();
                Session["UT"] = dr["UserType"].ToString();

                if (dr["UserType"].ToString() == "USER")
                    Response.Redirect("UserHome.aspx");
                else if (dr["UserType"].ToString() == "ZONE")
                    Response.Redirect("ZoneHome.aspx");
                else if (dr["UserType"].ToString() == "ADMIN")
                    Response.Redirect("AdminHome.aspx");
            }
            else
            {
                dr.Close();
                CMD = new SqlCommand("select UserType,ZoneName from LoginDetails INNER JOIN ZoneDetails on LoginDetails.EmailId=ZoneDetails.EmailId where LoginDetails.EmailId='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'", CONN);

                dr = CMD.ExecuteReader();
                dr.Read();
                if (dr.HasRows == true)
                {
                    Session["UN"] = dr["ZoneName"].ToString();

                    if (dr["UserType"].ToString() == "USER")
                        Response.Redirect("UserHome.aspx");
                    else if (dr["UserType"].ToString() == "ZONE")
                        Response.Redirect("ZoneHome.aspx");
                    else if (dr["UserType"].ToString() == "ADMIN")
                        Response.Redirect("AdminHome.aspx");

                }

                else
                {
                    dr.Close();
                    CMD = new SqlCommand("select UserType,AdminName from LoginDetails INNER JOIN AdminDetails on LoginDetails.EmailId=AdminDetails.EmailId where LoginDetails.EmailId='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'", CONN);

                    dr = CMD.ExecuteReader();
                    dr.Read();
                    if (dr.HasRows == true)
                    {
                        Session["UN"] = dr["AdminName"].ToString();

                        if (dr["UserType"].ToString() == "USER")
                            Response.Redirect("UserHome.aspx");
                        else if (dr["UserType"].ToString() == "ADMIN")
                            Response.Redirect("AdminHome.aspx");
                        else if (dr["UserType"].ToString() == "ZONE")
                            Response.Redirect("ZoneHome.aspx");


                    }

                    else

                        Label1.Text = "invalid user id or password !";
                }
            }
            CONN.Close();
        }
    }
}