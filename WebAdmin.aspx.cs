using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource3.SelectCommand = "SELECT * FROM [THANHVIEN]";
        MultiView1.ActiveViewIndex = 0;
        if(Session["menuAdmin"] != null)
        {

            SqlDataSource2.SelectCommand = "SELECT * FROM [HANGHOA] WHERE [MAPL] ='"+Session["menuAdmin"].ToString() +"'";
            
        }
        else
        {
            SqlDataSource2.SelectCommand = "SELECT * FROM [HANGHOA] WHERE [MAPL] ='" + "L01" + "'";
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "menu")
        {
            Session["menuAdmin"] = e.CommandArgument.ToString();
            Response.Redirect("WebAdmin.aspx");

        }
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("xoa"))
        {
            String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection cn = new SqlConnection(astrcn);
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            String strcmd = "DELETE FROM [HANGHOA] WHERE [MAMH] = '" +e.CommandArgument.ToString()+"' ";
            cmd.Connection = cn;
            cmd.CommandText = strcmd;
            int rs = (int)cmd.ExecuteNonQuery();
            if (rs == 1)
            {
                
                Response.Redirect("WebAdmin.aspx");
            }
            cn.Close();
        }
        if (e.CommandName.Equals("sua"))
        {
            Session["suaAdmin"] = e.CommandArgument.ToString();
            Response.Redirect("suaAdmin.aspx");
        }
    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "xoatv")
        {
            String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection cn = new SqlConnection(astrcn);
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            String strcmd = "DELETE FROM [THANHVIEN] WHERE [HOTEN] = '" + e.CommandArgument.ToString() + "' ";
            cmd.Connection = cn;
            cmd.CommandText = strcmd;
            int rs = (int)cmd.ExecuteNonQuery();
            if (rs == 1)
            {

                Response.Redirect("WebAdmin.aspx");
            }
            cn.Close();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}