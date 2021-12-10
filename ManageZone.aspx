<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageZone.aspx.cs" Inherits="DC.ManageZone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">  
        .auto-style2 {
            width: 803px;
        }
        .auto-style4 {
            height: 22px;
            width: 589px;
        }
        .auto-style5 {
            height: 22px;
            width: 803px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="border-style: solid; border-width: medium; width:98%; margin:20px; border-radius:10px;height:100%;background: linear-gradient(to right, #d3cce3, #e9e4f0); ">
 <tr >
 <td  colspan="2" style="font-size: 40px; font-weight: bold; color: white; text-align: center;border-radius:5px ;  
  background: linear-gradient(to right, #03001e, #7303c0, #ec38bc, #fdeff9);" class="auto-style4" >Manage Zone</td>
 </tr>
 <tr>
 <td style="text-align: center ;font-size:xx-large;font-weight:500" class="auto-style2" >Zone ID</td>
 <td >
 <asp:TextBox ID="TextBox1" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Zone NAME</td>
 <td>
 <asp:TextBox ID="TextBox2" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2"  >Email Id</td>
 <td >
 <asp:TextBox ID="TextBox3" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2"  >Phone No</td>
 <td >
 <asp:TextBox ID="TextBox4" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style5" >Zone City</td>
 <td >
 <asp:TextBox ID="TextBox5" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
  <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Zone Pincode</td>
 <td >
 <asp:TextBox ID="TextBox6" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Zone Address</td>
 <td >
 <asp:TextBox ID="TextBox7" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Password</td>
 <td >
 <asp:TextBox ID="TextBox8" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td style="text-align: center;font-size:xx-large;font-weight:500" class="auto-style2" >Confirm Password</td>
 <td >
 <asp:TextBox ID="TextBox9" runat="server" style="width:50%; height:35px"></asp:TextBox>
 </td>
 </tr>

 <tr>
 <td colspan="2" style="text-align: center">
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE & UPDATE"
style="font-weight: 700; width:40%; height:40px; font-size:x-large;color: white; background: linear-gradient(to right, #03001e, #7303c0, #ec38bc, #fdeff9); border-radius:10px;" />
 <asp:Label ID="Label2" runat="server"></asp:Label>
 </td>
 </tr>
 <tr>
 <td class="auto-style2">&nbsp;</td>
 <td>&nbsp;</td>
 </tr>
</table>

</asp:Content>
