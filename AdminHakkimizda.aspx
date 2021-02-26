<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAnaSayfa.Master" AutoEventWireup="true" CodeBehind="AdminHakkimizda.aspx.cs" Inherits="YemekTarifleri.AdminHakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            margin-left: 181px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style18">
        <div class="auto-style1" style="width:auto; height:auto;">
            <table class="auto-style8">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="+" Width="35px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style17">
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="20px" Height="25px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td><strong>HAKKIMIZDA</strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style8">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Height="300px" TextMode="MultiLine" Width="480px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Font-Bold="True" Font-Size="12pt" Height="35px" OnClick="Button3_Click1" Text="ONAYLA" Width="200px" BackColor="#999966" ForeColor="#FFFF66" />
        <br />
        <br />
    </asp:Panel>
</asp:Content>
