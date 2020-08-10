<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chitiet.aspx.cs" Inherits="chitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="images/favicon.png" />
    <link href="css/bootstrap.css" rel="stylesheet"  />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'  />
    <link href="css/font-awesome.min.css" rel="stylesheet"  />
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"  />
    <link href="chitiet.css" rel="stylesheet" />
    <div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                
                <div class="dongCT">
        <div class="cotTraiCT">
    <a href="#" data-image='<%# Eval("ANH") %>' data-zoom-image='<%# Eval("ANH") %>'>

            <asp:Image ID="ANHLabel" runat="server" ImageUrl='<%# Eval("ANH") %>' /></a>
            <br />
            <div class="thum-image">
                    <ul id="gallery_01" class="prev-thum">
                      <li>
                        <a href="#" data-image="flower/a18-3-247x296.jpg" data-zoom-image="images/products/Large/products-01.jpg">
                          <img src="flower/a18-3-247x296.jpg" style="height:100%;width:100%;" alt="" />
                        </a>
                      </li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-02.jpg" data-zoom-image="images/products/Large/products-02.jpg">
                          <img src="flower/a25-2-247x296.jpg" style="height:100%;width:100%" alt="" />
                        </a>
                      </li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-03.jpg" >
                          <img src="flower/a29-1-247x296.jpg" style="width:100%;height:100%" alt="" />
                        </a>
                      </li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-04.jpg" >
                          <img src="flower/a59-1-247x296.jpg" style="width:100%;height:100%" alt="" />
                        </a>
                      </li>
                      <li>
                        <a href="#" data-image="images/products/medium/products-05.jpg">
                          <img src="flower/a63-2-247x296.jpg" style="width:100%;height:100%" alt="" />
                        </a>
                      </li>
                    </ul>
                    <a class="control-left" id="thum-prev" href="javascript:void(0);">
                      <i class="fa fa-chevron-left">
                      </i>
                    </a>
                    <a class="control-right" id="thum-next" href="javascript:void(0);">
                      <i class="fa fa-chevron-right">
                      </i>
                    </a>
                  </div>
        </div>
        <div class="cotPhaiCT">
            <div >
                <h3 style="text-align:center;">
                    <asp:Label ID="TENMHLabel" runat="server" Text='<%# Eval("TENMH") %>' />
                </h3>
                <p style="border-bottom:2px solid black">
                    <asp:Label ID="GIALabel" runat="server" Text='<%# Eval("GIA") %>' />
                </p>
                
            
            <p class="chitietphai">
                <asp:Image ID="Image5" runat="server" Height="42px" Width="52px" ImageUrl="~/cart/icon-plant.png" />Mã loại: <asp:Label ID="MAPLLabel" runat="server" Text='<%# Eval("MAPL") %>' />
            </p>
            <p class="chitietphai">
                <asp:Image ID="Image6" runat="server" Height="42px" Width="52px" ImageUrl="~/cart/icon-plant.png" />Mã sản phẩm: <asp:Label ID="MAMHLabel" runat="server" Text='<%# Eval("MAMH") %>' />
            </p>
                
             <p class="chitietphai"> 
                <asp:Image ID="Image7" runat="server" Height="42px" Width="52px" ImageUrl="~/cart/icon-plant.png" />Sự kiện: <asp:Label ID="SKLabel" runat="server" Text='<%# Eval("SK") %>' />
            </p>
              <p class="chitietphai"> 
                <asp:Image ID="Image1" runat="server" Height="42px" Width="52px" ImageUrl="~/cart/icon-plant.png" />Số lượng hàng trong kho: <asp:Label ID="Label2" runat="server" Text='<%# Eval("SOLUONG") %>' />
            </p>  
             <p class="chitietphai">
                <asp:Image ID="Image8" runat="server" Height="42px" Width="52px" ImageUrl="~/cart/icon-plant.png" />Giá cũ: <del style="margin-right:10px;color:#F78181;margin-bottom:10px;padding-bottom:10px; text-align:center"><asp:Label ID="GIACULabel" runat="server" Text='<%# Eval("GIACU") %>' /></del>
            </p>
          
                </div>
            <button class="nutchuadep"><asp:LinkButton ID="LinkButton1" runat="server" CommandName='<%# Eval("MAMH") %>' >Cart</asp:LinkButton></button >
        </div>
    </div>
    <div class="dongCT">
        <div class="GioiThieuCT">
            <div class="dongMT">
                <div class="motaTrai">
                <h3 style="font-family: sans-serif">
                    
                <asp:Label ID="Label1" runat="server" Text="Thông tin:" Font-Bold="True" Font-Names="'Quicksand', sans-serif" ></asp:Label></h3>
                </div><div class="motaTrai">
                <h3 style="font-weight: bold;color:black;font-family: sans-serif">QUÀ TẶNG</h3>
            </div>
            </div>
            <div class="dongMT">
            <div class="motaTrai">
            

             <p class="mota">
                 <asp:Image ID="Image10" runat="server" Height="36px" Width="46px" ImageUrl="~/cart/icon-hyt.png" />
                 <asp:Label ID="THONGTINLabel" runat="server" Text='<%# Eval("THONGTIN") %>' />
                 
            </p>            
                </div>
            <div class="motaPhai">
                
                <asp:Image ID="Image15" runat="server" Height="300px" Width="80%" ImageUrl="~/cart/tho_hong.jpg"/>               
            </div></div>
            <div>

            </div>
          
             
        </div>
    </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BTLON %>" ></asp:SqlDataSource>
    </div>
    <script type="text/javascript" src="js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="js/bootstrap.min.js">
    </script>
    <script src="js/jquery.flexslider.js" >
    </script>
    <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js">
    </script>
    <script type="text/javascript" src='js/jquery.elevatezoom.js'>
    </script>
    <script type="text/javascript" src="js/script.min.js" >
    </script>
</asp:Content>

