<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="duyuru.aspx.cs" Inherits="site_3.duyuru" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="3">
                    <ItemTemplate>
                        <table class="auto-style5" style="color: #FFFFFF; height: 273px; width: 97%">
                            <tr>
                                <td class="auto-style48">
                                <a href="duyurudetay.aspx?duyuruid=<%#Eval("duyuruid") %>" > <asp:Label ID="Label4" runat="server" style="color:white" Text='<%# Eval("baslik") %>'></asp:Label></a>
                                    <asp:Image ID="Image1" runat="server" Height="500px" Width="375px" ImageUrl='<%# Eval("gorsel") %>' />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemTemplate>
                    </SelectedItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
