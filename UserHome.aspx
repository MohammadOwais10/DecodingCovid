<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="DC.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

     .Roundedcorner{
                border-radius:10px;
                margin-bottom:5px;
     }
        .Roundedcorner:hover{
            background-color: black;
        }
        .auto-style3{
           background: linear-gradient(to right, #00c6ff, #0072ff);
        }
       </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"  DataKeyField="VaccineId" DataSourceID="SqlDataSource1" CellPadding="10" RepeatColumns="4"
 CellSpacing="55"     OnItemCommand="DataList1_ItemCommand" 
BorderColor="Black" CssClass="auto-style3" Height="500px" Width="100%" style="margin-top: 145px" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table style="width: 400px; height: 400px; background-color: white;border-radius:10px">
                 <tr>
 <td style="justify-content:center; display: flex;align-items: center;margin:5px" >
     
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("VaccineImage") %>' Height="300px" Width="400px" BorderColor="Black" BorderWidth="0px" CornerRadius="10px" />
            </td>
 </tr>
 <tr>
 <td style="width: 20vw; background-color: white; color: black; Font-Size:0rem;text-align:center ">
 <b>
 <asp:Label ID="Label1" runat="server"
Text="Vaccine Id"  ></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("VaccineId") %>' />
            </b>
     </td>
 </tr>
 <tr>
     <td style="width: 20vw; background-color:white; color: black;Font-Size:2.5rem;text-align:center ;margin:0" >
 <b> Vaccine : 
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("VaccineName") %>' />
           </b>
 </td>
 </tr>
 <tr>
 <td style="width: 20vw; background-color:white; color: black;Font-Size:2rem;text-align:center">
 <b>Allowed : 
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("VaccineType") %>' /> 
           </b>
 </td>
 </tr>
 <tr>
     <td style="width: 400px;  background-color:white; color: black;Font-Size:2rem;text-align:center">
         <b>Vaccine Price : 
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("VaccinePrice") %>' />
           </b>
 </td>
 </tr>
              
               <tr>
     <td style="width: 400PX;  background-color:#b8c6db; color: black;Font-Size:0rem;text-align:center">
         <b>Vaccinnation Charge : 
            <asp:Label ID="Label6" runat="server" Text='<%# Eval("VaccinationCharge") %>' />
           </b>
 </td>
 </tr>


                <tr>
                    <td style="width: 400px; text-align:center ;border-radius:10px" >
                        <b> 
                    <asp:Button ID="Button1" Text="Book Now" runat="server" Font-size="30px" Font-Bold="true" BackColor="#004e92" ForeColor="white"  Height="44px" 
 Width="400px" CommandArgument='<%# Eval("VaccineId")%>'
CommandName="addtocart" CssClass="Roundedcorner" /> 
                        </b>
                    </td>
                    </tr>
             
 </table>
      
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataDictionaryConnectionString3 %>" SelectCommand="SELECT * FROM [VaccineDetails]"></asp:SqlDataSource>
</asp:Content>
