<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sifredegistir.aspx.cs" Inherits="sifredegistir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 164px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px">Eski Sifre:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 164px">Yeni Sifre:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 164px">Yeni Sifre Onayla:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 26px;">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Degistir" />
            </td>
            <td style="height: 26px">
                <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

