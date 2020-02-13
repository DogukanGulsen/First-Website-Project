<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="duyurudetay.aspx.cs" Inherits="site_3.duyurudetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style51 {
            color: #FFFFFF;
        }
        .auto-style52 {
            font-size: 14pt;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="1">
                    <ItemTemplate>
                        <table class="auto-style5">
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="500px" Width="400px" ImageUrl='<%# Eval("gorsel") %>' />
                                </td>
                                <td class="auto-style52" style="vertical-align:top">
                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style52" Text='<%# Eval("baslik") %>'></asp:Label>
                                    <br class="auto-style51" />
                                    <asp:Label ID="Label5" runat="server" CssClass="auto-style52" Text='<%# Eval("icerik") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
