<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminduyuru.aspx.cs" Inherits="site_3.adminduyuru" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            font-size: 13pt;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style7 {
            width: 737px;
        }
        .auto-style8 {
            color: #FFFFFF;
            width: 464px;
            text-align: right;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <strong>Yorum Onay İşlemleri</strong></p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("baslik") %>' CssClass="auto-style9"></asp:Label>
                        </td>
                        <td>
                            <a href="adminduyuru.aspx?duyuruid=<%#Eval("duyuruid")%>&islem=sil" >
                            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/icon/sil.png" Width="50px" /></a>
                        </td>
                        <td>
                            <a href="duyuruduzenle.aspx?duyuruid=<%#Eval("duyuruid")%>&islem=onayla" >
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
                        <td class="auto-style6" colspan="2">Yeni Kayıt</td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Duyuru Başlık</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">İçerik</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Görsel</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="2">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/icon/ekle.png" OnClick="ImageButton1_Click" Width="50px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
