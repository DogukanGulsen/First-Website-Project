<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminbaslik.aspx.cs" Inherits="site_3.adminbaslik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            font-size: 14pt;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style8 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style9 {
            color: #FFFFFF;
            width: 611px;
            text-align: right;
        }
        .auto-style10 {
            color: #FFFFFF;
            width: 612px;
            text-align: right;
        }
        .auto-style11 {
            width: 100px;
        }
        .auto-style12 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <strong>Menü İşlemleri</strong></p>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style11">
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("baslik") %>'></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text='<%# Eval("linki") %>'></asp:Label>
                                </td>
                                <td>
                                    <a href="adminbaslik.aspx?baslik=<%#Eval("baslik")%>&islem=sil" >
                                    <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/icon/sil.png" Width="50px" />
                                        </a>
                                </td>
                                <td>
                                    <a href="baslikduzenle.aspx?baslik=<%#Eval("baslik")%>" >
                                    <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icon/update.png" Width="50px" />
                                        </a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8"><strong>Yeni Kayıt</strong></td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style9">Başlık:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style10">Link:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="200px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/icon/ekle.png" OnClick="ImageButton1_Click" Width="60px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
