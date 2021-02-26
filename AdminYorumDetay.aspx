<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminYorumDetay.aspx.cs" Inherits="YemekTarifleri.AdminYorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 88px;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style16 {
            width: 88px;
            text-align: right;
        }
        .auto-style17 {
            width: 88px;
            font-size: medium;
            text-align: right;
        }
        .auto-style20 {
            width: 88px;
            text-align: right;
            height: 26px;
        }
        .auto-style21 {
            height: 26px;
        }
        .auto-style22 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style12">&nbsp;</span><strong><span class="auto-style12">&nbsp;&nbsp; YORUM DÜZENLEME</span></strong></p>
    <table class="auto-style8">
        <tr>
            <td class="auto-style16"><strong><span class="auto-style15">Nick:</span></strong></td>
            <td>
                <asp:TextBox ID="TxtNick" runat="server" Width="395px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17"><strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="395px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong><span class="auto-style15">Yorum:</span></strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="TxtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="395px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><span class="auto-style15"><strong>Y</strong></span><strong><span class="auto-style15">emek:</span></strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="395px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                <asp:Button ID="BtnGuncelOnay" runat="server" CssClass="auto-style22" Font-Bold="True" Font-Size="12pt" Height="35px" OnClick="BtnGuncelOnay_Click" Text="GÜNCELLE/ONAY" Width="246px" BackColor="#999966" ForeColor="Yellow" />
            </td>
        </tr>
    </table>
</asp:Content>
