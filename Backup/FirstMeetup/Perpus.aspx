<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Perpus.aspx.vb" Inherits="FirstMeetup.Perpus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #006666;
        }
        .style5
        {
            width: 23px;
        }
        .style10
        {
            width: 236px;
        }
        .style17
        {
            text-align: center;
            color: #FFFFFF;
            font-family: "Segoe UI";
            font-size: medium;
            font-weight: bold;
            height: 25px;
        }
        .style4
        {
            text-align: center;
            color: #FFFFFF;
            font-family: "Segoe UI";
            font-size: medium;
            font-weight: bold;
        }
        .style6
        {
            color: #FFFFFF;
            }
        .style7
        {
            width: 23px;
            height: 21px;
        }
        .style8
        {
            color: #FFFFFF;
            height: 21px;
            width: 236px;
        }
        .style9
        {
            height: 21px;
        }
        .style13
        {
            width: 23px;
            height: 26px;
        }
        .style14
        {
            color: #FFFFFF;
            width: 236px;
            height: 26px;
        }
        .style16
        {
            height: 26px;
        }
        .style18
        {
            width: 248px;
        }
        .style19
        {
            height: 21px;
            width: 248px;
        }
        .style20
        {
            height: 26px;
            width: 248px;
        }
        .style21
        {
            width: 116px;
        }
        .style22
        {
            height: 21px;
            width: 116px;
        }
        .style23
        {
            height: 26px;
            width: 116px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" colspan="6">
                PERPUSTAKAAN</td>
        </tr>
        <tr>
            <td class="style4" colspan="6">
                FAKULTAS TEKNIK</td>
        </tr>
        <tr>
            <td class="style4" colspan="6">
                Jl. GONDANG MANIS BAE KUDUS</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                NIM</td>
            <td class="style21">
                <asp:TextBox ID="nim" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:Button ID="Button1" runat="server" Text="Cek" Width="62px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Nama Mahasiswa</td>
            <td class="style21">
                <asp:TextBox ID="nama" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:Button ID="Button2" runat="server" Text="Simpan" Width="62px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                Program Studi</td>
            <td class="style22">
                <asp:TextBox ID="prodi" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:Button ID="Button10" runat="server" Text="Hapus" />
            </td>
            <td class="style9">
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Angkatan Tahun</td>
            <td class="style21">
                <asp:TextBox ID="angkatan" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:Button ID="Button11" runat="server" Text="Edit" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                Tgl Pinjam</td>
            <td class="style23">
                <asp:TextBox ID="tgl" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style20">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Judul</td>
            <td class="style21">
                <asp:TextBox ID="judul" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Pengarang</td>
            <td class="style21">
                <asp:TextBox ID="pengarang" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Penerbit</td>
            <td class="style21">
                <asp:TextBox ID="penerbit" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Bayar</td>
            <td class="style21">
                <asp:TextBox ID="bayar" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Tampilkan Perjudul</td>
            <td class="style21">
                <asp:TextBox ID="sjudul" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:Button ID="Button3" runat="server" Text="Tampilkan" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Pernama</td>
            <td class="style21">
                <asp:TextBox ID="snama" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:Button ID="Button4" runat="server" Text="Tampilkan" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Program Studi</td>
            <td class="style21">
                <asp:DropDownList ID="sprodi" runat="server">
                    <asp:ListItem>Teknik Informatika</asp:ListItem>
                    <asp:ListItem>Sistem Informasi</asp:ListItem>
                    <asp:ListItem>Teknik Mesin</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style18">
                <asp:Button ID="Button5" runat="server" Text="Program Studi" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Per Angkatan</td>
            <td class="style21">
                <asp:DropDownList ID="sangkatan" runat="server">
                    <asp:ListItem>2017</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style18">
                <asp:Button ID="Button6" runat="server" Text="Angkatan" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Masukkan NIM</td>
            <td class="style21">
                <asp:TextBox ID="sNIM" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:Button ID="Button7" runat="server" Text="Cari" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Jumlah Data</td>
            <td class="style21">
                <asp:TextBox ID="data" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:Button ID="Button8" runat="server" Text="Hitung" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Pembayaran Max</td>
            <td class="style21">
                <asp:TextBox ID="max" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Pembayaran Min</td>
            <td class="style21">
                <asp:TextBox ID="min" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Rata-rata</td>
            <td class="style21">
                <asp:TextBox ID="rata" runat="server" Width="274px" style="height: 22px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Total Bayar</td>
            <td class="style21">
                <asp:TextBox ID="total" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Jumlah Transaksi</td>
            <td class="style21">
                <asp:TextBox ID="jumlah" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:TextBox ID="baru" runat="server"></asp:TextBox>
            </td>
            <td class="style21">
                <asp:DropDownList ID="list" runat="server">
                    <asp:ListItem>Max</asp:ListItem>
                    <asp:ListItem>Min</asp:ListItem>
                    <asp:ListItem>Rata-rata</asp:ListItem>
                    <asp:ListItem>Total</asp:ListItem>
                    <asp:ListItem>Jumlah</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style18">
                <asp:Button ID="Button9" runat="server" Text="Hitung" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" colspan="5">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="1080px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
