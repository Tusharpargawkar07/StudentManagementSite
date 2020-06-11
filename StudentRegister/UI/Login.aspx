<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentRegister.UI.Login" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../My%20StyleSheet/StyleSheet.css" rel="stylesheet" />
    <link href="../My%20StyleSheet/LoginPageStyle.css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server">
        <section>
            <img src="../Images/Login Page Img/loginpanel.jpg" class="shadow p-2 mb-5 bg-transparent rounded rounded mb-0" />
        </section>
        <div class="sec2">
            <div class="container">
                <div class="content">
                    <h2>Login</h2>
                    <asp:TextBox ID="tboxUsername" placeholder="Username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UsernameRequiredFieldValidator" runat="server" ErrorMessage="Username is Required." ForeColor="Red" ControlToValidate="tboxUsername"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="tboxPwd" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PwdRequiredFieldValidator" runat="server" ForeColor="Red" ErrorMessage=" Password is Required." ControlToValidate="tboxPwd"></asp:RequiredFieldValidator></td>
                     <br />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-outline-secondary" OnClick="btnLogin_Click" /><br />
                    <asp:Button ID="btnCreateNewAccount" runat="server" Text="Create New Account" class="btn btn-dark" />
                </div>
                <div class="social">
                    <h6 class="padding-left=6vw">Follow Us On : </h6>
                    <a href="https://www.facebook.com">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Login Page Img/facebook.png" /></a>
                    <a href="https://plus.google.com">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Login Page Img/google.png" /></a>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>

<%--   <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>

            <td>
                <asp:TextBox ID="tboxUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UsernameRequiredFieldValidator" runat="server" ErrorMessage="Username is Required." ForeColor="Red" ControlToValidate="tboxUsername"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="tboxPwd" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="PwdRequiredFieldValidator" runat="server"  ForeColor="Red" ErrorMessage=" Password is Required." ControlToValidate="tboxPwd"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnlogin" runat="server" Text="Login" />
                &nbsp;&nbsp;&nbsp;  
                <asp:LinkButton ID="LinkButtonCreateNewRold" runat="server">Create New Role</asp:LinkButton></td>

        </tr>
    </table>--%>

        

