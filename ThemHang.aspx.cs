using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThemHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        string sTenfile;
        //
        //Tách lấy tên tập tin
        sTenfile = FileUpload1.FileName;
        //Thực hiện chép tập tin lên thư mục Upload
        FileUpload1.SaveAs(MapPath("~/img/" + sTenfile));
        Session["tenanh"] = sTenfile;
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();
        String strsel = "select count(*) from [HANGHOA]";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strsel;
        int rs = (int)cmd.ExecuteScalar();
        if (rs >= 0)
        {
            Session["demHangHoa"] = rs + 1;
            if (Session["demHangHoa"] != null)
            {
                Label5.Text = "MH" + Session["demHangHoa"].ToString();
            }
        }
        cn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //string ten = DropDownList1.SelectedValue.ToString();
        //String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        //SqlConnection cn = new SqlConnection(astrcn);
        //cn.Open();
        //SqlCommand cmd = new SqlCommand();
        //String strcmd = "insert into HANGHOA values(N'" + "MH" + Session["demHangHoa"].ToString() + "',N'" + txtname.Text + "',N'" + txtgiamoi.Text + "',N'" + "~/img/" + Session["tenanh"].ToString() + "',N'" + txtthongtin.Text + "',N'" + txtsk.Text + "',N'" + txtgiacu.Text + "','" + ten + "')";
        //cmd.Connection = cn;
        //cmd.CommandText = strcmd;
        //int T = (int)cmd.ExecuteNonQuery();
        //if (T == 1)
        //{
        //    MultiView1.ActiveViewIndex = 1;
        //}
        //cn.Close();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string ten = DropDownList1.SelectedValue.ToString();
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        String strcmd = "insert into HANGHOA values(N'" + "MH" + Session["demHangHoa"].ToString() + "',N'" + txtname.Text + "',N'" + txtgiamoi.Text + "',N'" + "~/img/" + Session["tenanh"].ToString() + "',N'" + txtthongtin.Text + "',N'" + txtsk.Text + "',N'" + txtgiacu.Text + "','" + ten + "',"+TextBox1.Text+")";
        cmd.Connection = cn;
        cmd.CommandText = strcmd;
        int T = (int)cmd.ExecuteNonQuery();
        if (T == 1)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        cn.Close();
    }
   
}