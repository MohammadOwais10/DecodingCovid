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
    public partial class PersonalDetails : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection(ConfigurationManager.AppSettings["webconn"]);
        SqlCommand CMD;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;

                dt.Columns.Add("SN");
                dt.Columns.Add("VaccineName");
                dt.Columns.Add("VaccinePrice");
                dt.Columns.Add("VaccineImage");
                dt.Columns.Add("VaccinationCharge");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-V7UTR4K;Initial Catalog = DataDictionary; Integrated Security = True";


                        SqlConnection scon = new SqlConnection(mycon);

                        String myquery = "select * from VaccineDetails where VaccineId=" +
                       Request.QueryString["id"];

                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;

                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["SN"] = 1;
                        dr["VaccineName"] = ds.Tables[0].Rows[0]["VaccineName"].ToString();
                        dr["VaccineImage"] = ds.Tables[0].Rows[0]["VaccineImage"].ToString();
                        dr["VaccinePrice"] = ds.Tables[0].Rows[0]["VaccinePrice"].ToString();
                        dr["VaccinationCharge"] = ds.Tables[0].Rows[0]["VaccinationCharge"].ToString();

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Response.Redirect("PersonalDetails.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        //                        int sr;
                        //                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        String mycon = "Data Source=DESKTOP-V7UTR4K;Initial Catalog = DataDictionary; Integrated Security = True";
                        SqlConnection scon = new SqlConnection(mycon);

                        String myquery = "select * from VaccineDetails where VaccineId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["SN"] = 1;
                        dr["VaccineName"] = ds.Tables[0].Rows[0]["VaccineName"].ToString();
                        dr["VaccineImage"] = ds.Tables[0].Rows[0]["VaccineImage"].ToString();
                        dr["VaccinePrice"] = ds.Tables[0].Rows[0]["VaccinePrice"].ToString();
                        dr["VaccinationCharge"] = ds.Tables[0].Rows[0]["VaccinationCharge"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Response.Redirect("PersonalDetails.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }
               
            }
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
               sr = Convert.ToInt32(dt.Rows[i]["SN"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["SN"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("UserHome.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CONN.Open();
            CMD = new SqlCommand("insert into PersonalDetails (Name,DOB,Gender,Aadhar,Health,Dose,CovidMember) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "'," + TextBox3.Text + ",'" + TextBox4.Text + "', '" + DropDownList2.SelectedValue + "','" + RadioButtonList1.SelectedValue + "')", CONN);

            int x = CMD.ExecuteNonQuery();
            if (x > 0)
            {
                Label1.Text = "done !";
                Response.Redirect("WhenWhere.aspx");
            }
            else
            {
                Label1.Text = "not done !";
            }
            CONN.Close();
           

        }
    }
}