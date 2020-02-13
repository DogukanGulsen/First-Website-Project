<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="site_3.kayitol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style51 {
            width: 100%;
            color: #FFFFFF;
            height: 174px;
        }
        .auto-style52 {
            width: 441px;
            text-align: right;
        }
        .auto-style53 {
            text-align: left;
        }
        .auto-style55 {
            color: #FF0000;
            font-size: 13pt;
        }
        .auto-style56 {
            width: 441px;
            text-align: right;
            height: 27px;
            font-size: 13pt;
        }
        .auto-style57 {
            text-align: left;
            height: 27px;
        }
        .auto-style58 {
            width: 441px;
            text-align: right;
            font-size: medium;
        }
        .auto-style61 {
            font-size: 13pt;
        }
        .auto-style63 {
            width: 100%;
            color: #FFFFFF;
            height: 218px;
            background-color: #000000;
        }
        .auto-style64 {
            width: 441px;
            text-align: right;
            font-size: 13pt;
        }
        .auto-style65 {
            font-size: 15pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style63">
        <tr>
            <td class="auto-style65" colspan="2"><strong>Kayıt Ol</strong></td>
        </tr>
        <tr>
            <td class="auto-style56"><strong>Kullanıcı Adı:</strong></td>
            <td class="auto-style57">
                <asp:TextBox ID="ka" runat="server" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style64"><strong>Şifre:</strong></td>
            <td class="auto-style53">
                <asp:TextBox ID="sifre" runat="server" TextMode="Password" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style64"><strong>Ad-Soyad:</strong></td>
            <td class="auto-style53">
                <asp:TextBox ID="ad" runat="server" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style58"><span class="auto-style61"><strong>E-mail</strong></span>:</td>
            <td class="auto-style53">
                <asp:TextBox ID="mail" runat="server" TextMode="Email" Width="250px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style52">
                <asp:Label ID="Label6" runat="server" CssClass="auto-style55" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style53"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style61" Height="34px" OnClick="Button1_Click" Text="Kayıt Ol!" Width="113px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
