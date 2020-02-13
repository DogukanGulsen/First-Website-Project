<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="site_3.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> 
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate> <asp:Timer ID="Timer1" runat="server" Interval="1500" OnTick="Timer1_Tick"></asp:Timer>
    <table class="auto-style5">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="477px" Width="364px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" ImageUrl="~/icon/geri.png" OnClick="ImageButton4_Click"  />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" ImageUrl="~/icon/newğlay.png" OnClick="ImageButton2_Click"  />
                <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" ImageUrl="~/icon/next.png" OnClick="ImageButton3_Click" />
            </td>
        </tr>
    </table>
         </ContentTemplate>
        </asp:UpdatePanel>
</asp:Content>