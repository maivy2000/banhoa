<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThemHang.aspx.cs" Inherits="ThemHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="dangky.css" />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="imgdangky">Thêm Mặt Hàng
    <asp:Image ID="Image1" runat="server" ImageUrl="~/hoatiet_tieude.jpg" />

        </div>
    <div class="dangky"></div>
    <div class="dong" style="margin-top:10px; margin-left:2px;margin-right:5px;"></div>
        <div class="dong">
            <div class="column"><asp:Label ID="Label2" runat="server" Text="Mã mặt hàng"></asp:Label></div>                  
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="dong">
             <div class="column"><asp:Label ID="Label3" runat="server" Text="Tên mặt hàng"></asp:Label></div><asp:TextBox ID="txtname" runat="server" Width="219px"></asp:TextBox>


            </div>

             <div class="dong">
                <div class="column">
                    <asp:Label ID="Label7" runat="server" Text="Giá cũ"></asp:Label>
                    
                </div>
                 <asp:TextBox ID="txtgiacu" runat="server" Width="220px"></asp:TextBox>
             </div>
            <div class="dong">
             <div class="column"><asp:Label ID="Label4" runat="server" Text="Giá mới" Width="220px"></asp:Label></div>
                <asp:TextBox ID="txtgiamoi" runat="server" Width="220px"></asp:TextBox>

            </div>
            <div class="dong">
             <div class="column"><asp:Label ID="Label1" runat="server" Text="Sự kiện"></asp:Label></div>
                <asp:TextBox ID="txtsk" runat="server" Width="220px"></asp:TextBox>

            </div>
            <div class="dong">
             <div class="column"><asp:Label ID="Label9" runat="server" Text="Số lượng"></asp:Label></div>
                <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>

            </div>
            <div class="dong">
                <div class="column">
                    <asp:Label ID="Label6" runat="server" Text="Thông tin" Width="220px"></asp:Label>

                </div>
                <asp:TextBox ID="txtthongtin" runat="server" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </div>
           
            <div class="dong">
                <div class="column">
                    Mã phân loại
                </div>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TENPL" DataValueField="MAPL">
                       
                </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLON %>" SelectCommand="SELECT * FROM [PHANLOAI]"></asp:SqlDataSource>

            </div>
            <div class="dong">
                <div class="column">Hình ảnh SP </div><asp:FileUpload ID="FileUpload1" runat="server" /></div>
    <div class="dong">
            <div style="text-align:center">
                <asp:Button ID="btnadd" runat="server" Text="Add Product" OnClick="btnadd_Click"  />
                <asp:Label ID="lbkq" runat="server" Font-Bold="True" ForeColor="#FF5050"></asp:Label>
            </div></div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="namgiua">
            <asp:Label ID="Label8" runat="server" Text="Thêm thành công!!!">
                
            </asp:Label>
                <br />
            <asp:Button ID="Button1" runat="server" Text="Home" /></div>
        </asp:View>
    </asp:MultiView>
  
        
</asp:Content>

