<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifleri.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            font-size: large;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style11 {
            text-align: center;
            width: 157px;
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style6">
        <strong><span class="auto-style9">&nbsp; </span></strong>
    </p>
    <p class="auto-style6">
        <strong><span class="auto-style11">HAKKIMIZDA</span></strong></p>
    <p class="auto-style6">
        <strong><asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Metin") %>' CssClass="auto-style4" Font-Bold="True" Font-Size="13pt"></asp:Label>
            </ItemTemplate>
        </asp:DataList>

        </strong>
    </p>
</asp:Content>
