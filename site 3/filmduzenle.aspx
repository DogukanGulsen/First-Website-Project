<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="filmduzenle.aspx.cs" Inherits="site_3.filmduzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            font-size: 14pt;
            color: #FFFFFF;
        }
        .auto-style5 {
            color: #FFFFFF;
            font-size: 13pt;
            text-align: right;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4" colspan="2">Yeni Kayıt</td>
        </tr>
        <tr>
            <td class="auto-style5">Film İd:</td>
            <td>
                <asp:TextBox ID="filmid" runat="server" Height="25px" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Film Adı:</td>
            <td>
                <asp:TextBox ID="filmadi" runat="server" Height="25px" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">İçerik:</td>
            <td>
                <asp:TextBox ID="icerik" runat="server" Height="25px" TextMode="MultiLine" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yönetmen:</td>
            <td>
                <asp:TextBox ID="yonetmen" runat="server" Height="25px" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Oyuncular:</td>
            <td>
                <asp:TextBox ID="oyuncu" runat="server" Height="25px" TextMode="MultiLine" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yıl:</td>
            <td>
                <asp:TextBox ID="yil" runat="server" Height="25px" Width="224px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tür:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="224px">
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Afiş:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="224px" />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Afiş 2:</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" Width="224px" />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/icon/update.png" OnClick="ImageButton1_Click" Width="50px" />
            </td>
        </tr>
    </table>
</asp:Content>
