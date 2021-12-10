<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ZoneList.aspx.cs" Inherits="DC.ZoneList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  style="border-style: solid; border-width: medium; width:98%; margin:20px; border-radius:10px;height:100%" >
 <tr>
 <td style="font-size: 40px; font-weight: bold; color: #CCCCCC; text-align: center;border-radius:5px;background: linear-gradient(to right, #52c234, #061700);" >Zone List</td>
 </tr>
 <tr>
 <td style="background: linear-gradient(to right, #4ac29a, #bdfff3);border-radius:5px">
     <asp:GridView ID="GridView1" runat="server" Width="100%" RowStyle-HorizontalAlign="Center" GridLines="None" Font-Bold="True" Font-Size="X-Large"> 
     <HeaderStyle BackColor="lightgrey" ForeColor="#CC6699" />
<RowStyle HorizontalAlign="Center" ForeColor="White" ></RowStyle>
</asp:GridView>
 </td>
 </tr>
 </table>
</asp:Content>
