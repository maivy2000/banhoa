<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="dangky.css" />

   
   <%-- <div class="imgdangky">Giỏ Hàng
    <asp:Image ID="Image1" runat="server" ImageUrl="~/hoatiet_tieude.jpg" />

        </div>--%>
    <div class="imgdangky">Giỏ Hàng
    <asp:Image ID="Image1" runat="server" ImageUrl="~/hoatiet_tieude.jpg" /></div>
    <br />
        <asp:DataList ID="DataList1"  runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Vertical" OnItemCommand="DataList1_ItemCommand" OnUpdateCommand="DataList1_UpdateCommand" >
            <ItemTemplate>
              
                <table style="width:100%;margin-left:90px;">
                    <tr>
                        <th>Mã Mặt Hàng</th>
                        <th>Ảnh Mặt Hàng</th>
                        <th>Tên Mặt Hàng</th>
                        <th>Giá</th>
                        <th>Số Lượng</th>
                        <th>Tổng tiền</th>
                        <th>Delete</th>
                        <th>Cập nhật</th>
                    </tr>
                    <tr style="border:1px solid #B40486">
                        <td style="border:1px solid #B40486;width:12%">
                                  <asp:Label ID="MAMHLabel" runat="server" Text='<%# Eval("MAMH") %>' />
                        </td>

                        <td style="border:1px solid #B40486;width:12%">
                               <asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' Height="100" />

                        </td>

                        <td style="border:1px solid #B40486;width:12%">
                            <asp:Label ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' />
                        </td>

                        <td style="border:1px solid #B40486;width:12%">
                            <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:12%">
                             <asp:TextBox ID="SOLUONG" runat="server" Text='<%# Eval("SOLUONG") %>' Width="100px"/>
                        </td>

                        <td style="border:1px solid #B40486;width:12%">
                            <asp:Label ID="TONGTIENLabel" runat="server" Text='<%# Eval("TONGTIEN") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:12%">
                            <asp:Button ID="Button1" runat="server" Text="Xóa" CommandName="xoa" CommandArgument='<%# Eval("MAMH") %>'/>
                            
                        </td>
                        <td style="border:1px solid #B40486;width:12%">
                            
                            <asp:Button ID="Button4" runat="server" Text="update"  CommandName="update" CommandArgument='<%# Eval("MAMH") %>'/>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLON %>" SelectCommand="SELECT * FROM [GIOHANG]"></asp:SqlDataSource>
    <div style="text-align:center">
        <asp:Button runat="server" PostBackUrl ="~/Flower.aspx" Text="<-- Mua hàng tiếp" CssClass="nutgiohang"/>
        <asp:Button ID="Button2" runat="server" Text="Thanh Toán -->" CssClass="nutgiohang" OnClick="Button2_Click"/></div>
    <div style="margin-top:10px">
        
      <%--  <asp:Button ID="Button1" runat="server" Text="Mua tiếp" OnClick="Button1_Click"  />
         <asp:Button ID="Button2" runat="server" Text="Xóa tất cả" OnClick="Button2_Click1"   />  --%> 
        </div>
</asp:Content>

