<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminYorum.aspx.cs" Inherits="YemekTarifleri.AdminYorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 63px;
        }
        .auto-style15 {
            width: 82px;
        }
        .auto-style16 {
            width: 63px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18" style="background-color: #FF9900">
        <div class="auto-style1" style="width:auto; height:auto;">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style14">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="+" Width="35px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td><strong>ONAYLI YORUM LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumNick") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style15">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" />
                            </td>
                        <td class="auto-style15">
                            <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/icon-for-update-14.png" Width="30px" />
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style18" style="background-color: #FF9900">
        <table class="auto-style8">
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="+" Width="35px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style16">
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style1"><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
         <br />
        <asp:DataList ID="DataList2" runat="server" Width="496px">
            <ItemTemplate>
                <br />
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style24"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumNick") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style15">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" />
                            </td>
                        <td class="auto-style15">
                            <a href="AdminYorumDetay.aspx?YorumId=<%#Eval("YorumId") %>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/icon-for-update-14.png" Width="30px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
