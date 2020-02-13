<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminresim.aspx.cs" Inherits="site_3.adminresim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            margin-right: 9px;
        }
        .auto-style4 {
            width: 437px;
        }
        .auto-style5 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="300px" />
&nbsp; <strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="30px" OnClick="Button1_Click" Text="Tamam" Width="125px" />
                </strong>&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="30px" OnClick="Button2_Click" Text="Sil" Width="125px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="<%# Container.DataItem %>" Width="400px" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
