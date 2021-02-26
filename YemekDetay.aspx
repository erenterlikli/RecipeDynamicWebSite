<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifleri.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
            color: #FF3300;
            background-color: #FFCCFF;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            font-size: larger;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            text-decoration: underline;
            font-size: larger;
        }
        .auto-style11 {
            text-align: right;
            width: 380px;
        }
        .auto-style17 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            margin-left: 29px;
        }
        .auto-style18 {
            text-decoration: underline;
            font-size: large;
            text-align: center;
            width: 169px;
        }
        .auto-style20 {
            width: 156px;
            text-align: right;
        }
        .auto-style21 {
            font-size: large;
            text-align: center;
            width: 199px;
        }
        .auto-style22 {
            width: 156px;
            font-size: larger;
            text-align: right;
        }
        .auto-style23 {
            width: 156px;
            font-size: larger;
        }
        .auto-style25 {
            width: 380px;
        }
        .auto-style26 {
            font-size: large;
            text-align: center;
            width: 199px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
    <br />
    <br />
    <span class="auto-style18">Bu Yemek İçin Yapılan Yorumlar:</span><span class="auto-style9"><br />
    <br />
    <br />
    </span>
    <asp:DataList ID="DataList3" runat="server" Width="496px">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style26" Text='<%# Eval("YorumNick") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                </strong>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                    </td>
                </tr>
                <strong>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong><em>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td style="border-style: inset hidden hidden hidden; border-top-width: medium; border-color: #000000" class="auto-style25">&nbsp;</td>
                </tr>
                </strong>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />

        <div style="background-color:rgba(211, 178, 153, 0.99)"><center>
            <br />
            <span class="auto-style8">&nbsp;</span><span class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BU İÇERİĞE YORUM YAP</span><br />
            <table class="auto-style7">
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23"><span class="auto-style4">Gönderen</span>:</td>
                    <td>
    <strong>
                        <asp:TextBox ID="txtGonderen" runat="server" CssClass="tb5" Width="380px"></asp:TextBox>
    </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22"><span class="auto-style4">Mail</span>:</td>
                    <td>
    <strong>
                        <asp:TextBox ID="txtMail" runat="server" CssClass="tb5" TextMode="Email" Width="380px"></asp:TextBox>
    </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">Yorum:</td>
                    <td>
    <strong>
                        <asp:TextBox ID="txtYorum" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="380px"></asp:TextBox>
    </strong>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
            </center>
                    <td class="auto-style1">    <strong>
                        <asp:Button ID="Button1" runat="server" BorderColor="#CC33FF" CssClass="auto-style17" Font-Bold="True" ForeColor="#003366" Height="40px" OnClick="Button1_Click" Text="YORUM GÖNDER" Width="209px" />
    </strong>
                    </td>
                </tr>
                <center>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                </table>
            </center></div>
    </strong>
</asp:Content>
