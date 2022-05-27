<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GırısYap.aspx.cs" Inherits="Proje.Dolabım.templated.GırısYap" %>

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
        .auto-style1 {
            width: 140px;
        }

        .auto-style2 {
            width: 140px;
            height: 36px;
        }

        .auto-style3 {
            height: 36px;
        }

        .auto-style4 {
            width: 140px;
            height: 41px;
        }

        .auto-style5 {
            height: 41px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div id="header-wrapper">
            <div id="header" class="container">
                <div id="logo">
                    <h1>&nbsp;<a href="Default.aspx">Modern Pazar</a></h1>
                    <div id="menu">
                        <ul>
                            <li class="current_page_item"><a href="Default.aspx" accesskey="1" title="">AnaSayfa</a></li>
                            <li><a href="GırısYap.aspx" accesskey="2" title="">Giriş Yap</a></li>
                            <li><a href="UyeOlSirket.aspx" accesskey="3" title="">Şirket Üye Kaydı</a></li>
                            <li><a href="UyeOlBireysel.aspx" accesskey="4" title="">Bireysel Üye Kaydı</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="page-wrapper">

            <div class="title">
                <h2>Giriş Yapınız</h2>
            </div>
        </div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">Email:</td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Şifre</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox16" TextMode="Password" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" Text="GİRİŞ YAP" OnClick="Button3_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
        </table>

    </form>

</body>

</html>
