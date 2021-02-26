<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminYemekGuncelle.aspx.cs" Inherits="YemekTarifleri.AdminYemekGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 155px;
        }
        .auto-style15 {
            width: 155px;
            text-align: right;
            font-size: medium;
        }
        .auto-style16 {
            width: 155px;
            text-align: right;
        }
        .auto-style17 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 59px;
        }
        .auto-style18 {
            margin-left: 65px;
        }
        .auto-style19 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style12">&nbsp; </span><strong><span class="auto-style12">YEMEK GÜNCELLEME</span></strong>&nbsp;</p>
    
     <table class="auto-style8">
        <tr>
            <td class="auto-style15"><strong>Yemek Adı:</strong></td>
            <td>
                <asp:TextBox ID="txtGuncelYemekAd" runat="server" CssClass="tb5" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtGuncelMalzeme" runat="server" CssClass="tb5" Width="325px" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="txtGuncelTarif" runat="server" CssClass="tb5" Width="325px" Height="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileGuncelResim" runat="server" CssClass="tb5" Width="330px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Kategori</strong>:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="330px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style18">
                <asp:Button ID="BtnGuncelleOnay" runat="server" CssClass="auto-style17" Font-Bold="True" Font-Size="12pt" Text="GÜNCELLE" Width="200px" Height="30px" OnClick="BtnGuncelleOnay_Click" BackColor="#CCCCFF" ForeColor="Fuchsia" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                <asp:Button ID="BtnYap" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Size="12pt" Height="30px" OnClick="BtnYap_Click" Text="GÜNÜN YEMEĞİ YAP" Width="200px" BackColor="#CCCCFF" ForeColor="Fuchsia" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
