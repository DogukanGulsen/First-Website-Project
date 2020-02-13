<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminyorum.aspx.cs" Inherits="site_3.adminyorumaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            font-size: 14pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        Yorum İşlemleri</p>
    <p class="auto-style3">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("icerik") %>'></asp:Label>
                        </td>
                        <td>
                            <a href="adminyorum.aspx?yorumid=<%#Eval("Kimlik")%>&islem=sil" >
                            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/icon/sil.png" Width="50px" /></a>
                        </td>
                        <td>
                            <a href="adminyorum.aspx?yorumid=<%#Eval("Kimlik")%>&islem=onayla" >
                            <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icon/cell-8-0-480.png" Width="50px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
