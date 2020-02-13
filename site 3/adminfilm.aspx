<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminfilm.aspx.cs" Inherits="site_3.adminfilmaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            font-size: 14pt;
        }
        .auto-style4 {
            text-align: justify;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style7 {
            height: 40px;
            text-align: right;
            color: #CCCCCC;
        }
        .auto-style8 {
            width: 158px;
        }
        .auto-style9 {
            color: #FFFFFF;
        }
        .auto-style10 {
            text-align: right;
            color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <strong>Film Listele</strong><table class="auto-style1">
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style8">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("filmadi") %>' CssClass="auto-style9"></asp:Label>
                                    </td>
                                    <td>
                                        <a href="adminfilm.aspx?film_id=<%#Eval("film_id")%>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/icon/sil.png" Width="50px" /></a>
                                    </td>
                                    <td>
                                       <a href="filmduzenle.aspx?filmid=<%#Eval("film_id")%>" >  <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/icon/update.png" Width="50px" /></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Film Adı:</td>
                            <td>
                                <asp:TextBox ID="filmadi" runat="server" Width="224px" Height="25px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">İçerik:</td>
                            <td>
                                <asp:TextBox ID="icerik" runat="server" TextMode="MultiLine" Width="224px" Height="25px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Yönetmen:</td>
                            <td>
                                <asp:TextBox ID="yonetmen" runat="server" Width="224px" Height="25px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Oyuncular:</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="oyuncu" runat="server" TextMode="MultiLine" Width="224px" Height="25px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Yıl:</td>
                            <td>
                                <asp:TextBox ID="yıl" runat="server" Width="224px" Height="25px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Tür:</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="224px" Height="25px">
                                </asp:DropDownList>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Afiş:</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="224px" Height="25px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Afiş2:</td>
                            <td>
                                <asp:FileUpload ID="FileUpload2" runat="server" Width="224px" Height="25px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icon/ekle.png" Width="60px" OnClick="ImageButton1_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
