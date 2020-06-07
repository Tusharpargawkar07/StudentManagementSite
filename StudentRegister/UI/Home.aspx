<%@ Page Title="" Language="C#" MasterPageFile="~/Master Layout/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StudentRegister.UI.Home" %>

<asp:Content ID="HomePageContent1" ContentPlaceHolderID="head" runat="server">
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../My%20StyleSheet/StyleSheet.css" rel="stylesheet" />
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
                <img class="d-block w-80" src="../Images/logo/logo.png" width="400px" height="300px" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="../Images/logo/Schoollogo.png" width="400px" height="300px" alt="Second slide">
            </div>
        <%--    <div class="carousel-item">
                <img class="d-block w-100" src="..." alt="Third slide">
            </div>--%>
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

       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
   <%-- <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>--%>
    <script src="../Bootstrap/js/bootstrap.min.js"></script>
   <%-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>--%>
</asp:Content>
