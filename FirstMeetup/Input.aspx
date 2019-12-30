<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Input.aspx.vb" Inherits="FirstMeetup.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #336699;
        }
        .style4
        {
            text-align: center;
            color: #FFFFFF;
            font-family: "Segoe UI";
            font-size: medium;
            font-weight: bold;
        }
        .style5
        {
            width: 23px;
        }
        .style6
        {
            color: #FFFFFF;
            width: 236px;
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
        .style10
        {
            width: 236px;
        }
        .style11
        {
            width: 327px;
        }
        .style12
        {
            height: 21px;
            width: 327px;
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
        .style15
        {
            width: 327px;
            height: 26px;
        }
        .style16
        {
            height: 26px;
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
        .auto-style1 {
            width: 23px;
            height: 18px;
        }
        .auto-style2 {
            color: #FFFFFF;
            height: 18px;
            width: 236px;
        }
        .auto-style3 {
            height: 18px;
            width: 327px;
        }
        .auto-style4 {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" colspan="6">
                INPUT DATA</td>
        </tr>
        <tr>
            <td class="style4" colspan="6">
                JASA TITIP</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
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
            <td class="style11">
                <asp:Label ID="lblTanggal0" runat="server" ForeColor="White" Text="12/12/2019" Visible="False"></asp:Label>
            </td>
            <td>
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
                Tanggal</td>
            <td class="style11">
                <asp:Label ID="lblTanggal" runat="server" ForeColor="White" Text="12-12-2019"></asp:Label>
            </td>
            <td>
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
                Id Customer</td>
            <td class="style11">
                <asp:TextBox ID="tbIdCs" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnCek" runat="server" Text="Cek" Width="62px" />
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
                Nama Barang</td>
            <td class="style12">
                <asp:TextBox ID="tbNamaBrg" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:Button ID="btnHitung" runat="server" Text="Hitung" Width="62px" />
            </td>
            <td class="style9">
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                </td>
            <td class="auto-style2">
                Harga Barang</td>
            <td class="auto-style3">
                <asp:TextBox ID="tbHargaBrg" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td class="auto-style4">
            </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style4">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Gambar Barang</td>
            <td class="style11">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSimpanData" runat="server" Text="Simpan" Width="62px" />
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
                Kota Asal<Kota Asal</td>
            <td class="style11">
                <asp:DropDownList ID="ddlAsal" runat="server" Width="161px">
                    <asp:ListItem>Bandung</asp:ListItem>
                    <asp:ListItem>Yogyakarta</asp:ListItem>
                    <asp:ListItem>Bali</asp:ListItem>
                    <asp:ListItem>Lombok</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
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
                Kota Tujuan</td>
            <td class="style11">
                <asp:TextBox ID="tbTujuan" runat="server" Width="274px" Enabled="False"></asp:TextBox>
            </td>
            <td>
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
                Tarif Jastip         <td class="style11">
                <asp:TextBox ID="tbTarif" runat="server" Width="274px"></asp:TextBox>
            </td>
            <td>
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
                Total Pembayaran</td>
            <td class="style11">
                <asp:TextBox ID="tbTotal" runat="server" Width="274px" Enabled="False"></asp:TextBox>
            </td>
            <td>
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
                Metode Pembayaran         <td class="style11">
                <asp:RadioButtonList ID="rbMetode" runat="server" 
                    style="color: #FFFFFF">
                    <asp:ListItem>Transfer</asp:ListItem>
                    <asp:ListItem>COD</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
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
            <td class="style11">
                &nbsp;</td>
            <td>
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
            <td class="style11">
                &nbsp;</td>
            <td>
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
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style12">
                </td>
            <td class="style9">
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
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td>
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
            <td class="style11">
                &nbsp;</td>
            <td>
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
            <td class="style11">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
