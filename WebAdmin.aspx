<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WebAdmin.aspx.cs" Inherits="WebAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--    <div>
         
            <asp:Label ID="Label1" runat="server" CssClass="khungadmin" Text="Hoa Hồng Đỏ"  ></asp:Label> 
            <asp:Label ID="Label2" runat="server" CssClass="khungadmin" Text="Hoa Hướng Dương" Width="150" Height="80"></asp:Label> 

        </div>--%>
        
    <div style="margin-left:500px;margin-top:10px;" class="nut">
                    <asp:LinkButton runat="server" PostBackUrl="~/ThemHang.aspx"><asp:ImageButton ID="TENPLLabel" runat="server" ImageUrl="~/cart/add.png" ></asp:ImageButton>Thêm Sản Phẩm Mới</asp:LinkButton>

                    </div>
    <div style="margin-left:500px;margin-top:10px;" class="nut">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/cart/add.png" ></asp:ImageButton>Danh sách thành viên cửa hàng</asp:LinkButton>
                    </div>
    <div style="margin-left:500px;margin-top:10px;" class="nut">
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" ><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/cart/add.png" ></asp:ImageButton>Danh sách mặt hàng</asp:LinkButton>
                    </div>
    <div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <div>
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" DataSourceID="SqlDataSource1" Width="500px" OnItemCommand="DataList1_ItemCommand">
                <ItemStyle Width="30%" />
                <ItemTemplate>
                    <div style="margin-left:400px;margin-top:10px;" class="nut">
                    <asp:LinkButton ForeColor="#060" ID="TENPLLabel" CssClass="khungadmin" runat="server" Text='<%# Eval("TENPL") %>' Width="150" Height="80" CommandArgument='<%# Eval("MAPL") %>' CommandName="menu" />
                    </div>
                   
                    <%--<asp:Label ID="MAPLLabel" runat="server" Text='<%# Eval("MAPL") %>' />--%>
                    
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLON %>" SelectCommand="SELECT [TENPL], [MAPL] FROM [PHANLOAI]"></asp:SqlDataSource>
        </div>
                <asp:DataList CssClass="data" ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatLayout="Flow" OnItemCommand="DataList2_ItemCommand" OnSelectedIndexChanged="DataList2_SelectedIndexChanged"  >
                <ItemStyle Width="30%" />
                <ItemTemplate>
                   
                    <div class="khungdiv" style="display:block">
                        <div style="height:40px; width:60px;border-radius:10px;background-color:red;color:white;"><asp:Label ID="SKLabel" runat="server" Text='<%# Eval("SK") %>' /></div>
                <asp:Image ID="ANHLabel" runat="server" ImageUrl='<%#  Eval("ANH")  %>' Height="296" Width="245"/>
<asp:Label ID="TENMHLabel" CssClass="tenhoa" runat="server" Text='<%# Eval("TENMH") %>' />
                        <asp:Label ID="TENPLLabel" CssClass="tenhoa" runat="server" Text='<%# Eval("MAPL") %>' />
                        <br />
                        Số lượng hàng trong kho:
                        <asp:Label ID="Label1" CssClass="tenhoa" runat="server" Text='<%# Eval("SOLUONG") %>' />
                                    <div style="color:red; font-weight:bold;"><del style="margin-right:10px;color:#F78181;margin-bottom:10px;padding-bottom:10px; text-align:center"><asp:Label ID="GIACULabel" runat="server" Text='<%# Eval("GIACU") %>' /></del><asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />

                    <button class="nutchuadep"><asp:LinkButton ID="LinkButton2" runat="server" CommandName="xoa" CommandArgument='<%# Eval("MAMH") %>' Text="Delete"></asp:LinkButton></button >
                    <button class="nutchuadep"><asp:LinkButton ID="btnsua" runat="server" CommandName="sua" CommandArgument='<%# Eval("MAMH") %>' Text="Sửa"></asp:LinkButton></button >
                                    </div></div>

                </ItemTemplate>

                    </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BTLON %>" 
            ></asp:SqlDataSource>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:DataList ID="DataList3"  runat="server" DataSourceID="SqlDataSource3" OnItemCommand="DataList3_ItemCommand">
            <ItemTemplate>
              
                <table style="width:100%;">
                    <tr>
                        <th>Tên Thành viên</th>
                        <th>Gmail</th>
                        <th>Mật Khẩu</th>
                        <th>Giới tính</th>
                        <th>Diễn Đàn</th>   
                        <th>City</th>
                        <th>Địa chỉ</th>
                    </tr>
                    <tr style="border:1px solid #B40486">
                        
                        <td style="border:1px solid #B40486;width:17%">
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("HOTEN") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:17%">
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("TKMAIL") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="txtgiamoi" runat="server" Text='<%# Eval("MATKHAU") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="txtsk" runat="server" Text='<%# Eval("GIOITINH") %>' />
                        </td>
                        
                        
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("DIENDAN") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="txtmota" runat="server" TextMode="MultiLine" Text='<%# Eval("ODAU") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Text='<%# Eval("DIACHI") %>' />
                        </td>
                        <td style="border:1px solid #B40486;width:15%">
                            <button>
                                <asp:LinkButton ID="linkbtnupdate" runat="server" CommandName="xoatv" CommandArgument='<%# Eval("HOTEN") %>'>Xóa</asp:LinkButton>
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

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BTLON %>" 
            ></asp:SqlDataSource>
            </asp:View>
        </asp:MultiView>
                    
        
    </div>
   

</asp:Content>

