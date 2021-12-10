using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DC
{
    public partial class Complaint : System.Web.UI.Page
    {
        static int ComplaintId;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcomplaintid();
            Label3.Text = DateTime.Now.ToLongDateString().ToString() + " " +
           DateTime.Now.ToLongTimeString().ToString();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "insert into ComplaintDetails(ComplaintId, ComplaintDate, Name,BookingId, ComplaintDetail, Status) values(" +
    ComplaintId + ",'" + Label3.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text +
    "','Under Processing')";
            String mycon = "Data Source=DESKTOP-V7UTR4K; Initial Catalog=DataDictionary; Integrated Security = true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label4.Text = "Your Complaint ID is " + ComplaintId + " . You can Check the Status of Complaint Using this Complaint ID,We will contact soon.";
        }
        public void getcomplaintid()
        {
            String mycon = "Data Source=DESKTOP-V7UTR4K; Initial Catalog=DataDictionary; Integrated Security = true";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select ComplaintId from ComplaintDetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                ComplaintId = 10001;
            }
            else
            {
                String mycon1 = "Data Source=DESKTOP-V7UTR4K; Initial Catalog=DataDictionary; Integrated Security = true";
                SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select max(ComplaintId) from ComplaintDetails";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                int a;
                a = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());
                a = a + 1;
                ComplaintId = a;
                scon1.Close();
            }
        }
    }
}