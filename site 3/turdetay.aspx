<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="turdetay.aspx.cs" Inherits="site_3.turdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .abc{
            color:white;
            text-decoration:none;
        }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="3">
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
</asp:Content>
