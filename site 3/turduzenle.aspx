<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="turduzenle.aspx.cs" Inherits="site_3.turduzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">Tür Id:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Tür Adı:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/icon/save.png" OnClick="ImageButton1_Click" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>
