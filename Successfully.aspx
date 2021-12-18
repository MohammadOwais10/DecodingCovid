<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Successfully.aspx.cs" Inherits="DC.Successfully" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="SuccessfullyStyle.css">
    <style type="text/css">
        .auto-style7 {
            width: 773px;
            height: 19px;
        }

        .auto-style8 {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="details" id="details">

        <h1 class="title">Successfully Book
        </h1>
        <div class="wrapper">
            <div class="form">


                <table style="width: 100%; height: 350px; margin-top: 00px; text-align: center">
                    <tr>
                        <td style="font-size: 2.5rem; font-weight: 600" class="auto-style7">Booking Id</td>
                        <td style="font-size: 3rem; font-weight: 500; text-align: start" class="auto-style8">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: 2.5rem; font-weight: 600" class="auto-style7">Booking Date</td>
                        <td style="font-size: 3rem; font-weight: 500; text-align: start" class="auto-style8">
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img src="images/done.png" style="height: 150px; width: 150px">
                        </td>
                    </tr>


                    <tr>
                        <td colspan="2">
                            <h1 style="font-size: 4.5rem; font-weight: 600">Thank You
                            </h1>
                            <h3 style="font-size: 2.5rem; font-weight: 600">You Successfully Book Your Vaccine
                            </h3>

                            <p style="font-size: 2rem; font-weight: 600">
                                Futher Details Send to your email & mobile no.
                            </p>
                        </td>
                    </tr>


                    <tr>
                        <td colspan="2">
                            <br />
                            <div class="inputfield">
                                <asp:Button ID="Button1" runat="server" Text="Ok & Back" OnClick="Button1_Click" class="btn" />
                                <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="red"></asp:Label>
                            </div>
                            <br />
                        </td>
                    </tr>
                </table>

            </div>

        </div>
    </section>

</asp:Content>
