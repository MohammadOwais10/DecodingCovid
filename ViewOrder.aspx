<%@ Page Title="" Language="C#" MasterPageFile="~/Zone.Master" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="DC.ViewOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table  style="border-style: solid; border-width: medium; width:98%; margin:20px; border-radius:10px;height:100%" >
 <tr>
 <td style="font-size: 40px; font-weight: bold; color: ghostwhite; text-align: center; background: linear-gradient(to right, #aa076b, #61045f);" >Order Details</td>
 </tr>
 <tr>
 <td style="background: linear-gradient(to right, #fbd3e9, #bb377d); border-radius:5px">
     <asp:GridView ID="GridView1" runat="server" Width="100%" RowStyle-HorizontalAlign="Center" GridLines="None" Font-Bold="True" Font-Size="X-Large">
     <HeaderStyle BackColor="lightgrey" ForeColor="#CC6699" />
<RowStyle HorizontalAlign="Center" ForeColor="White" ></RowStyle>
</asp:GridView>
 </td>
 </tr>
 </table>
</asp:Content>
