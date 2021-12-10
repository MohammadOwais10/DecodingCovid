<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="WhenWhere.aspx.cs" Inherits="DC.WhenWhere" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="WhenWhereStyle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="details" id="details">
     
    <h1 class="title">
      When and Where
    </h1>
     <div class="wrapper">
         <div class="pic">
        <img src="images/when (1).jpg">
    </div>
    <div class="form">
      
        <div class="inputfield">
          <label>Date of Vaccination</label>
         <%-- <input type="date" class="input">--%>
          <asp:TextBox type="date" class="input"  runat="server" ID="TextBox1" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
   ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" ForeColor="Red"
 SetFocusOnError="True"></asp:RequiredFieldValidator>
       </div>     
        <div class="inputfield">
          <label>Time</label>
          <div class="custom_select">
           <%-- <select>
              <option value="">Select</option>
              <option value="male">10am-1pm</option>
              <option value="female">1pm-4pm</option>
               <option value="other">4pm-7pm</option>
            </select>--%>
              <asp:DropDownList ID="DropDownList1" runat="server" > 
              <asp:ListItem  value="">Select</asp:ListItem> 
              <asp:ListItem  value="10am-1pm">10am-1pm</asp:ListItem>   
              <asp:ListItem value="1pm-4pm">1pm-4pm</asp:ListItem>  
              <asp:ListItem value="4pm-7pm">4pm-7pm</asp:ListItem>  
                </asp:DropDownList>  
          </div>
       </div> 
        <div class="inputfield">
          <label>Callable Phone no.</label>
         <%-- <input type="number" class="input">--%>
            <asp:TextBox type="tel" class="input" runat="server" ID="TextBox2" MaxLength="10"  ></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server"  
ControlToValidate="TextBox2" ErrorMessage="Invalid Mobile No"  ForeColor="Red" SetFocusOnError="True"
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
       </div> 
        <div class="inputfield">
          <label>States</label>
          <div class="custom_select">
            <%--<select>
              <option value="">Select</option>
              <option value="dose3">Chennai</option>
              <option value="dose3">Goa</option>
              <option value="dose1">New Delhi</option>
              <option value="dose2">Mumbai</option>
              <option value="dose3">Pune</option>
            </select>--%>
              <asp:DropDownList ID="DropDownList2" runat="server" > 
              <asp:ListItem  value="">Select</asp:ListItem> 
              <asp:ListItem  value="Chennai">Chennai</asp:ListItem>   
              <asp:ListItem value="Goa">Goa</asp:ListItem>  
              <asp:ListItem value="New Delhi">New Delhi</asp:ListItem>  
              <asp:ListItem value="Mumbai">Mumbai</asp:ListItem>  
              <asp:ListItem value="Pune">Pune</asp:ListItem>  
                </asp:DropDownList> 
          </div>
       </div>  
       <div class="inputfield">
         <label>Address</label>
         <asp:TextBox type="textarea" class="textarea" runat="server" ID="TextBox3" ></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
ControlToValidate="TextBox3" ErrorMessage="Address Cann't be Blank" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
       </div> 
            <div class="inputfield">
          <label>City</label>
          <asp:TextBox type="text" class="input"  runat="server" ID="TextBox4" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
  ControlToValidate="TextBox4" ErrorMessage="Enter Your Name" ForeColor="Red"
SetFocusOnError="True"></asp:RequiredFieldValidator>
       </div>
      <div class="inputfield">
          <label>Pin Code</label>
          <asp:TextBox type="tel" inputmode="numeric" maxlength="6"  class="input" runat="server" ID="TextBox5" ></asp:TextBox>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
ControlToValidate="TextBox5" ErrorMessage="Invalid Pin Code"  ForeColor="Red" SetFocusOnError="True"
ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator> 
       </div> 
     
     
        <%--   
     <div class="inputfield">
          <label>Any Member Covid Postive Now</label>
          <div class="custom_select">    
             <input type="radio" value="covaxin">
             <label>Yes</label>
              <input type="radio" value="covaxin">
              <label>No</label>
          </div>
       </div>  

     
      <div class="inputfield terms">
          <label class="check">
            <input type="checkbox">
            <span class="checkmark"></span>
          </label>
          <p>Agreed to terms and conditions</p>
       </div> --%>
      <div class="inputfield">
        <%--<input type="submit" value="Submit" class="btn">--%>
           <asp:Button ID="Button1" runat="server" Text="Book" onClick ="Button1_Click" class="btn" />
    <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="red"></asp:Label>
      </div>
    </div>
          
       </div>	
    </section>

</asp:Content>
