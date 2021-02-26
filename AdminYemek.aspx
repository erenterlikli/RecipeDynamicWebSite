<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminYemek.aspx.cs" Inherits="YemekTarifleri.AdminYemek" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: right;
        }
        .auto-style17 {
            width: 90px;
        }
        .auto-style19 {
            width: 160px;
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
            background-color: #FFCCFF;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style25">
        <div style="width:auto; height:auto;" class="auto-style1"> 
            <table class="auto-style8">
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="25px"  Text="+" Width="35px" Font-Size="20px" OnClick="Button1_Click1" />
                    </td>
                    <td class="auto-style17">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="25px"  Text="-" Width="30px" Font-Size="20px" OnClick="Button2_Click" />
                    </td>
                    <td><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <br />
        <asp:DataList ID="DataList1" runat="server" Width="496px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <br />
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style24"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style15">
                          <a href="AdminYemek.aspx?YemekId=<%#Eval("YemekId") %>&islem=sil">  <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style15">
                        <a href="AdminYemekGuncelle.aspx?YemekId=<%#Eval("YemekId")%>"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/icon-for-update-14.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style25">
        <table class="auto-style8">
            <tr>
                <td class="auto-style21">
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Height="25px"  Text="+" Width="35px" Font-Size="20px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style21">
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="25px"  Text="-" Width="30px" Font-Size="20px" OnClick="Button4_Click"  />
                </td>
                <td class="auto-style1"><strong>YEMEK EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style8">
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>YEMEK ADI:</strong></td>
                <td>
                    <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb5" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="txtMalzeme" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>YAPILIŞI:</strong></td>
                <td>
                    <asp:TextBox ID="txtYapilis" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="320px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>RESMİ:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="320px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>KATEGORİ:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="320px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Size="18px"  Text="EKLE" Width="258px" OnClick="Button5_Click" BackColor="#CCCCFF" ForeColor="Fuchsia" Height="35px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


