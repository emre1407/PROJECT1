<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="duzenlesil.aspx.cs" Inherits="duzenlesil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
        <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
        <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
        <asp:BoundField DataField="Departman" HeaderText="Departman" SortExpression="Departman" />
        <asp:BoundField DataField="YoneticiBilgileri" HeaderText="YoneticiBilgileri" SortExpression="YoneticiBilgileri" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TelefonRehberiConnectionString6 %>" DeleteCommand="DELETE FROM [rehber] WHERE [Id] = @Id" InsertCommand="INSERT INTO [rehber] ([Ad], [Soyad], [Telefon], [Departman], [YoneticiBilgileri]) VALUES (@Ad, @Soyad, @Telefon, @Departman, @YoneticiBilgileri)" SelectCommand="SELECT [Id], [Ad], [Soyad], [Telefon], [Departman], [YoneticiBilgileri] FROM [rehber]" UpdateCommand="UPDATE [rehber] SET [Ad] = @Ad, [Soyad] = @Soyad, [Telefon] = @Telefon, [Departman] = @Departman, [YoneticiBilgileri] = @YoneticiBilgileri WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Ad" Type="String" />
        <asp:Parameter Name="Soyad" Type="String" />
        <asp:Parameter Name="Telefon" Type="Int64" />
        <asp:Parameter Name="Departman" Type="String" />
        <asp:Parameter Name="YoneticiBilgileri" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Ad" Type="String" />
        <asp:Parameter Name="Soyad" Type="String" />
        <asp:Parameter Name="Telefon" Type="Int64" />
        <asp:Parameter Name="Departman" Type="String" />
        <asp:Parameter Name="YoneticiBilgileri" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

