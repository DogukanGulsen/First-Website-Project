<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="baslikduzenle.aspx.cs" Inherits="site_3.baslikduzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            font-size: 13pt;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            color: #FFFFFF;
            text-align: right;
            width: 81px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"><strong>Başlık Düzenleme</strong></td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">Başlık:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">Link:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7" Height="20px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/icon/update.png" OnClick="ImageButton1_Click" Width="60px" />
            </td>
        </tr>
    </table>
</asp:Content>
