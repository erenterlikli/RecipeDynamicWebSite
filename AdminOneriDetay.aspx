<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminOneriDetay.aspx.cs" Inherits="YemekTarifleri.AdminOneriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style16 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style12">GELEN TARİFLER </span></strong>
    </p>
    <p>
        
     <table class="auto-style8">
        <tr>
            <td class="auto-style14"><strong>Tarif Adı:&nbsp;</strong></td>
            <td>
                <asp:TextBox ID="txtGelenTarifAd" runat="server" CssClass="tb5" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="txtGelenMalzeme" runat="server" CssClass="tb5" Width="325px" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yapılışı:</strong></td>
            <td>
                <asp:TextBox ID="txtGelenYapilis" runat="server" CssClass="tb5" Width="325px" Height="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileGelenResim" runat="server" CssClass="tb5" Width="330px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Kategori</strong>:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="330px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Gönderen:</strong></td>
            <td>
                <asp:TextBox ID="txtGelenKisi" runat="server" CssClass="tb5" Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong><span class="auto-style15">Maili</span></strong>:</td>
            <td>
                <asp:TextBox ID="txtGonderenMail" runat="server" CssClass="tb5" Width="325px" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="BtnGuncelleOnay" runat="server" CssClass="auto-style16" Font-Bold="True" Font-Size="12pt" Text="ONAYLA" Width="200px" Height="35px" OnClick="BtnGuncelleOnay_Click" BackColor="#FFFF66" ForeColor="#CC3300" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table></p>
</asp:Content>
