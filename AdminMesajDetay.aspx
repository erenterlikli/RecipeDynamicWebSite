<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminMesajDetay.aspx.cs" Inherits="YemekTarifleri.AdminMesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: medium;
            text-align: right;
            width: 142px;
        }
        .auto-style15 {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style12"><strong>MESAJ DETAYLARI&nbsp;</strong></span></p>
    <p>
        <table class="auto-style8">
            <tr>
                <td class="auto-style14"><strong>Mesaj Gönderen:</strong></td>
                <span class="auto-style12">
                <td>
                    <asp:TextBox ID="TxtGonderen" runat="server" Width="339px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Mesaj Başlığı:</strong></td>
                <td><span class="auto-style12">
                    <asp:TextBox ID="TxtBaslik" runat="server" Width="339px" CssClass="tb5"></asp:TextBox>
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Gönderen Mail:</strong></td>
                <td><span class="auto-style12">
                    <asp:TextBox ID="TxtGonderenMail" runat="server" TextMode="Email" Width="339px" CssClass="tb5"></asp:TextBox>
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Mesaj İçeriği:</strong></td>
                <td><span class="auto-style12">
                    <asp:TextBox ID="TxtMesaj" runat="server" Height="200px" TextMode="MultiLine" Width="339px" CssClass="tb5"></asp:TextBox>
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </span>
    </p>
</asp:Content>
