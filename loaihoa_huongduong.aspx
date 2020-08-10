<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loaihoa_huongduong.aspx.cs" Inherits="loaihoa_huongduong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="Style1.css" />
    <div >
    
            <asp:DataList CssClass="data" ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatLayout="Flow" OnItemCommand="DataList1_ItemCommand" >
                <ItemStyle Width="30%" />
                <ItemTemplate>
                   
                    <div class="khungdiv"><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MAMH") %>' CommandName="chitiet">
                        <div style="height:40px; width:60px;border-radius:10px;background-color:red;color:white;"><asp:Label ID="SKLabel" runat="server" Text='<%# Eval("SK") %>' /></div>
                <asp:Image ID="ANHLabel" runat="server" ImageUrl='<%#  Eval("ANH")  %>' Height="296" Width="245" />
<asp:Label ID="TENMHLabel" CssClass="tenhoa" runat="server" Text='<%# Eval("TENMH") %>' />
                                    <div style="color:red; font-weight:bold;"><del style="margin-right:10px;color:#F78181;margin-bottom:10px;padding-bottom:10px; text-align:center"><asp:Label ID="GIACULabel" runat="server" Text='<%# Eval("GIACU") %>' /></del><asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />

                    </asp:LinkButton><button class="nutchuadep"><asp:LinkButton ID="LinkButton2" runat="server" CommandName='<%# Eval("MAMH") %>' >Cart</asp:LinkButton></button >
</div></div></ItemTemplate></asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLON %>" ></asp:SqlDataSource>


        </div>
</asp:Content>

