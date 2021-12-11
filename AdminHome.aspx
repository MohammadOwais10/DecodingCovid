<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="DC.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style type="text/css">
        .home .overview {
            display: flex;
            align-items: center;
            justify-content: space-evenly;
            flex-wrap: wrap;
            padding: 10px
        }

            .home .overview .boxes {
                width: 26vw;
                height: 22vh;
                background-color: lightgray;
                text-align: center;
                margin: 0.6rem;
                border-radius: 20px;
                padding: 1rem;
            }

                .home .overview .boxes a {
                    text-decoration: none;
                }

                .home .overview .boxes .side {
                    align-items: center;
                    font-size: 1.5rem;
                    color: snow;
                }

        .icon {
            font-size: 3.5rem;
            margin: 0;
            color: snow;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="home">
        <div class="overview">
            <div class="boxes" style="background: linear-gradient(to right, #11998e, #38ef7d);">
                <a href="ManageVaccine.aspx">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-box'></i>
                        </div>
                        <h1>Manage Vaccine</h1>
                    </div>
                </a>
            </div>
            <div class="boxes" style="background: linear-gradient(to right, #00c6ff, #0072ff);">
                <a href="VaccineData.aspx">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-coin-stack'></i>
                        </div>

                        <h1>Vaccine Data</h1>
                    </div>
                </a>
            </div>
            <div class="boxes" style="background: linear-gradient(to right, #ff00cc, #333399);">
                <a href="ManageZone.aspx">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-list-ul'></i>
                        </div>
                        <h1>Manage Zone</h1>
                    </div>
                </a>
            </div>
            <div class="boxes" style="background: linear-gradient(to right, #8e2de2, #4a00e0);">
                <a href="ViewUser.aspx">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-user'></i>
                        </div>
                        <h1>View User</h1>
                    </div>
                </a>
            </div>
            <div class="boxes" style="background: linear-gradient(to right, #52c234, #061700);">
                <a href="ZoneList.aspx">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-list-ul'></i>
                        </div>
                        <h1>Zone List</h1>
                    </div>
                </a>
            </div>
            <div class="boxes" style="background: linear-gradient(to right, #870000, #190a05);">
                <a href="MessageReply.aspx">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-message'></i>
                        </div>
                        <h1>Message</h1>
                    </div>
                </a>
            </div>
            <div class="boxes" style="background: linear-gradient(to right, #e52d27, #b31217);">
                <a href="ManagePayment.aspx">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-money'></i>
                        </div>
                        <h1>Payments</h1>
                    </div>
                </a>
            </div>
            <div class="boxes" style="background: linear-gradient(to right, #e65c00, #f9d423);">
                <a href="#">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-book-alt'></i>
                        </div>
                        <h1>Total Order</h1>
                    </div>
                </a>
            </div>
            <div class="boxes" style="background: linear-gradient(to right, #ec008c, #fc6767);">
                <a href="#">
                    <div class="side">
                        <div class="icon">
                            <i class='bx bx-pie-chart-alt-2'></i>
                        </div>
                        <h1>Manage Stock</h1>
                    </div>
                </a>
            </div>
        </div>
    </div>

</asp:Content>
