<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admingiris.aspx.cs" Inherits="admingiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 99%; height: 287px; margin-bottom: 41px">
    <tr>
        <td class="width300" style="width: 193px; height: 18px; background-color: #66FFFF;">Yeni Kayıt Girisi</td>
        <td style="height: 18px; width: 277px;"></td>
        <td style="height: 18px; width: 165px;"></td>
        <td style="height: 18px; width: 100px;">&nbsp;</td>
        <td style="height: 18px"></td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px">Ad:</td>
        <td style="width: 277px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 100px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px; height: 22px;">Soyad:</td>
        <td style="height: 22px; width: 277px">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td style="height: 22px; width: 165px">
            &nbsp;</td>
        <td style="height: 22px; width: 100px">
            &nbsp;</td>
        <td style="height: 22px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px">Telefon:</td>
        <td style="width: 277px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td style="height: 18px; width: 165px;">
            <asp:Label ID="Label8" runat="server" BackColor="#66FFFF" Text="Departman Duzenle"></asp:Label>
        </td>
        <td style="height: 18px; width: 100px;">
            &nbsp;</td>
        <td style="height: 18px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px">Departman:</td>
        <td style="width: 277px">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="departmanadı" DataValueField="departmanadı" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="128px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TelefonRehberiConnectionString2 %>" SelectCommand="SELECT [departmanadı] FROM [departmanlist]"></asp:SqlDataSource>
        </td>
        <td style="width: 165px">
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Duzenle" Width="96px" />
        </td>
        <td style="width: 100px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px; height: 39px">Yönetici Bilgileri:</td>
        <td style="height: 39px; width: 277px;">
            <asp:DropDownList ID="DropDownList2" runat="server" Width="126px">
                <asp:ListItem>Seciniz</asp:ListItem>
                <asp:ListItem>müdür2</asp:ListItem>
                <asp:ListItem>müdür1</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 39px; width: 165px;">
            &nbsp;</td>
        <td style="height: 39px; width: 100px;">
            &nbsp;</td>
        <td style="height: 39px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px; height: 39px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Kayıt Ekle" Width="100px" />
        </td>
        <td style="height: 39px; width: 277px;">
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click1" Text="Temizle" Width="100px" />
        </td>
        <td style="height: 39px; width: 165px;">
            &nbsp;</td>
        <td style="height: 39px; width: 100px;">
            &nbsp;</td>
        <td style="height: 39px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px; height: 39px">
            <asp:Label ID="Label6" runat="server" Text="   "></asp:Label>
            </td>
        <td style="height: 39px; width: 277px;">
            &nbsp;</td>
        <td style="height: 39px; width: 165px;">
            &nbsp;</td>
        <td style="height: 39px; width: 100px;">
            &nbsp;</td>
        <td style="height: 39px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px; height: 39px">
            <asp:Label ID="Label7" runat="server" BackColor="#66FFFF" Text="Admin Sifre Degistirme"></asp:Label>
        </td>
        <td style="height: 39px; width: 277px;">
            <asp:Label ID="Label9" runat="server" BackColor="#66FFFF" Text="Calısan Kayıtları(Duzenle-Sil)"></asp:Label>
        </td>
        <td style="height: 39px; width: 165px;">
            &nbsp;</td>
        <td style="height: 39px; width: 100px;">
            &nbsp;</td>
        <td style="height: 39px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px; height: 39px">
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="Degistir" Width="102px" />
        </td>
        <td style="height: 39px; width: 277px;">
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Duzenle-Sil" Width="101px" />
        </td>
        <td style="height: 39px; width: 165px;">
            &nbsp;</td>
        <td style="height: 39px; width: 100px;">
            &nbsp;</td>
        <td style="height: 39px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px; height: 39px">
            &nbsp;</td>
        <td style="height: 39px; width: 277px;">
            &nbsp;</td>
        <td style="height: 39px; width: 165px;">
            &nbsp;</td>
        <td style="height: 39px; width: 100px;">
            &nbsp;</td>
        <td style="height: 39px">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="width300" style="width: 193px; height: 39px">
            &nbsp;</td>
        <td style="height: 39px; width: 277px;">
            &nbsp;</td>
        <td style="height: 39px; width: 165px;">
            &nbsp;</td>
        <td style="height: 39px; width: 100px;">
            &nbsp;</td>
        <td style="height: 39px">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

