using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btndki_Click(object sender, EventArgs e)
    {
        //gán biến cho checkbox,
        String tam ="";
        {
        if(CheckBox1.Checked == true)
        {
        }
            tam = CheckBox1.Text;
        }
        if(CheckBox2.Checked == true)
        {
        }
            tam = CheckBox2.Text;
            String tam2 = "";
        if(RadioButton1.Checked == true)
        {
        }
        tam2 = RadioButton1.Text;
         if(RadioButton2.Checked == true)
        {
        }
        tam2 = RadioButton2.Text;


        String strcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();
        //tao cmd
        String strcmd = "insert into THANHVIEN values(N'"+txthoten.Text+"','"+txtEmail.Text+"','"+txtmk.Text+"',N'"+ tam2 + "',N'"
            + tam + "',N'" + DropDownList1.SelectedValue + "','" + txtdiachi.Text + "')";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;
        //thực thi
        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Flower.aspx");
    }
}