<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminOneri.aspx.cs" Inherits="YemekTarifleri.AdminOneri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            width: 60px;
        }
        .auto-style16 {
            width: 52px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18" style="background-color: #0099CC">
        <div class="auto-style1" style="width:auto; height:auto;">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="+" Width="35px" OnClick="Button1_Click"/>
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="20px" Height="25px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                    </td>
                    <td class="auto-style1"><strong>ONAYLANMAMIŞ ÖNERİLER</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <br />
        <asp:DataList ID="DataList1" runat="server" Width="496px">
            <ItemTemplate>
                <br />
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style24"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style14">
                           <a href="AdminOneriDetay.aspx?TarifId=<%#Eval("TarifId") %>"> <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/eye-1776793-1513271.png" Width="30px" BackColor="White" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </br>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style18" style="background-color: #0099CC">
        <div class="auto-style1" style="width:auto; height:auto;">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style15">
                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="+" Width="35px" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="20px" Height="25px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </td>
                    <td class="auto-style1"><strong>ONAYLI ÖNERİLER</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <br />
        <asp:DataList ID="DataList2" runat="server" Width="496px">
            <ItemTemplate>
                <br />
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style24"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style14">
                           <a href="AdminOneriDetay.aspx?TarifId=<%#Eval("TarifId") %>"> <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/eye-1776793-1513271.png" Width="30px" BackColor="White" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
