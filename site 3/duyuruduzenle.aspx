<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="duyuruduzenle.aspx.cs" Inherits="site_3.duyuruduzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Duyuru Id</td>
            <td>
                <asp:TextBox ID="duyuruid" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Duyuru Başlık</td>
            <td>
                <asp:TextBox ID="baslik" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İ<span class="auto-style3">çerik</span></td>
            <td>
                <asp:TextBox ID="icerik" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Görsel</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/icon/update.png" OnClick="ImageButton1_Click" Width="60px" />
            </td>
        </tr>
    </table>
</asp:Content>
