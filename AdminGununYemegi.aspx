<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminGununYemegi.aspx.cs" Inherits="YemekTarifleri.AdminGununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            background-color: #66FF99;
        }
        .auto-style15 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18" style="background-color: #00CC66">
        <div class="auto-style1" style="width:auto; height:auto;">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style14">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="+" Width="35px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="20px" Height="25px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </td>
                    <td class="auto-style14"><strong>&nbsp;GÜNÜN YEMEĞİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style15">
                         <a href="AdminYemekGuncelle.aspx?YemekId=<%#Eval("YemekId") %>"> <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/choose-icon-png-6-Transparent-Images.png" Width="30px" BackColor="White" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
