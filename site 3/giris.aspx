<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="site_3.giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style49 {
            color: #FFFFFF;
            font-size: 15pt;
        }
        .auto-style51 {
            color: #FFFFFF;
            width: 245px;
            text-align: center;
        }
        .auto-style52 {
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style53 {
            color: #FFFFFF;
            width: 440px;
            text-align: right;
            font-size: x-large;
        }
        .auto-style54 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style55 {
            font-size: large;
        }
        .auto-style56 {
            width: 100%;
            height: 219px;
        }
        .auto-style57 {
            font-size: 13pt;
        }
        .auto-style58 {
            color: #FFFFFF;
            width: 440px;
            text-align: right;
            font-size: 13pt;
        }
        .auto-style59 {
            color: #FFFFFF;
            width: 440px;
            text-align: center;
            background-color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style56">
        <tr>
            <td class="auto-style49" colspan="2"><strong>Kullanıcı Girişi</strong></td>
        </tr>
        <tr>
            <td class="auto-style53"><span class="auto-style57"><strong>Kullanıcı Adı:</strong></span> </td>
            <td class="auto-style52">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style58"><strong>Şifre:</strong></td>
            <td class="auto-style52">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Height="25px" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style59">
                <asp:Label ID="Label6" runat="server" CssClass="auto-style54"></asp:Label>
            </td>
            <td class="auto-style52">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style55" Height="39px" OnClick="Button1_Click" Text="Giriş Yap!" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>
