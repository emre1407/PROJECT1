<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="departmanduzenle.aspx.cs" Inherits="departmanduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="departmanıd" DataSourceID="SqlDataSource1" Width="246px" OnRowDeleted="GridView1_RowDeleted">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="departmanıd" HeaderText="departmanıd" InsertVisible="False" ReadOnly="True" SortExpression="departmanıd" />
        <asp:BoundField DataField="departmanadı" HeaderText="departmanadı" SortExpression="departmanadı" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TelefonRehberiConnectionString5 %>" DeleteCommand="DELETE FROM [departmanlist] WHERE [departmanıd] = @departmanıd" InsertCommand="INSERT INTO [departmanlist] ([departmanadı]) VALUES (@departmanadı)" SelectCommand="SELECT [departmanıd], [departmanadı] FROM [departmanlist]" UpdateCommand="UPDATE [departmanlist] SET [departmanadı] = @departmanadı WHERE [departmanıd] = @departmanıd" ProviderName="System.Data.SqlClient">
    <DeleteParameters>
        <asp:Parameter Name="departmanıd" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="departmanadı" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="departmanadı" Type="String" />
        <asp:Parameter Name="departmanıd" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<table style="width: 100%">
    <tr>
        <td class="width300" style="width: 171px">
            <asp:Label ID="Label1" runat="server" BackColor="#66FFFF" Text="Departman Ekle :"></asp:Label>
        </td>
        <td style="width: 153px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ekle" Width="69px" />
        </td>
    </tr>
    <tr>
        <td class="width300" style="width: 171px">
            <asp:Label ID="Label2" runat="server" Text="  "></asp:Label>
        </td>
        <td style="width: 153px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 171px">&nbsp;</td>
        <td style="width: 153px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

