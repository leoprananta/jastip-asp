<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Tampil.aspx.vb" Inherits="FirstMeetup.Tampil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #336699;
            color: #FFFFFF;
        }
        .style5
        {
            width: 23px;
        }
        .style10
        {
            width: 236px;
        }
        .style11
        {
            width: 327px;
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
        .auto-style1 {
            width: 23px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
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
        .style12
        {
            height: 21px;
            width: 327px;
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
        .style15
        {
            width: 327px;
            height: 26px;
        }
        .style16
        {
            height: 26px;
        }
        .auto-style7 {
            color: #FFFFFF;
            height: 21px;
            width: 27px;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
        .auto-style11 {
            color: #FFFFFF;
            width: 27px;
        }
        .auto-style12 {
            width: 27px;
        }
        .auto-style13 {
            width: 27px;
            height: 23px;
        }
        #Text1 {
            width: 262px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style17" colspan="6">TAMPIL DATA JASTIP</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style13"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td>Tanggal</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:TextBox ID="lblTanggal" runat="server" Width="140px"></asp:TextBox>
                <asp:Button ID="btnTanggal" runat="server" Text="Tampilkan" Width="78px" 
                    style="margin-left:50px" Height="24px"/>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="style9">Minggu Ke-</td>
            <td class="style9">&nbsp;</td>
            <td class="style9"></td>
            <td class="style9"></td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlMinggu" runat="server" Height="22px" Width="145px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnMinggu" runat="server" Text="Tampilkan" Width="78px" 
                    style="margin-left:50px" Height="24px"/>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style7"></td>
            <td class="auto-style7"></td>
            <td class="style9">Bulan</td>
            <td class="style9"></td>
            <td class="style9"></td>
            <td class="style9"></td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td style="direction: ltr">
                <asp:DropDownList ID="ddlBulan" runat="server" Height="22px" Width="145px">
                    <asp:ListItem>Januari</asp:ListItem>
                    <asp:ListItem>Februari</asp:ListItem>
                    <asp:ListItem>Maret</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>Mei</asp:ListItem>
                    <asp:ListItem>Juni</asp:ListItem>
                    <asp:ListItem>Juli</asp:ListItem>
                    <asp:ListItem>Agustus</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>Oktober</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>Desember</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnBulan" runat="server" Text="Tampilkan" Width="78px" 
                    style="margin-left:50px" Height="24px"/>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>Operasi</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlOperasi" runat="server" Height="22px" Width="145px">
                    <asp:ListItem>Max</asp:ListItem>
                    <asp:ListItem>Min</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Total</asp:ListItem>
                    <asp:ListItem>Jumlah</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlPilih" runat="server" Height="22px" Width="145px" style="margin-left:50px">
                    <asp:ListItem>Tarif Jastip</asp:ListItem>
                    <asp:ListItem>Total</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnOperasi" runat="server" Text="Hitung" Width="78px" 
                    style="margin-left:50px" Height="24px"/>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:TextBox ID="tbOperasi" runat="server" Width="339px"></asp:TextBox>
                <asp:Button ID="btnClear" runat="server" Text="Clear" Width="78px" 
                    style="margin-left:50px" Height="24px"/>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style13">&nbsp;</td>
            <td class="auto-style8" colspan="4" rowspan="3">
                <asp:GridView ID="dgvTampil" runat="server" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    style="color: #000000; background-color: #FFFFFF" Width="901px">
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
            <td class="style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
