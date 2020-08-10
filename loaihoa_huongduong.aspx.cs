using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loaihoa_huongduong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [HANGHOA] WHERE [MAPL]='" + "L03" + "' ";
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["MA0001"] = e.CommandArgument.ToString();
        Session["DH0001"] = e.CommandName.ToString();
        if (e.CommandName == "chitiet")
        {
            if (Session["MA0001"] != null)
            {
                Response.Redirect("chitiet.aspx");
            }
        }
        if ("chitiet" != Session["DH0001"].ToString())
        {
            String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection cn = new SqlConnection(astrcn);
            cn.Open();
            String strsel = "select count(*) from [GIOHANG] where [MAMH] ='" + Session["DH0001"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = strsel;
            int rs = (int)cmd.ExecuteScalar();
            if (rs == 0)
            {
                String strcmd = "INSERT INTO [GIOHANG] SELECT [MAMH],[TENMH],[GIA],[ANH],'" + "1" + "',[GIA] FROM [HANGHOA] WHERE [HANGHOA].[MAMH] = '" + Session["DH0001"].ToString() + "'";
                cmd.Connection = cn;
                cmd.CommandText = strcmd;
                int T = (int)cmd.ExecuteNonQuery();
                if (T == 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Sản phẩm đã được thêm vào giỏ hàng của bạn');location.href='Cart.aspx';", true);
                    Response.Redirect("Cart.aspx");
                }
            }
            else if (rs > 0)
            {
                String std = "UPDATE [GIOHANG] SET [SOLUONG] = [SOLUONG]+1  WHERE [MAMH] = '" + Session["DH0001"].ToString() + "'";
                cmd.Connection = cn;
                cmd.CommandText = std;
                int C = (int)cmd.ExecuteNonQuery();
                if (C == 1)
                {
                    String TONG = "UPDATE [GIOHANG] SET [TONGTIEN] = CONVERT(money,[GIA]) * CONVERT(money, [SOLUONG])  WHERE [MAMH]= '" + Session["DH0001"].ToString() + "'";
                    cmd.Connection = cn;
                    cmd.CommandText = TONG;
                    int D = (int)cmd.ExecuteNonQuery();
                    if (D == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Số lượng sản phẩm đã được tăng thêm 1 vào giỏ hàng của bạn');location.href='Cart.aspx';", true);
                        //Response.Redirect("Cart.aspx");
                    }
                }
            }
            cn.Close();
        }
    }
}