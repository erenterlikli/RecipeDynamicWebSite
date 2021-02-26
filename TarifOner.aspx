<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleri.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
            height: 192px;
        }
        .auto-style7 {
            font-size: medium;
            width: 111px;
            text-align: right;
        }
        .auto-style8 {
            font-size: medium;
            text-align: center;
            width: 111px;
        }
        .auto-style9 {
            width: 111px;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            font-size: larger;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style12"><strong>TARİF ÖNERİNİZİ BİZİMLE PAYLAŞIN</strong></td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif Adı:&nbsp; </strong></td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Height="20px" Width="367px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="367px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yapılışı:</strong></td>
            <td>
                <asp:TextBox ID="txtYapilis" runat="server" Height="200px" TextMode="MultiLine" Width="368px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Gönderen:</strong></td>
            <td>
                <asp:TextBox ID="txtGonderen" runat="server" Height="20px" Width="367px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Maili:</strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Height="20px" TextMode="Email" Width="367px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tarif Resmi:</strong></td>
            <td>
                <asp:FileUpload ID="FileResim" runat="server" Height="25px" Width="374px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="#3333CC" Height="40px" OnClick="Button1_Click" Text="TARİFİ GÖNDER" CssClass="fb8" />
            </td>
        </tr>
    </table>
</asp:Content>
