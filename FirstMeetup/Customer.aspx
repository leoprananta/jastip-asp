<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Customer.aspx.vb" Inherits="FirstMeetup.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style1
        {
            width: 100%;
            background-color: #336699;
        }
        .style5
        {
            width: 23px;
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
        #tbAlamatCs {
    }
        .style16
        {
            height: 26px;
        }
        .auto-style1 {
            width: 23px;
            height: 19px;
        }
        .auto-style2 {
            color: #FFFFFF;
            width: 236px;
            height: 19px;
        }
        .auto-style3 {
            width: 327px;
            height: 19px;
        }
        .auto-style4 {
            height: 19px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style10">&nbsp;</td>
        <td class="style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style17" colspan="6">INPUT DATA</td>
    </tr>
    <tr>
        <td class="style4" colspan="6">CUSTOMER</td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style10">&nbsp;</td>
        <td class="style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style10">&nbsp;</td>
        <td class="style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style6">&nbsp;</td>
        <td class="style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style6">Id Customer</td>
        <td class="style11">
            <asp:TextBox ID="tbIdCs" runat="server" Width="274px"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnCari" runat="server" Text="Cari" Width="62px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style7">&nbsp;</td>
        <td class="style8">Nama Customer</td>
        <td class="style12">
            <asp:TextBox ID="tbNamaCs" runat="server" Width="274px"></asp:TextBox>
        </td>
        <td class="style9">
            <asp:Button ID="btnSimpanCs" runat="server" Text="Simpan" Width="62px" />
        </td>
        <td class="style9"></td>
        <td class="style9"></td>
    </tr>
    <tr>
        <td class="style7">&nbsp;</td>
        <td class="style8">Jenis Kelamin</td>
        <td class="style12">
            <asp:RadioButtonList ID="rbJekelCs" runat="server" 
                    style="color: #FFFFFF">
                <asp:ListItem>Laki-laki</asp:ListItem>
                <asp:ListItem>Perempuan</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style9">
            <asp:Button ID="btnEditCs" runat="server" Text="Edit" Width="62px" />
        </td>
        <td class="style9">&nbsp;</td>
        <td class="style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1"></td>
        <td class="auto-style2">Alamat</td>
        <td class="auto-style3">
            <asp:TextBox ID="tbAlamatCs" runat="server" Width="274px"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:Button ID="btnHapusCs" runat="server" Text="Hapus" Width="62px" />
        </td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style6">Domisili</td>
        <td class="style11">
            <asp:TextBox ID="tbDomisiliCs" runat="server" Width="274px"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="62px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style13"></td>
        <td class="style14">No Telfon</td>
        <td class="style15">
            <asp:TextBox ID="tbNoCs" runat="server" Width="274px"></asp:TextBox>
        </td>
        <td class="style16"></td>
        <td class="style16"></td>
        <td class="style16"></td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style6">Foto</td>
        <td class="style11">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style10">&nbsp;</td>
        <td class="style11"></td>
        <td>
            <asp:Image ID="Image1" runat="server" Height="143px" Width="143px" Visible="False" />
            </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style10">&nbsp;</td>
        <td class="style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style10" colspan="4" rowspan="7">
            <asp:GridView ID="dgvCs" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="865px" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="Nama" HeaderText="Nama" />
                <asp:BoundField DataField="Jekel" HeaderText="Jekel" />
                <asp:BoundField DataField="Alamat" HeaderText="Alamat" />
                <asp:BoundField DataField="Domisili" HeaderText="Domisili" />
                <asp:BoundField DataField="Telfon" HeaderText="Telfon" />
                <asp:TemplateField HeaderText="Gambar">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Width="40px" Height="40px"
                         ImageUrl='<%# "imagehandler.ashx?ID=" & Eval("ID")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
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
        <td>&nbsp;</td>
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
        <td>&nbsp;</td>
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style5">&nbsp;</td>
        <td class="style10">&nbsp;</td>
        <td class="style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
