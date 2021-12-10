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
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection CONN = new SqlConnection(ConfigurationManager.AppSettings["webconn"]);
        //SqlCommand CMD;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("SN");
                dt.Columns.Add("VaccineName");
                dt.Columns.Add("VaccinePrice");
                dt.Columns.Add("VaccinationCharge");
              
                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
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
                       // dr["SN"] = 1;
                      //  dr["VaccineName"] = ds.Tables[0].Rows[0]["VaccineName"].ToString();
                        dr["VaccinationCharge"] = ds.Tables[0].Rows[0]["VaccinationCharge"].ToString();
                        dr["VaccinePrice"] = ds.Tables[0].Rows[0]["VaccinePrice"].ToString();
                      
                        
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("WhenWhere.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
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
                       // dr["SN"] =  1;
                       // dr["VaccineName"] = ds.Tables[0].Rows[0]["VaccineName"].ToString();
                       dr["VaccinationCharge"] = ds.Tables[0].Rows[0]["VaccinationCharge"].ToString();
                        dr["VaccinePrice"] = ds.Tables[0].Rows[0]["VaccinePrice"].ToString();

                        
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[0].Text = "Total Amount";
                        GridView1.FooterRow.Cells[1].Text = grandtotal().ToString();
                        Response.Redirect("WhenWhere.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                      GridView1.FooterRow.Cells[0].Text = "Total Amount";
                      GridView1.FooterRow.Cells[1].Text = grandtotal().ToString();
                    }

                }
        
            }
            Label4.Text = DateTime.Now.ToShortDateString();
            findorderid();
        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["VaccinePrice"].ToString())+ Convert.ToInt32(dt.Rows[i]["VaccinationCharge"].ToString());
             i= i + 1;
            }
            return gtotal;
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
            String PaymentId;
            PaymentId = "Payment" + DateTime.Now.Hour.ToString() +
           DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() +
           DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() +
           DateTime.Now.Year.ToString() + new string(mypass);
            Label3.Text = PaymentId;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into PaymentDetails(PaymentId, TotalAmount, PaymentMode, PaymentDate) values('" + Label3.Text + "'," + GridView1.FooterRow.Cells[1].Text + ",'" + RadioButton1.Text + "','" + Label4.Text + "')";
                String mycon1 = "Data Source=DESKTOP-V7UTR4K;Initial Catalog = DataDictionary; Integrated Security = True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();
            }
            Response.Redirect("Successfully.aspx");

        }
    }
}