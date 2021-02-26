<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifleri.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        font-size: x-large;
    }
    .auto-style9 {
        width: 301px;
        height: 19px;
        text-align: right;
    }
    .auto-style10 {
        height: 19px;
    }
    .auto-style12 {
        width: 301px;
        font-size: medium;
        text-align: right;
    }
        .auto-style14 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 80px;
        }
        .auto-style15 {
            font-size: x-large;
            text-align: center;
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td colspan="2">&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style15">BİZE ULAŞIN</span></strong>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;<span class="auto-style4"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Başlık:</strong></span>&nbsp;</td>
        <td class="auto-style10">
            <asp:TextBox ID="txtBaslik" runat="server" Height="20px" Width="400px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Gönderen:</strong></td>
        <td>
            <asp:TextBox ID="txtGonderen" runat="server" Height="20px" Width="400px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Mail:</strong></td>
        <td>
            <asp:TextBox ID="txtEMail" runat="server" Height="20px" TextMode="Email" Width="400px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="txtMesaj" runat="server" Height="100px" TextMode="MultiLine" Width="400px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>
            <asp:Button ID="BtnMesajGonder" runat="server" BackColor="#FFFF99" CssClass="auto-style14" Font-Bold="True" ForeColor="Blue" Height="40px" OnClick="BtnMesajGonder_Click" Text="MESAJ GÖNDER" Width="257px" />
        </td>
    </tr>
</table>
</asp:Content>
