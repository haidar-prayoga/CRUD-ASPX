<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 48px;
        }
        .auto-style3 {
            width: 141px;
        }
        .auto-style8 {
            width: 381px;
        }
        .auto-style11 {
            width: 141px;
            height: 60px;
        }
        .auto-style12 {
            width: 381px;
            height: 60px;
        }
        .auto-style13 {
            height: 60px;
        }
        .auto-style14 {
            width: 141px;
            height: 59px;
        }
        .auto-style15 {
            width: 381px;
            height: 59px;
        }
        .auto-style16 {
            height: 59px;
        }
        .auto-style17 {
            width: 141px;
            height: 66px;
        }
        .auto-style18 {
            width: 381px;
            height: 66px;
        }
        .auto-style19 {
            height: 66px;
        }
        .auto-style20 {
            width: 141px;
            height: 84px;
        }
        .auto-style21 {
            width: 381px;
            height: 84px;
        }
        .auto-style22 {
            height: 84px;
        }
        .auto-style23 {
            width: 141px;
            height: 75px;
        }
        .auto-style24 {
            width: 381px;
            height: 75px;
        }
        .auto-style25 {
            height: 75px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">DATA PESANAN PRINTING</td>
                </tr>
                <tr>
                    <td class="auto-style11">Cari No Hp</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox1" runat="server" Width="285px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" Text="Cari" Width="201px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">No. Hp</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox2" runat="server" Width="286px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" Text="Simpan" Width="207px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">Nama Lengkap</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox3" runat="server" Width="289px"></asp:TextBox>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style17">Jenis Produk</td>
                    <td class="auto-style18">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Brosur</asp:ListItem>
                            <asp:ListItem>Banner</asp:ListItem>
                            <asp:ListItem>Kalender</asp:ListItem>
                            <asp:ListItem>Stiker</asp:ListItem>
                            <asp:ListItem>Mug</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style19"></td>
                </tr>
                <tr>
                    <td class="auto-style20">Metode Pengiriman</td>
                    <td class="auto-style21">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>Ambil Ditempat</asp:ListItem>
                            <asp:ListItem>Kirim Ke Lokasi</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style23">Jumlah Pesanan</td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style25"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
