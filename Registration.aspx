<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="DC.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="RegistrationStyle.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="title">Registration Form
    </h1>
    <div class="wrapper">
        <div class="pic">
            <img src="images/Register (4).png">
        </div>
        <div class="form">
            <div class="inputfield">
                <label>Name</label>
                <asp:TextBox type="text" class="input" runat="server" ID="TextBox1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="TextBox1" ErrorMessage="Enter Your Name" ForeColor="Red"
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="inputfield">
                <label>Email Address</label>
                <asp:TextBox type="text" class="input" runat="server" ID="TextBox2"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                    runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Email Id"
                    ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-
.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div class="inputfield">
                <label>Date of Birth</label>
                <asp:TextBox type="date" class="input" runat="server" ID="TextBox3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="TextBox3" ErrorMessage="DOB Cann't be Blank" ForeColor="Red"
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="inputfield">
                <label>Gender</label>
                <div class="custom_select">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="">Select Any One</asp:ListItem>
                        <asp:ListItem Value="male">Male</asp:ListItem>
                        <asp:ListItem Value="female">Female</asp:ListItem>
                        <asp:ListItem Value="other">Other</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="DropDownList1" ErrorMessage="Select Any One" ForeColor="Red"
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="inputfield">
                <label>Phone Number</label>
                <asp:TextBox type="tel" class="input" runat="server" ID="TextBox4" MaxLength="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server"
                    ControlToValidate="TextBox4" ErrorMessage="Invalid Mobile No" ForeColor="Red" SetFocusOnError="True"
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>

            <div class="inputfield">
                <label>Address</label>
                <asp:TextBox type="textarea" class="textarea" runat="server" ID="TextBox5"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ControlToValidate="TextBox5" ErrorMessage="Address Cann't be Blank" ForeColor="Red"
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="inputfield">
                <label>Postal Code</label>
                <asp:TextBox type="tel" inputmode="numeric" MaxLength="6" class="input" runat="server" ID="TextBox6"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ControlToValidate="TextBox6" ErrorMessage="Invalid Pin Code" ForeColor="Red" SetFocusOnError="True"
                    ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
            </div>
            <div class="inputfield">
                <label>Password</label>
                <asp:TextBox type="password" class="input" runat="server" ID="TextBox7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ControlToValidate="TextBox7" ErrorMessage="Enter Password" ForeColor="Red"
                    SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="inputfield">
                <label>Confirm Password</label>
                <asp:TextBox type="password" class="input" runat="server" ID="TextBox8"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server"
                    ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Password Doesn't match"
                    ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </div>

            <div class="inputfield terms">
                <label class="check">
                    <input type="checkbox">
                    <span class="checkmark"></span>
                </label>
                <p>Agreed to terms and conditions</p>
            </div>
            <div class="inputfield">
                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" class="btn" />
                <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="red"></asp:Label>
            </div>

        </div>

    </div>

</asp:Content>