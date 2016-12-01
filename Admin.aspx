<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%; height: 74px">
    <tr>
        <td style="width: 203px">Kullanıcı Adı:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 203px">Şifre:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 203px">
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Giriş" Width="58px" />
        </td>
        <td>
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

