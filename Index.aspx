<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="DC.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- custom css file link  -->
    <link rel="stylesheet" href="IndexStyle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <tr>
        <td>
            <!-- header section starts  -->
            <div id="shortway">
                <a href="#prevent">Prevent</a>
                <a href="#symptoms">Symptoms</a>
                <a href="#precautions">Precautions</a>
                <a href="#doctor">Doctor</a>
                <a href="#hand-wash">Hand Wash</a>
            </div>
            <!-- home section starts  -->

            <section class="home" id="home">

                <div class="content">
                    <h1>Time To Vaccinate</h1>
                    <h3>Guard yourself and loved ones </h3>
                    <a href="Registration.aspx" class="btn">Register</a>
                </div>

            </section>

            <!-- home section ends -->

            <!-- prevent section starts  -->

            <section class="prevent" id="prevent">

                <h1 class="heading">How To Prevent Virus </h1>

                <div class="box-container">

                    <div class="box">
                        <img src="images/pre-1.png" alt="">
                        <h3>Clean Your Place</h3>
                        <p>Clean high touch surfaces regularly or as needed and after you have visitors in your home. This includes tables, doorknobs, light switches, countertops, handles, desks, phones, keyboards, toilets, faucets, and sinks.</p>
                    </div>

                    <div class="box">
                        <img src="images/pre-2.png" alt="">
                        <h3>Maintain Distance</h3>
                        <p>Avoid close contact with people who are sick.Stay at least 6 feet (about 2 arm lengths) from other people, especially if you are at higher risk of getting very sick.</p>
                    </div>

                    <div class="box">
                        <img src="images/pre-3.png" alt="">
                        <h3>Don't Touch Face</h3>
                        <p>t is estimated that people touch their face about 23 times per hour! Respiratory infections can be caused by many different bacteria and viruses, including the virus that causes COVID-19. When you touch your face, the germs on your hands can take up residence in your mucous membranes and cause infections.</p>
                    </div>

                    <div class="box">
                        <img src="images/pre-4.png" alt="">
                        <h3>Wash Your Hand</h3>
                        <p>Wash your hands often with soap and water for at least 20 seconds especially after you have been in a public place, or after blowing your nose, coughing, or sneezing.</p>
                    </div>

                    <div class="box">
                        <img src="images/pre-5.png" alt="">
                        <h3>Use Napkin</h3>
                        <p>Always cover your mouth and nose with a tissue when you cough or sneeze, or use the inside of your elbow and do not spit.</p>
                    </div>

                    <div class="box">
                        <img src="images/pre-6.png" alt="">
                        <h3>Wear a Mask</h3>
                        <p>Wearing a mask over your nose and mouth is required.Wear one disposable mask underneath a cloth mask that has multiple layers of fabric.</p>
                    </div>

                </div>

            </section>

            <!-- prevent section ends -->

            <!-- symptoms section starts  -->

            <section class="symptoms" id="symptoms">

                <h1 class="heading">Covid-19 Symptoms</h1>

                <div class="column">

                    <div class="main-image">
                        <img src="images/main-symp-img2.png" alt="">
                    </div>

                    <div class="box-container">

                        <div class="box">
                            <img src="images/symp-a.png" alt="">
                            <h3>dry cough</h3>
                        </div>

                        <div class="box">
                            <img src="images/symp-b.png" alt="">
                            <h3>sore throat</h3>
                        </div>

                        <div class="box">
                            <img src="images/symp-c.png" alt="">
                            <h3>cold</h3>
                        </div>

                        <div class="box">
                            <img src="images/symp-d.png" alt="">
                            <h3>fever</h3>
                        </div>

                        <div class="box">
                            <img src="images/symp-e.png" alt="">
                            <h3>headache</h3>
                        </div>

                        <div class="box">
                            <img src="images/symp-f.png" alt="">
                            <h3>vomiting</h3>
                        </div>

                    </div>

                </div>

            </section>

            <!-- symptoms section ends -->

            <!-- precautions section starts  -->

            <section class="precautions" id="precautions">

                <h1 class="heading">Take Precautions Against Covid-19</h1>

                <div class="column">

                    <div class="box-container">

                        <h3 class="title">Things You Should DO</h3>

                        <div class="box">
                            <img src="images/do-img1.png" alt="">
                            <div class="info">
                                <h3>Wash Your Hand</h3>
                                <p>Wash your hands often with soap and water for at least 20 seconds especially after you have been in a public place, or after blowing your nose, coughing, or sneezing.</p>
                            </div>
                        </div>

                        <div class="box">
                            <img src="images/do-img2.png" alt="">
                            <div class="info">
                                <h3>Always Wear a Mask</h3>
                                <p>Wearing a mask over your nose and mouth is required.Wear one disposable mask underneath a cloth mask that has multiple layers of fabric.</p>
                            </div>
                        </div>

                        <div class="box">
                            <img src="images/do-img3.png" alt="">
                            <div class="info">
                                <h3>Stay Home During Fever</h3>
                                <p>
                                    Can people with mild COVID-19 symptoms recover at home?
People with mild symptoms who are otherwise healthy should manage their symptoms at home. On average it takes 5–6 days from when someone is infected with the virus for symptoms to show.
                                </p>
                            </div>
                        </div>

                    </div>

                    <div class="box-container">

                        <h3 class="title">Things You Should NOT DO</h3>

                        <div class="box">
                            <img src="images/avoidface.jpg" alt="">
                            <div class="info">
                                <h3>Touch Your Face</h3>
                                <p>Avoid touching your eyes, nose, and mouth. Never touch your face with dirty hands.When you touch your face, the germs on your hands can take up residence in your mucous membranes and cause infections.</p>
                            </div>
                        </div>

                        <div class="box">
                            <img src="images/avoidcontact.jpg" alt="">
                            <div class="info">
                                <h3>Close Contact With Peoples</h3>
                                <p>Avoid close contact with people who are sick.Stay at least 6 feet (about 2 arm lengths) from other people, especially if you are at higher risk of getting very sick.</p>
                            </div>
                        </div>

                        <div class="box">
                            <img src="images/avoidcrowd.jpg" alt="">
                            <div class="info">
                                <h3>Crowded Area</h3>
                                <p>It is essential that people follow safety precautions when they are outdoors and avoid crowded places.Although there is a strong inclination to avoid crowded places during the COVID-19</p>
                            </div>
                        </div>

                    </div>

                </div>

            </section>

            <!-- precautions section ends -->

            <!-- doctor section start  -->

            <section class="doctor" id="doctor">

                <h1 class="heading">Consult To Our Doctors</h1>

                <div class="box-container">

                    <div class="box">
                        <img src="images/dr1a.png" alt="">
                        <h3>Dr.Rajan</h3>
                        <span>Senior Expert</span>
                        <div class="share">
                            <a href="#" class="fab fa-whatsapp"></a>
                            <a href="#" class="fab fa-facebook-f"></a>
                            <a href="#" class="fab fa-twitter"></a>
                            <a href="#" class="fab fa-instagram"></a>
                            <a href="#" class="fab fa-linkedin"></a>
                        </div>
                    </div>

                    <div class="box">
                        <img src="images/dr2a.png" alt="">
                        <h3>Dr.Himani</h3>
                        <span>Senior Expert</span>
                        <div class="share">
                            <a href="#" class="fab fa-whatsapp"></a>
                            <a href="#" class="fab fa-facebook-f"></a>
                            <a href="#" class="fab fa-twitter"></a>
                            <a href="#" class="fab fa-instagram"></a>
                            <a href="#" class="fab fa-linkedin"></a>
                        </div>
                    </div>

                    <div class="box">
                        <img src="images/dr3a.png" alt="">
                        <h3>Miss Preet</h3>
                        <span>Junior Expert</span>
                        <div class="share">
                            <a href="#" class="fab fa-whatsapp"></a>
                            <a href="#" class="fab fa-facebook-f"></a>
                            <a href="#" class="fab fa-twitter"></a>
                            <a href="#" class="fab fa-instagram"></a>
                            <a href="#" class="fab fa-linkedin"></a>
                        </div>
                    </div>

                </div>

            </section>

            <!-- doctor section ends -->

            <!-- hand-wash section starts  -->

            <section class="hand-wash" id="hand-wash">

                <h1 class="heading">How To Wash Hand Properly</h1>

                <div class="column">

                    <div class="box-container">

                        <div class="box">
                            <img src="images/wash-1.png" alt="">
                            <h3>water and soap</h3>
                        </div>

                        <div class="box">
                            <img src="images/wash-2.png" alt="">
                            <h3>palm to palm</h3>
                        </div>

                        <div class="box">
                            <img src="images/wash-3.png" alt="">
                            <h3>Between Fingurs</h3>
                        </div>

                        <div class="box">
                            <img src="images/wash-4.png" alt="">
                            <h3>Focus on Thumbs</h3>
                        </div>

                        <div class="box">
                            <img src="images/wash-5.png" alt="">
                            <h3>Back of Hands</h3>
                        </div>

                        <div class="box">
                            <img src="images/wash-6.png" alt="">
                            <h3>Focus on wrist</h3>
                        </div>

                    </div>

                    <div class="main-image">
                        <img src="images/HandWash.png" alt="">
                    </div>

                </div>

            </section>

            <!-- hand-wash section ends -->

            <!-- footer section starts  -->

            <div class="footer">

                <div class="box-container">

                    <div class="box">
                        <h3>About us</h3>
                        <p>
                            Decoding Covid application is the digital back bone for the vaccination drive in India.
                With scaling up of vaccination; the number of vaccination facilities and sessions has to be increased and managed effectively. 
                The Decoding Covid application will facilitate the citizen with an option to register and schedule the vaccination session at 
                their according to time and date of their choice.
                        </p>
                    </div>

                    <div class="box">
                        <h3>Locations</h3>
                        <a href="#">India</a>
                        <a href="#">USA</a>
                        <a href="#">France</a>
                        <a href="#">Russia</a>
                        <a href="#">Japan</a>
                    </div>

                    <div class="box">
                        <h3>Quick Links</h3>
                        <a href="#">Home</a>
                        <a href="#prevent">Prevent</a>
                        <a href="#symptoms">Symptoms</a>
                        <a href="#precautions">Precautions</a>
                        <a href="#doctor">Doctor</a>
                        <a href="#hand-wash</">Hand-wash</a>
                    </div>

                    <div class="box">
                        <h3>Follow us</h3>
                        <a href="#">Facebook</a>
                        <a href="#">Twitter</a>
                        <a href="#">Instagram</a>
                        <a href="#">Linkedin</a>
                        <a href="#">Youtube</a>
                    </div>


                    <!-- footer section ends -->

                    <!-- scroll top  -->
                </div>
                <a href="#home" class="scroll-top">
                    <img src="images/scroll-img.png" alt="">
                </a>
            </div>
        </td>
    </tr>

</asp:Content>
