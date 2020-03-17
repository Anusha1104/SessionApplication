using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace SessionApplication
{
    public partial class Search : System.Web.UI.Page
    {
        SqlConnection Con = null;
        SqlCommand Cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sqlcon"].ToString());
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Con.Open();
            string str = "select * from tblpopulation";
            if (txtfname.Text.Length != 0)
                str = str + " where firstname like" + txtfname.Text;
            else if(txtlname.Text.Length!=0)
                str = str + " where lastname like" + txtlname.Text + "";
            else if (txtappid.Text.Length != 0)
                str = str + " where applicationid=" + int.Parse(txtappid.Text);
            Cmd = new SqlCommand(str, Con);
            SqlDataReader r =Cmd.ExecuteReader();
            DataSet ds = new DataSet();
            ds.Tables.Add("Data");
            ds.Tables["Data"].Load(r);
            GridView1.DataSource = ds.Tables["Data"];
            GridView1.DataBind();
            Con.Close();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    }
}