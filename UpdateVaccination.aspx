<%@ Page Title="" Language="C#" MasterPageFile="~/Zone.Master" AutoEventWireup="true" CodeBehind="UpdateVaccination.aspx.cs" Inherits="DC.UpdateVaccination" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border-style: solid; border-width: medium; width:98%; margin:20px; border-radius:10px;height:100%">
 <tr >
 <td  colspan="2" style="font-size: 40px; font-weight: bold; color: white; text-align: center;border-radius:5px ;  
 background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD 51%, #4CB8C4 100%);" class="auto-style4" >Update Person Vaccination Details</td>
 </tr>
 <tr>
 <td style="text-align: center ;font-size:xx-large;font-weight:500" class="auto-style2" >Booking ID</td>
 <td >
 <asp:TextBox ID="TextBox1" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Person NAME</td>
 <td>
 <asp:TextBox ID="TextBox2" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2">Email Id</td>
 <td >
 <asp:TextBox ID="TextBox3" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style5" >Aadhar No</td>
 <td >
 <asp:TextBox ID="TextBox4" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Vaccine Name</td>
 <td >
 <asp:TextBox ID="TextBox5" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Date of Vaccination</td>
 <td >
 <asp:TextBox type="date" ID="TextBox6" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td colspan="2" style="text-align: center">
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE & UPDATE"
style="font-weight: 700; width:40%; height:40px; font-size:x-large;color: white;background-image: linear-gradient(to right, #1CD8D2 0%, #93EDC7  51%, #1CD8D2  100%);border-radius:10px;" />
 <asp:Label ID="Label2" runat="server"></asp:Label>
 </td>
 </tr>
 <tr>
 <td class="auto-style2">&nbsp;</td>
 <td>&nbsp;</td>
 </tr>
</table>
</asp:Content>
