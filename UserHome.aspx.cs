using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;


namespace DC
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
            protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)

        {
            //DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("PersonalDetails.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}