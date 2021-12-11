<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DC.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="LoginStyle.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="baimg">
        <div class="container">
            <div class="login-form">
                <form>
                    <h1>Log In</h1>
                    <hr>
                    <p>Please Enter your Account</p>
                    <label><i class="fas fa-envelope"></i>Email</label>
                    <asp:TextBox type="text" class="input" runat="server" ID="TextBox1"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                        runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Email Id"
                        ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-
.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <label><i class="fas fa-key"></i>Password</label>
                    <asp:TextBox type="password" class="input" runat="server" ID="TextBox2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <br />
                    <button>
                        <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" class="btn" Font />
                    </button>
                    <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="red"></asp:Label>

                    <br />
                    <br />
                    <br />
                    <hr>
                    <p>Click here for</p>
                    <br>
                    <h2 id="btn2">
                        <a href="Registration.aspx">New Registration</a>
                    </h2>
                </form>
            </div>
            <div class="pic">
                <img src="images/login.png">
            </div>
        </div>
    </div>

</asp:Content>
