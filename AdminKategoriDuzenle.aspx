<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminKategoriDuzenle.aspx.cs" Inherits="YemekTarifleri.AdminKategoriDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: medium;
            text-align: right;
            width: 155px;
        }
        .auto-style15 {
            width: 155px;
        }
        .auto-style17 {
            width: 155px;
            height: 29px;
        }
        .auto-style18 {
            height: 29px;
        }
        .auto-style20 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 61px;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style7">&nbsp;</span><span class="auto-style12">KATEGORİ DÜZENLE</span></strong>&nbsp;</p>
    <table class="auto-style8">
        <tr>
            <td class="auto-style14"><strong>Kategori Ad:</strong></td>
            <td>
                <asp:TextBox ID="txtKategori" runat="server" CssClass="tb5" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Adet:</strong></td>
            <td>
                <asp:TextBox ID="txtAdet" runat="server" CssClass="tb5" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="330px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Font-Bold="True" Font-Size="12pt" OnClick="Button1_Click" Text="GÜNCELLE" Width="210px" BackColor="#00CCFF" ForeColor="#CC3300" Height="35px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
