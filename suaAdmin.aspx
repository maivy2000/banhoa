<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="suaAdmin.aspx.cs" Inherits="suaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:DataList ID="DataList1"  runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" >
            <ItemTemplate>
              
                <table style="width:100%;">
                    <tr>
                        <th>Mã Mặt Hàng</th>
                        <th>Ảnh Mặt Hàng</th>
                        <th>Tên Mặt Hàng</th>
                        <th>Giá mới</th>
                        <th>Khuyến mãi</th>
                        
                        <th>Số lượng hàng trong kho</th>
                        <th>Mô tả</th>
                    </tr>
                    <tr style="border:1px solid #B40486">
                        <td style="border:1px solid #B40486;width:15%">
                                  <asp:Label ID="MAMHLabel" runat="server" Text='<%# Eval("MAMH") %>' />
                        </td>

                        <td style="border:1px solid #B40486;width:15%">
                               <asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' Height="100" />

                        </td>

                        <td style="border:1px solid #B40486;width:17%">
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("TENMH") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="txtgiamoi" runat="server" Text='<%# Eval("GIA") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="txtsk" runat="server" Text='<%# Eval("SK") %>' />
                        </td>
                        
                        
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("SOLUONG") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="txtmota" runat="server" TextMode="MultiLine" Text='<%# Eval("THONGTIN") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <button>
                                <asp:LinkButton ID="linkbtnupdate" runat="server" CommandName="update" CommandArgument='<%# Eval("MAMH") %>'>Update</asp:LinkButton>
                            </button>
                        </td>
                     <%--   <td style="border:1px solid #B40486;width:15%">
                             <asp:Label ID="SOLUONGLabel" runat="server" Text='<%# Eval("SOLUONG") %>' />
                        </td>--%>

                        <%--<td style="border:1px solid #B40486;width:15%">
                            <asp:Label ID="TONGTIENLabel" runat="server" Text='<%# Eval("TONGTIEN") %>' />
                        </td>--%>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLON %>" ></asp:SqlDataSource>
</asp:Content>

