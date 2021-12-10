<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Complaint.aspx.cs" Inherits="DC.Complaint" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="ComplaintStyle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="details" id="details">
     
    <h1 class="title">
      Complaint
    </h1>
     <div class="wrapper">
         <div class="pic">
        <img src="images/complaint.jpg">
    </div>
    <div class="form">


 <table style="width: 100%; height: 328px;padding:30px">

 <tr>
 <td style="font-size: x-large; width: 434px; height: 69px"><b>Comlaint Date</b></td>
 <td style="height: 69px;font-size: x-large;color:red">
 <asp:Label ID="Label3" runat="server"></asp:Label>
 </td>
</tr>
 <tr>
 <td style="width: 434px; font-size: x-large; height: 43px;"><b>Name</b></td>
 <td style="height: 43px">
 <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="326px" BorderWidth="2px" BorderColor="red" ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
 </td>
 </tr>
       <tr>
 <td style="width: 434px; font-size: x-large; height: 43px;"><b>Booking Id</b></td>
 <td style="height: 43px">
 <asp:TextBox ID="TextBox3" runat="server" Height="38px" Width="326px" BorderWidth="2px" BorderColor="red"></asp:TextBox>
 </td>
       </tr>
 <tr >
 <td style="width: 434px; font-size: x-large"><b>Complaint Message</b></td>
 <td>
 <asp:TextBox ID="TextBox2" runat="server" Height="74px" TextMode="MultiLine" Width="331px" BorderWidth="2px" BorderColor="red"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Complaint message Cann't be Blank" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
 </td>
 </tr>
 <tr>
 <td colspan="2">
     <div class="inputfield">
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn" Text="Register Complaint" />
     </div>
 </td>
 </tr>

 <tr>
 <td colspan="2">
 <asp:Label ID="Label4" runat="server" style="font-weight: 700; font-size: large; color: darkgoldenrod"></asp:Label>
 </td>
 </tr>
 </table>

         </div>
          
       </div>	
    </section>
</asp:Content>
