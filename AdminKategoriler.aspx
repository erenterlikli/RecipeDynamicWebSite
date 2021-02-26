<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminKategoriler.aspx.cs" Inherits="YemekTarifleri.AdminKategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: right;
        }
        .auto-style17 {
            width: 90px;
        }
        .auto-style18 {
            background-color: #FFFF99;
        }
        .auto-style19 {
            width: 160px;
            height: 38px;
        }
        .auto-style21 {
            width: 90px;
            text-align: center;
        }
        .auto-style22 {
            width: 160px;
            text-align: center;
        }
        .auto-style23 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 41px;
        }
        .auto-style24 {
            width: 368px;
        }
        .auto-style25 {
            height: 38px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18">
        <div style="width:auto; height:auto;" class="auto-style1"> 
            <table class="auto-style8">
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="25px" OnClick="Button1_Click" Text="+" Width="35px" Font-Size="20px" />
                    </td>
                    <td class="auto-style17">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="25px" OnClick="Button2_Click" Text="-" Width="30px" Font-Size="20px" />
                    </td>
                    <td><strong>KATEGORİ LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style15">
                          <a href="AdminKategoriler.aspx?KategoriId=<%#Eval("KategoriId") %>&islem=sil">  <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style15">
                        <a href="AdminKategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId")%>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/icon-for-update-14.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style18">
        <table class="auto-style8">
            <tr>
                <td class="auto-style21">
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="25px"  Text="+" Width="35px" Font-Size="20px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style21">
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="25px"  Text="-" Width="30px" Font-Size="20px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style1"><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style8">
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>KATEGORİ ADI:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>İKONU:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="320px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style25">
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Size="18px" OnClick="Button5_Click" Text="EKLE" Width="258px" BackColor="#00CCFF" ForeColor="#CC3300" Height="35px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

