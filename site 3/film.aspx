<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="film.aspx.cs" Inherits="site_3.film" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style49 {
            color: #FFFFFF;
        }
        .abc{
            color:white;
            text-decoration:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" CssClass="auto-style49">
                    <ItemTemplate>
                        <table class="auto-style5">
                            <tr>
                                <td>
                                    <a class="abc" href="filmdetay.aspx?film_id=<%#Eval("film_id") %>">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("filmadi") %>'></asp:Label>
                                        </a>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a class="abc" href="filmdetay.aspx?film_id=<%#Eval("film_id") %>">
                                    <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl='<%# Eval("afis") %>' Width="400px" />
                                        </a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
