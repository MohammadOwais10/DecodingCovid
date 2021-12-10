<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="PersonalDetails.aspx.cs" Inherits="DC.PersonalDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="PersonalDetailsStyle.css">
     <style type="text/css">
         .auto-style6 {
             margin-right: 0;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="details" id="details">
     
    <h1 class="title">
       <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" OnRowDeleting="GridView1_RowDeleting"  GridLines="None" Font-Size="Large" Height="5px"  Width="100%" CssClass="auto-style6">
            <AlternatingRowStyle BackColor="White"/>
            <Columns>
                <asp:BoundField DataField="SN" HeaderText="SN" />
                <asp:BoundField DataField="VaccineName" HeaderText="Vaccine Name" />
                <asp:ImageField DataImageUrlField="VaccineImage" HeaderText="Vaccine Image" >
                    <ControlStyle Height="50px" Width="50px" />
                </asp:ImageField>
                <asp:BoundField DataField="VaccinePrice" HeaderText="Vaccine Price" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" ShowSelectButton="True" SelectText="" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="Medium" Height="20px" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>--%>
      Personal Details For Vaccination
    </h1>

         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" OnRowDeleting="GridView1_RowDeleting"  GridLines="None" Font-Size="Large"  Height="5px"  Width="100%" CssClass="auto-style6">
            <AlternatingRowStyle BackColor="White"/>
            <Columns>
                <asp:BoundField DataField="SN" HeaderText="SN" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="VaccineName" HeaderText="Vaccine Name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="VaccineImage" HeaderText="Vaccine Image" >
                    <ControlStyle Height="50px" Width="50px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ImageField>
                <asp:BoundField DataField="VaccinePrice" HeaderText="Vaccine Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="VaccinationCharge" HeaderText="Vaccination Charge" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" ShowSelectButton="True" SelectText="" HeaderText="Vaccine Remove" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="Medium" Height="20px" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>

     <div class="wrapper">
         <div class="pic">
        <img src="images/personal.png">
    </div>
    <div class="form">
       <div class="inputfield">
          <label>Name</label>
         <%-- <input type="text" class="input">--%>
           <asp:TextBox type="text" class="input"  runat="server" ID="TextBox1" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
  ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
       </div> 
        <div class="inputfield">
          <label>Date of Birth</label>
            <%-- <input type="date" class="input">--%>
             <asp:TextBox type="date" class="input" runat="server" ID="TextBox2" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
ControlToValidate="TextBox2" ErrorMessage="DOB Cann't be Blank" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>         
       </div>     
        <div class="inputfield">
          <label>Gender</label>
          <div class="custom_select">
            <%--<select>
              <option value="">Select</option>
              <option value="male">Male</option>
              <option value="female">Female</option>
               <option value="other">Other</option>
            </select>--%>
               <asp:DropDownList ID="DropDownList1" runat="server" > 
              <asp:ListItem  value="">Select Any One</asp:ListItem> 
              <asp:ListItem  value="male">Male</asp:ListItem>   
              <asp:ListItem value="female">Female</asp:ListItem>  
              <asp:ListItem value="other">Other</asp:ListItem>  
               </asp:DropDownList>  
          </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
ControlToValidate="DropDownList1" ErrorMessage="Select Any One" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
       </div> 
         <div class="inputfield">
          <label>Aaddhar No.</label>
         <%-- <input type="number" class="input" max="12">--%>
            <asp:TextBox type="tel" class="input" runat="server" ID="TextBox3" MaxLength="12"  ></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server"  
ControlToValidate="TextBox3" ErrorMessage="Invalid Aadhar No"  ForeColor="Red" SetFocusOnError="True"
ValidationExpression="[0-9]{12}"></asp:RegularExpressionValidator>  
       </div>     
      <div class="inputfield">
          <label>Health Deatails</label>
         <%-- <textarea class="textarea"></textarea>--%>
          <asp:TextBox type="textarea" class="textarea" runat="server" ID="TextBox4" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
ControlToValidate="TextBox4" ErrorMessage="Health Details Update Please" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
       </div> 
     
        <div class="inputfield">
          <label>Dose</label>
          <div class="custom_select">
            <%--<select>
              <option value="">Select</option>
              <option value="dose1">Dose 1</option>
              <option value="dose2">Dose 2</option>
               <option value="dose3">Dose 3</option>
            </select>--%>
              <asp:DropDownList ID="DropDownList2" runat="server" > 
              <asp:ListItem  value="">Select Any One</asp:ListItem> 
              <asp:ListItem  value="male">Dose 1</asp:ListItem>   
              <asp:ListItem value="female">Dose 2</asp:ListItem>  
              <asp:ListItem value="other">Dose 3</asp:ListItem>  
               </asp:DropDownList>  
          </div>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
ControlToValidate="DropDownList2" ErrorMessage="Select Any One" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
       </div>  
     <div class="inputfield">
          <label>Any Member Covid Postive Now</label>
          <div class="custom_select">    
             <%--<input type="radio" value="Yes">
             <label>Yes</label>
              <input type="radio" value="No">
              <label>No</label>--%>
              <asp:RadioButtonList ID="RadioButtonList1" runat="server"
RepeatDirection="Horizontal" RepeatLayout="Flow">
 <asp:ListItem>Yes</asp:ListItem>
 <asp:ListItem>No</asp:ListItem>
 </asp:RadioButtonList>
          </div>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
ControlToValidate="TextBox4" ErrorMessage="Please Update" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
       </div>  

     
      <div class="inputfield terms">
          <label class="check">
            <input type="checkbox">
            <span class="checkmark"></span>
          </label>
          <p>Agreed to terms and conditions</p>
       </div> 
      <div class="inputfield">
        <%--<input type="submit" value="Continue" class="btn">--%>
           <asp:Button ID="Button1" runat="server" Text="submit" onClick ="Button1_Click" class="btn" />
    <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="red"></asp:Label>
      </div>
    </div>
          
       </div>	
    </section>

</asp:Content>
