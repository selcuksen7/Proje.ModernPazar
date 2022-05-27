<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeOlSirket.aspx.cs" Inherits="Proje.Dolabım.templated_brushwood.UyeOlSirket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 144px;
            text-align: left;
        }

        .auto-style2 {
            margin-left: 40px;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Quicksand:400,700" rel="stylesheet" />
    <link href="default.css" rel="stylesheet" type="text/css" media="all" />
    <link href="fonts.css" rel="stylesheet" type="text/css" media="all" />

    <!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->

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
                            <li><a href="GırısYap.aspx" accesskey="2" title="">Giris Yap</a></li>
                            <li><a href="UyeOlSirket.aspx" accesskey="3" title="">Şirket Üye Kaydı</a></li>
                            <li><a href="UyeOlBireysel.aspx" accesskey="4" title="">Bireysel Üye Kaydı</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="page-wrapper">

            <div class="title">
                <h2>Şirketinizi Kaydediniz</h2>
            </div>
        </div>
        <table style="width: 450px; height: 100px;">
            <tr>
                <td class="auto-style1">Email:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="162px" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">İsim:</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Width="162px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Soyisim:</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="162px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 450px; height: 100px;">
            <tr>
                <td class="auto-style1">Tel no:</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="Number" Width="162px"></asp:TextBox>

                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Adres:</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" Width="162px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Şirket Adı:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox12" runat="server" Width="163px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 450px; height: 100px;">
            <tr>
                <td class="auto-style1">Vergi No:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox13" runat="server" TextMode="Number" Width="162px" MaxLength="10"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Şifre:</td>
                <td>
                    <asp:TextBox ID="TextBox14" TextMode="Password" runat="server" Width="162px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Kaydet" Width="75px" Font-Size="Medium" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
