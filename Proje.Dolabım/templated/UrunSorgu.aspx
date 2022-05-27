<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrunSorgu.aspx.cs" Inherits="Proje.Dolabım.templated.UrunSorgu" %>

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
        .auto-style2 {
            margin-top: 0px;
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

                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="page-wrapper">

            <div class="title">
                <h2>Sorgu Yap</h2>

            </div>
        </div>
        <div style="margin-left: 600px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="EntityDataSource1" font- CellPadding="4" CssClass="auto-style2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="UrunKategori" HeaderText="Kategori" ReadOnly="True" SortExpression="UrunKategori" />
                    <asp:BoundField DataField="UrunBeden" HeaderText="Beden" ReadOnly="True" SortExpression="UrunBeden" />
                    <asp:BoundField DataField="UrunAdet" HeaderText="Adet" ReadOnly="True" SortExpression="UrunAdet" />
                    <asp:BoundField DataField="UrunMarka" HeaderText="Marka" ReadOnly="True" SortExpression="UrunMarka" />
                    <asp:BoundField DataField="UrunModel" HeaderText="Model" ReadOnly="True" SortExpression="UrunModel" />
                    <asp:BoundField DataField="UrunFiyat" HeaderText="Fiyat" ReadOnly="True" SortExpression="UrunFiyat" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=DolabimWebEntity" DefaultContainerName="DolabimWebEntity" EnableFlattening="False" EntitySetName="Tbl_Urun" Select="it.[UrunKategori], it.[UrunBeden], it.[UrunAdet], it.[UrunMarka], it.[UrunModel], it.[UrunFiyat]">
            </asp:EntityDataSource>

        </div>

    </form>

</body>

</html>
