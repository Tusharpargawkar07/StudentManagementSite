<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" MasterPageFile="~/Master Layout/Site.Master"  Inherits="StudentRegister.ErrorPage.ErrorPage" %>

<asp:Content ID="content1" ContentPlaceHolderID="Head" runat="server">

</asp:Content>


<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
        <h1 style="color:red">
           <b>Application Error</b> 
        </h1>
        <h2>
            An unknown Error Occured. we are aware of it and Our Technical Team Working On this issue. for Any Query write us on helpdesk@Myschool.com
        </h2>
    </div>
</asp:Content>