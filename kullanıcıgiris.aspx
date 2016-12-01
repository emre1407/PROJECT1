<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kullanıcıgiris.aspx.cs" Inherits="kullanıcıgiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="181px" Width="537px" OnRowCommand="GridView1_RowCommand">
    <Columns>
        <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
        <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
        <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
        <asp:BoundField DataField="Departman" HeaderText="Departman" SortExpression="Departman" />
        <asp:BoundField DataField="YoneticiBilgileri" HeaderText="YoneticiBilgileri" SortExpression="YoneticiBilgileri" />
        <asp:ButtonField CommandName="Ayrıntı" HeaderText="Ayrıntılı Bilgi Göster" Text="Ayrıntı" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TelefonRehberiConnectionString %>" SelectCommand="SELECT [Ad], [Telefon], [Soyad], [Departman], [YoneticiBilgileri] FROM [rehber]"></asp:SqlDataSource>
    <table style="width: 100%">
        <tr>
            <td style="width: 164px">
                <asp:Label ID="Label6" runat="server" BackColor="Aqua" Text="Ayrıntılı Bilgiler"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 164px">
                Ad:</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 164px">Soyad:</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 164px">Telefon:</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 164px; height: 19px;">Departman:</td>
            <td style="height: 19px">
                <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 164px">Yönetici Bilgileri:</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

