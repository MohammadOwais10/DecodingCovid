<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DC.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="ContactStyle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1 class="title">
      Contact Us
    </h1>
        
     <div class="wrapper">
         <div class="pic">
        <img src="images/contact.png">
    </div>
    <div class="details">

  <div id="contact-container">
      <h2>Connect with us</h2>
      <div class="phonemail">
          <h3> <i class="fas fa-phone-square-alt"></i> Phone No. - 011 27 1345</h3>
          <h3><i class="fas fa-envelope"></i> Mail Id - decodingcovid@dc.com</h3>
      </div>
      <br /><br />
   <h2 class="title-section">Follow Us</h2> 
   <!--SOCIAL-ICON------->
    <div class="social">
      <ul >
          <li>
              <a href="https://www.instagram.com/accounts/login/">
                <i class="fab fa-instagram"></i>
              </a>
          </li>
          <li>
              <a href="https://twitter.com/login?lang=en">
                <i class="fab fa-twitter"></i>
              </a>
          </li>
          <li>
              <a href="https://www.youtube.com/">
                <i class="fab fa-youtube"></i>
             
              </a>
          </li>
          <li>
              <a href="https://www.facebook.com/">
                  <i class="fab fa-facebook-f"></i>
              </a>
          </li>
          <li>
              <a href="https://accounts.snapchat.com/accounts/login?continue=https%3A%2F%2Faccounts.snapchat.com%2Faccounts%2Fwelcome">
                <i class="fab fa-snapchat-ghost"></i>
              </a>
          </li>
        </ul>
  </div>
      <br /><br />
  <!--SUBSCRIBES-PART-->
       <div>
        <h2>Get Updates</h2>
          <p>Our mailing list to stay in the loop!</p>
          <input  name="input-email" type="text" class="mail" required placeholder="Email Id"><br />
         <button class="sub-btn" type="submit">Subscribe</button>
     </div>
      <br /><br />
     <!-----FEEDBACK-PART---->
      <div id="feedback">
        <h2>Feedback</h2>
          <form id="feedback-form">
              <input class="mail" name="input-email" type="text" required placeholder="Email Id"><br>
              <textarea id="input-message" name="input-message" rows="1" cols=22 placeholder="Message"></textarea><br>
              <button class="sub-btn" type="submit">Submit</button>
          </form>
      </div>
    </div>


        </div>
    </div>
</asp:Content>
