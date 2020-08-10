<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
   
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="dangky.css" />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <div class="imgdangky">Đăng Ký Thành Viên
    <asp:Image ID="Image1" runat="server" ImageUrl="~/hoatiet_tieude.jpg" />

        </div>
    <div class="dangky"></div>
    <div class="dong" style="margin-top:10px; margin-left:2px;margin-right:5px;"><asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="False" ForeColor="#FF3399" Font-Bold="True" BorderStyle="Dashed" BorderColor="#009900" /></div>
        <div class="dong">
            <div class="column"><asp:Label ID="Label2" runat="server" Text="Họ và tên"></asp:Label></div>
                    
                    <asp:TextBox ID="txthoten" runat="server" Width="220px"></asp:TextBox>
             
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Họ và tên không được để trống!" Font-Bold="True" ControlToValidate="txthoten" ForeColor="Red"></asp:RequiredFieldValidator>
             
            </div>
            <div class="dong">
             <div class="column"><asp:Label ID="Label3" runat="server" Text="Tài khoản Email"></asp:Label></div><asp:TextBox ID="txtEmail" runat="server" Width="219px"></asp:TextBox>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Tài khoản Email sai định dạng!" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9_\-\.]+@([a-zA-Z0-9_\-\.]+\.[a-zA-Z]{2,5})$" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>

            </div>
            <div class="dong">
             <div class="column"><asp:Label ID="Label4" runat="server" Text="Mật khẩu"></asp:Label></div><asp:TextBox ID="txtmk" runat="server" TextMode="Password"></asp:TextBox>

            </div>
            <div class="dong">
             <div class="column"><asp:Label ID="Label5" runat="server" Text="Xác nhận mật khẩu"></asp:Label></div><asp:TextBox ID="txtmk2" runat="server" TextMode="Password"></asp:TextBox>

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtmk" ControlToValidate="txtmk2" ErrorMessage="Mật khẩu phải giống MK đã gõ !" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>

            </div>

            <div class="dong">
                <div class="column">
                    <asp:Label ID="Label6" runat="server" Text="Giới tính"></asp:Label>

                </div>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Nam" /><asp:RadioButton ID="RadioButton2" runat="server" Text="Nữ" />
            </div>
            <div class="dong">
                <div class="column">
                    <asp:Label ID="Label7" runat="server" Text="Bạn biết diễn đàn qua"></asp:Label>

                </div> <asp:CheckBox ID="CheckBox1" runat="server" Text="Bạn bè" /><asp:CheckBox ID="CheckBox2" runat="server" Text="Báo in" /></div>
            <div class="dong">
                <div class="column">
                    Bạn ở đâu
                </div>
                <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--Chọn tỉnh,thành phố--</asp:ListItem>
                <asp:ListItem>HCM</asp:ListItem>
                <asp:ListItem>Hà Nội</asp:ListItem>
                <asp:ListItem>Vũng Tàu</asp:ListItem>
                <asp:ListItem>Đồng Nai</asp:ListItem>
                <asp:ListItem>Đồng Tháp</asp:ListItem>
                </asp:DropDownList> </div>
            <div class="dong">
                <div class="column" style="margin-top:35px;"><asp:Label ID="Label1" runat="server" Text="Địa chỉ" ></asp:Label></div>
                <asp:TextBox ID="txtdiachi" runat="server" TextMode="MultiLine" Height="88px" Width="304px">

                </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Địa chỉ không được để trống!" Font-Bold="True" ForeColor="Red" ControlToValidate="txtdiachi"></asp:RequiredFieldValidator>
</div>
           
    <div class="dong">
            <div style="text-align:center">
                <asp:Button ID="btndki" runat="server" Text="Đăng kí" OnClick="btndki_Click" />
                <asp:Label ID="lbkq" runat="server" Font-Bold="True" ForeColor="#FF5050"></asp:Label>
            </div></div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="namgiua">
            <asp:Label ID="Label8" runat="server" Text="Đăng ký thành công!!!">
                
            </asp:Label>
                <br />
            <asp:Button ID="Button1" runat="server" Text="Đăng nhập ngay" OnClick="Button1_Click" /></div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

