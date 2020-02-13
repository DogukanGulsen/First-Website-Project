<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="filmdetay.aspx.cs" Inherits="site_3.filmdetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style49 {
            width: 85%;
        }
        .auto-style50 {
            color: #FFFFFF;
        }
        .auto-style51 {
            font-size: large;
        }
        .auto-style52 {
            color: #FFFFFF;
        }
        .auto-style53 {
            width: 100%;
            color: #FFFFFF;
        }
        .auto-style54 {
            width: 242px;
            text-align: right;
            height: 29px;
        }
        .auto-style55 {
            width: 244px;
            text-align: right;
        }
        .auto-style57 {
            height: 29px;
            text-align: left;
        }
        .auto-style58 {
            width: 243px;
            text-align: right;
        }
        .auto-style59 {
            text-align: left;
        }
        .auto-style60 {
            color: #000000;
        }
        .auto-style61 {
            width: 159px;
            text-align: left;
        }
        .auto-style62 {
            font-size: large;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style53">
        <tr>
            <td class="auto-style52">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <table class="auto-style49">
                            <tr>
                                <td rowspan="5">
                                    <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl='<%# Eval("afis") %>' Width="400px" />
                                </td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("filmadi") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("yonetmen") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("oyuncular") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("icerik") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("yil") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style50">Yorumlar:</td>
        </tr>
        <tr>
            <td class="auto-style50">
                <asp:DataList ID="DataList3" runat="server">
                    <ItemTemplate>
                        <table class="auto-style5">
                            <tr>
                                <td class="auto-style61">
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("kullanıcı_ad") %>'></asp:Label>
                                    :</td>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("icerik") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style50">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style54">Kullanıcı Adı:</td>
                        <td class="auto-style57">
                <asp:TextBox ID="ad" runat="server" Height="16px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style50">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style55">E-mail:
                </td>
                        <td class="auto-style59">
                <asp:TextBox ID="mail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style50">
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style58">Yorumunuz:
                </td>
                        <td class="auto-style59">
                <asp:TextBox ID="icerik" runat="server" TextMode="MultiLine" CssClass="auto-style60"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style50">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style62" Height="28px" OnClick="Button1_Click" Text="Yorumu Gönder!" Width="149px" />
            </td>
        </tr>
    </table>
</asp:Content>
