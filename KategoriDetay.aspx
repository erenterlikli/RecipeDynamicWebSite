<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifleri.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style8 {
        height: 23px;
    }
        .auto-style11 {
            font-size: larger;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style9 {
            height: 17px;
        }
        .auto-style12 {
            height: 23px;
            font-size: medium;
            text-align: left;
            width: 199px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList4" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style1"><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("YemekId")%>">
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>' style="font-size: x-large; color: #FF3300; background-color: #FFCCFF"></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"><strong><span class="auto-style11">Malzemeler: </span></strong>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td><strong><span class="auto-style11">Yapılışı:</span> </strong>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="194px" ImageUrl='<%# Eval("YemekResim") %>' Width="484px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><strong><span class="auto-style11">Puanı:</span>
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong><span class="auto-style11">Eklenme Tarihi: </span></strong><em>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarihi") %>'></asp:Label>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style9" style="border: thin solid #000000; background-color: #000000;"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
