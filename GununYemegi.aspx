<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleri.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
    }
    .auto-style7 {
        font-size: large;
    }
    .auto-style8 {
        font-size: larger;
    }
    .auto-style10 {
        text-align: center;
        height: 30px;
    }
    .auto-style11 {
        font-size: medium;
        height: 30px;
        text-align: right;
    }
        .auto-style12 {
            text-align: center;
            height: 29px;
        }
        .auto-style13 {
            font-size: medium;
            height: 30px;
        }
        .auto-style15 {
            font-size: medium;
            height: 30px;
            text-align: center;
        }
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            color: #FFFFFF;
            font-size: xx-large;
            background-color: #CCCC00;
        }
        .auto-style18 {
            font-size: large;
            text-align: center;
            width: 199px;
        }
        .auto-style19 {
            text-align: center;
            width: 145px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DataList ID="DataList3" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style8">&nbsp;</span><strong><span class="auto-style8">&nbsp;</span><span class="auto-style16">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style17" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    &nbsp;</span></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style7">&nbsp; </span></strong>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style13"><strong><span class="auto-style18">Malzemeler:</span>
                    </strong>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td class="auto-style13"><strong><span class="auto-style18">Yapılışı:</span><span class="auto-style8"> </span>
                    </strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="263px" Width="472px" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong><span class="auto-style7">&nbsp;&nbsp;&nbsp; </span>
                    <span class="auto-style19">Puanı:</span>
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11"><strong><span class="auto-style19">Ekleme Tarihi:</span>
                    </strong><em>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarihi") %>'></asp:Label>
                    </em></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>


