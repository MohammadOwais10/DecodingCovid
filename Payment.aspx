<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="DC.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="PaymentStyle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="details" id="details">

        <h1 class="title">PAYMENT
        </h1>
        <div class="wrapper">
            <div class="pic">
                <img src="images/payment.png">
            </div>
            <div class="form">


                <table style="width: 100%; height: 350px; margin-top: 00px">
                    <tr>
                        <td style="width: 350px; font-size: 2.5rem; font-weight: 600">Payement Id</td>
                        <td style="font-size: 2rem; font-weight: 500; margin-left: 550px">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 350px; font-size: 2.5rem; font-weight: 600">Payement Date</td>
                        <td style="font-size: 2rem; font-weight: 500">
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 350px; font-size: 2.5rem; font-weight: 600">Payement Mode</td>
                        <td style="font-size: 2rem; font-weight: 500">
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="COD" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" Width="100%" Style="font-weight: 700">
                                <Columns>
                                    <asp:BoundField DataField="VaccinePrice" HeaderText="Vaccine Price">
                                        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" Height="55px" Font-Size="X-Large" />
                                        <FooterStyle Font-Bold="True" Font-Size="X-Large" />

                                    </asp:BoundField>
                                    <asp:BoundField DataField="VaccinationCharge" HeaderText="Vaccination Charge">
                                        <HeaderStyle Font-Size="X-Large" HorizontalAlign="Left" />
                                        <ControlStyle Font-Bold="True" Font-Italic="False" Font-Size="X-Large" />
                                        <ItemStyle HorizontalAlign="Left" Height="55px" Font-Size="X-Large" />
                                    </asp:BoundField>
                                </Columns>
                                <FooterStyle Font-Size="X-Large" HorizontalAlign="Left" />
                            </asp:GridView>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <br />
                            <div class="inputfield">
                                <asp:Button ID="Button1" runat="server" Text="PAY NOW" OnClick="Button1_Click" class="btn" />
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
