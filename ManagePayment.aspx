<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManagePayment.aspx.cs" Inherits="DC.ManagePayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table  style="border-style: solid; border-width: medium; width:98%; margin:20px; border-radius:10px;height:100%" >
 <tr>
 <td style="font-size: 40px; font-weight: bold; color: #CCCCCC; text-align: center;border-radius:5px;  background: linear-gradient(to right, #c31432, #240b36);" >Manage Payment</td>
 </tr>
 <tr>
 <td style="background: linear-gradient(to right, #dae2f8, #d6a4a4);border-radius:5px">
     <asp:GridView ID="GridView1" runat="server" Width="100%" RowStyle-HorizontalAlign="Center" GridLines="None" Font-Bold="True" Font-Size="X-Large"> 
     <HeaderStyle BackColor="lightgrey" ForeColor="#CC6699" />
<RowStyle HorizontalAlign="Center" ForeColor="black" ></RowStyle>
</asp:GridView>
 </td>
 </tr>
 </table>
</asp:Content>
