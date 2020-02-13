<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="site_3.admingiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style51 {
            color: #FFFFFF;
            font-size:13pt;
        }
        .auto-style52 {
            font-size: 13pt;
            color: #FFFFFF;
        }
        .auto-style53 {
            text-align: right;
            width: 439px;
        }
        .auto-style54 {
            font-size: 13pt;
            text-align: right;
            color: #FFFFFF;
            width: 439px;
        }
        .auto-style55 {
            font-weight: bold;
        }
        .auto-style56 {
            text-align: left;
        }
        .auto-style57 {
            font-size: 14pt;
            color: #CC0000;
        }
        .auto-style58 {
            font-weight: bold;
            font-size: 12pt;
        }
        .auto-style59 {
            width: 100%;
            height: 236px;
        }
        .auto-style60 {
            text-align: right;
            width: 439px;
            height: 56px;
        }
        .auto-style61 {
            text-align: left;
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style59">
        <tr>
            <td class="auto-style51" colspan="2"><strong>Admin Girişi</strong></td>
        </tr>
        <tr>
            <td class="auto-style54"><strong>Kullanıcı Adı:</strong></td>
            <td class="auto-style56">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style53"><strong><span class="auto-style52">Şifre</span></strong>:</td>
            <td class="auto-style56"><strong>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style55" Height="25px" Width="225px" TextMode="Password"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style60">
                <asp:Label ID="Label6" runat="server" CssClass="auto-style57" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style61"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style58" Height="30px" OnClick="Button1_Click" Text="Giriş Yap!" Width="104px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
