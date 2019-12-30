<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="FirstMeetup.WebForm2" %>

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
        .style18
        {
            width: 23px;
            height: 34px;
        }
        .style19
        {
            color: #FFFFFF;
            width: 236px;
            height: 34px;
        }
        .style20
        {
            width: 327px;
            height: 34px;
        }
        .style21
        {
            height: 34px;
        }
        .style22
        {
            width: 23px;
            height: 204px;
        }
        .style23
        {
            color: #FFFFFF;
            width: 236px;
            height: 204px;
        }
        .style24
        {
            width: 327px;
            height: 204px;
        }
        .style25
        {
            height: 204px;
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
                EVALUASI RENTAL MOBIL</td>
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
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                No Mobil</td>
            <td class="style11">
                <asp:TextBox ID="tbNO" runat="server" Width="287px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnSimpan" runat="server" Text="Simpan" Width="62px" />
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
                Merek Mobil</td>
            <td class="style11">
                <asp:TextBox ID="tbMerk" runat="server" Width="287px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                Tanggal Pinjam</td>
            <td class="style12">
                <asp:TextBox ID="tbPinjam" runat="server" Width="287px"></asp:TextBox>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style9">
            </td>
            <td class="style9">
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Berapa Hari</td>
            <td class="style11">
                <asp:TextBox ID="tbHari" runat="server" Width="287px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                Jenis Mobil</td>
            <td class="style15">
                <asp:RadioButtonList ID="rbListJenis" runat="server" 
                    style="color: #FFFFFF">
                    <asp:ListItem>Sedan</asp:ListItem>
                    <asp:ListItem>Pickup</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                </td>
            <td class="style19">
                Warna Mobil</td>
            <td class="style20">
                <asp:DropDownList ID="ddlWarna" runat="server" Height="29px" Width="104px">
                    <asp:ListItem Value="Hitam">Hitam</asp:ListItem>
                    <asp:ListItem>Putih</asp:ListItem>
                    <asp:ListItem>Merah</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style21">
                </td>
            <td class="style21">
                </td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style22">
                </td>
            <td class="style23">
                Tanggal Kembali</td>
            <td class="style24">
                <asp:Calendar ID="cldKembali" runat="server" style="color: #FFFFFF">
                </asp:Calendar>
            </td>
            <td class="style25">
                </td>
            <td class="style25">
                </td>
            <td class="style25">
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
                &nbsp;</td>
            <td>
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
