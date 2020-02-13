<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admintur.aspx.cs" Inherits="site_3.admintur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            font-size: 13pt;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            color: #FFFFFF;
            text-align: center;
            font-size: 14pt;
        }
        .auto-style7 {
            width: 150px;
        }
        .auto-style8 {
            width: 718px;
        }
        .auto-style9 {
            color: #FFFFFF;
            width: 464px;
            text-align: right;
            font-size: 13pt;
        }
        .auto-style10 {
            width: 464px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <strong>Tür Listeleme</strong></p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style7"><asp:Label ID="Label1" runat="server" Text='<%# Eval("kategori_ad") %>' CssClass="auto-style4"></asp:Label>
                                </td>
                                <td>
                                    <a href="admintur.aspx?turid=<%#Eval("kategori_id")%>&islem=sil" > 
                                    <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/icon/sil.png" Width="50px" /></a>
                                </td>
                                <td>
                                    <a href="turduzenle.aspx?turid=<%#Eval("kategori_id")%>" >
                                    <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icon/update.png" Width="50px" /></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6" colspan="2"><strong>Yeni Kayıt</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong>Tür Adı:</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">&nbsp;</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="2">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/icon/ekle.png" Width="50px" OnClick="ImageButton1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
