using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.Equals("xoa"))
        {
            String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection cn = new SqlConnection(astrcn);
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            String strcmd = "DELETE FROM [GIOHANG] WHERE [MAMH] = '" + e.CommandArgument.ToString() + "'";
            cmd.Connection = cn;
            cmd.CommandText = strcmd;
            int T = (int)cmd.ExecuteNonQuery();
            if (T == 1)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã xóa sản phẩn ra khỏi giỏ hàng');location.href='Cart.aspx';", true);
            }
            cn.Close();
        }
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName.ToString() == "update")
        {

            TextBox txtTema = e.Item.FindControl("SOLUONG") as TextBox;
            String td = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            String update = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
            SqlConnection up = new SqlConnection(update);
            up.Open();
            SqlCommand upda = new SqlCommand();
            upda.Parameters.Add("@Name", SqlDbType.VarChar).Value = txtTema.Text;
            String capnhat = "UPDATE [GIOHANG] SET [SOLUONG] = @Name  WHERE [MAMH] = '" + e.CommandArgument.ToString() + "'";
            upda.Connection = up;
            upda.CommandText = capnhat;
            int C = (int)upda.ExecuteNonQuery();
            if (C == 1)
            {
                String TONG = "UPDATE [GIOHANG] SET [TONGTIEN] = CONVERT(money,[GIA]) * CONVERT(money, [SOLUONG]) WHERE [MAMH] = '" + e.CommandArgument.ToString() + "'";
                upda.Connection = up;
                upda.CommandText = TONG;
                int D = (int)upda.ExecuteNonQuery();
                if (D == 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã cập nhật lại số lượng');location.href='Cart.aspx';", true);
                }
            }
            up.Close();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String astrcn = ConfigurationManager.ConnectionStrings["BTMAU"].ConnectionString;
        SqlConnection cn = new SqlConnection(astrcn);
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        String strcmd = "DELETE FROM [GIOHANG]";
        cmd.Connection = cn;
        cmd.CommandText = strcmd;
        int T = (int)cmd.ExecuteNonQuery();
        if (T > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Đã thanh toán cảm ơn quý khách');location.href='Cart.aspx';", true);           
        }
        cn.Close();
        }
       
}
