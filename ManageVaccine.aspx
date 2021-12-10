<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageVaccine.aspx.cs" Inherits="DC.ManageVaccine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">  
        .auto-style2 {
            width: 918px;
        }
        .auto-style4 {
            height: 22px;
            width: 589px;
        }
        .auto-style5 {
            height: 22px;
            width: 918px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table style="border-style: solid; border-width: medium; width:98%; margin:20px; border-radius:10px;height:100%">
 <tr >
 <td  colspan="2" style="font-size: 40px; font-weight: bold; color: white; text-align: center;border-radius:5px ;  
 background-image: linear-gradient(to right, #4CB8C4 0%, #3CD3AD 51%, #4CB8C4 100%);" class="auto-style4" >Add/Update Vaccine Details</td>
 </tr>
 <tr>
 <td style="text-align: center ;font-size:xx-large;font-weight:500" class="auto-style2" >Vaccine ID</td>
 <td >
 <asp:TextBox ID="TextBox1" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Vaccine NAME</td>
 <td>
 <asp:TextBox ID="TextBox2" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2"  >Vaccine PRICE</td>
 <td >
 <asp:TextBox ID="TextBox3" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style5" >Vaccine TYPE</td>
 <td >
 <asp:TextBox ID="TextBox4" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Vaccination Charge</td>
 <td >
 <asp:TextBox ID="TextBox5" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2"  >Vaccine Image</td>
     <td>
 <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
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
