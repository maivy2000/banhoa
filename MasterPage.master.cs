using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox3.Attributes.Add("placeholder", "Bạn muốn tìm gì???");
        if (!IsPostBack)
        {
            if (Session["DNTC"] != null)
            {
                MultiView1.ActiveViewIndex = int.Parse(Session["DNTC"].ToString());
                lbtendn.Text = Session["DNTCname"].ToString();
                lbadmin.Text = Session["DNTCname2"].ToString();
            }
            else
            {
                MultiView1.ActiveViewIndex = 0;
            }
            
        }
       
    }
    protected void btndki_Click(object sender, EventArgs e)
    {
        Response.Redirect("DangKy.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();

        if (CheckBox1.Checked == true)
        {
            if (txttk.Text == "maivy2000" && txtmk.Text == "123456")
            {
                Session["DNTC"] = "1";
                Session["DNTCname"] = txttk.Text;
                Session["DNTCname2"] = "Admin";
                Response.Redirect("WebAdmin.aspx");

            }
            else
            {
                Session["DNTC"] = "0";
                lbkq.Text = " Sai tai khoan mat khau!";
            }

        }
        else
        {
            String strsel = "select count(*) from THANHVIEN where TKMAIL= '" + txttk.Text + "'AND MATKHAU = '" + txtmk.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = strsel;
            int KT = (int)cmd.ExecuteScalar();
            if (KT > 0)
            {
                Session["DNTC"] = "1";
                Session["DNTCname"] = txttk.Text;
                Session["DNTCname2"] = "";
                Response.Redirect("Flower.aspx");
            }
            else
            {
                Session["DNTC"] = "0";
                lbkq.Text = " ĐN Không thành công!";
            }
            cn.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["DNTC"] = "0";
        Response.Redirect("Flower.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text == "f" || TextBox3.Text == "fl" || TextBox3.Text == "flo" || TextBox3.Text == "flow" || TextBox3.Text == "flowe" || TextBox3.Text == "flower" || TextBox3.Text == "Flower")
        {
            Session["TimKiem"] = "L01";
        }
        if (TextBox3.Text == "hồng" || TextBox3.Text == "hồng đỏ" || TextBox3.Text == "Hồng Đỏ" )
        {
            Session["TimKiem"] = "L02";
        }
        if (TextBox3.Text == "hướng" || TextBox3.Text == "hướng dương" || TextBox3.Text == "Hướng Dương" )
        {
            Session["TimKiem"] = "L03";
        }        
        Session["Tentimkiem"] = TextBox3.Text;
        Response.Redirect("TimKiem.aspx");
    }
}
