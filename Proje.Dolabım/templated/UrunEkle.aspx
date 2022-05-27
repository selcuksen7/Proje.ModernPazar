<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="Proje.Dolabım.templated_brushwood.UrunEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700" rel="stylesheet" />
    <link href="default.css" rel="stylesheet" type="text/css" media="all" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

    <!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

    <style type="text/css">
        .auto-style3 {
            width: 924px;
        }

        .auto-style4 {
            width: 237px;
        }

        .auto-style5 {
            width: 135px;
        }

        .auto-style6 {
            left: 0px;
            top: 0px;
            width: 182px;
        }

        .auto-style7 {
            width: 222px;
        }

        .auto-style8 {
            width: 221px;
        }

        .auto-style9 {
            left: 0px;
            top: 0px;
            width: 87%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="logo">
                    <h1><a href="Default.aspx">Modern Pazar</a></h1>
                    <div id="menu">
                        <ul>
                            <li class="current_page_item"><a href="Default.aspx" accesskey="1" title="">AnaSayfa</a></li>
                            <li class="current_page_item"><a href="UrunSorgu.aspx" accesskey="2" title="">Ürünler</a></li>


                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="page-wrapper">

            <div class="title">
                <h2>Ürün Ekle</h2>
            </div>
        </div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style4">Ürün Kategori:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6">
                        <asp:ListItem>Mont</asp:ListItem>
                        <asp:ListItem>Triko</asp:ListItem>
                        <asp:ListItem>T-shirt</asp:ListItem>
                        <asp:ListItem>Ayakkabı</asp:ListItem>
                        <asp:ListItem>Sweatshirt</asp:ListItem>
                        <asp:ListItem>Kaban</asp:ListItem>
                        <asp:ListItem>Gömlek</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Ürün Beden:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style9">
                        <asp:ListItem>XXL Beden</asp:ListItem>
                        <asp:ListItem>XL Beden</asp:ListItem>
                        <asp:ListItem>L Beden</asp:ListItem>
                        <asp:ListItem>M Beden</asp:ListItem>
                        <asp:ListItem>S Beden</asp:ListItem>
                        <asp:ListItem>40 EU</asp:ListItem>
                        <asp:ListItem>41 EU</asp:ListItem>
                        <asp:ListItem Value="42 EU">42 EU</asp:ListItem>
                        <asp:ListItem>43 EU</asp:ListItem>
                        <asp:ListItem>44 EU</asp:ListItem>
                        <asp:ListItem>45 EU</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style7">Ürün Adet:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Ürün Marka:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Ürün Model:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style8">Ürün Fiyat</td>
                <td>
                    <asp:TextBox ID="TextBox6" TextMode="Number" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" Font-Size="Medium" Width="100px" Text="EKLE" OnClick="Button1_Click" />
                </td>
                <td>

                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

        </table>
    </form>

</body>
</html>
