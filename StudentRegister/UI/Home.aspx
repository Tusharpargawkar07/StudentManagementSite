<%@ Page Language="C#" MasterPageFile="~/Master Layout/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StudentRegister.UI.Home" %>

<asp:Content ID="HomePageContent1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="HomePageContent2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div id="Slide" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#Slide" data-slide-to="0" class="active"></li>
            <li data-target="#Slide" data-slide-to="1"></li>
            <li data-target="#Slide" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" height="700px" src="../Images/School Images/Img1.jpg" alt="First slide">
                <div class="carousel-caption">
                    <h1 class="Display-2">Admission Open</h1>
                    <button type="button" class="btn btn-outline-light btn-lg">SEE FACILITY</button>
                    <button type="button" class="btn btn-primary btn-lg">SEE FACILITY</button>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" height="700px" src="../Images/School Images/Img2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" height="700px" src="../Images/School Images/Img3.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#Slide" role="button" data-slide="prev">
            <span class=" carousel-control-prev-icon round" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#Slide" role="button" data-slide="next">
            <span class="carousel-control-next-icon round" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <%--    <section class="panel theme--sandstone" data-type="section" data-modular-content data-js="panel" data-index="19">
        <header style="padding-top: 0px;">
            <h2 class="center" style="margin-bottom: 0px;">Videos</h2>
        </header>
        <div class="panel" data-type="highlights" data-width="full" data-posts-per-row="3" style="background: none; box-shadow: none;">
            <div class="grid-container">



                <div class=''>
                    <figure class="landscape">
                        <iframe width="100%" height="252" src='https://www.youtube.com/embed/fnnNlFc90i8' frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </figure>
                    <h3>Award Winning Video</h3>

                </div>



                <div class=''>
                    <figure class="landscape">
                        <iframe width="100%" height="252" src='https://www.youtube.com/embed/8hKuvTVFNPE' frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </figure>
                    <h3>Pre-School Orientation Session 2020-21</h3>

                </div>



                <div class=''>
                    <figure class="landscape">
                        <iframe width="100%" height="252" src='https://www.youtube.com/embed/wzg_neudoYQ' frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                    </figure>
                    <h3>Orientation Classes VI to VIII Session 2020-21</h3>

                </div>




            </div>
        </div>
        </section>--%>
</asp:Content>
