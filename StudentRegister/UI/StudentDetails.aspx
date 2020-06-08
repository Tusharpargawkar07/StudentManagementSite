<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master Layout/Site.Master" CodeBehind="StudentDetails.aspx.cs" Inherits="CRUDOperationWebApp.StudentDetails" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
        <div class="container">
            <div class="container-fluid">
                <div class="row"></div>
                <div class="row">
                    <div class="col-sm-8 offset-sm-2">
                        <div class="jumbotron">
                            <table>
                                <tr>
                                    <td>Id : </td>
                                    <td>
                                        <asp:TextBox ID="tboxId" runat="server" CssClass="auto-style1" Width="122px"></asp:TextBox><asp:Button ID="btnGetDataById" runat="server" Text="Get Details By Id" OnClick="btnGetData_Click" class="btn-primary" Width="131px" />
                                        &nbsp;<asp:Button ID="btnGetAllData" runat="server" Text="Get All Student Details" OnClick="btnGetAllData_Click" Width="184px" class="btn-primary" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>First Name : </td>
                                    <td>
                                        <asp:TextBox ID="tboxFName" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Last Name : </td>
                                    <td>
                                        <asp:TextBox ID="tboxLName" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Email : </td>
                                    <td>
                                        <asp:TextBox ID="tboxEmail" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>Gender : </td>
                                    <td>
                                        <asp:TextBox ID="tboxGender" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btnInsertStuDetails" runat="server" Text="Insert Student Details" OnClick="btnInsertDetails_Click" class="btn-primary" />
                                        <asp:Button ID="btnUpdateDetails" runat="server" Text="Update Student Details" OnClick="btnUpdateDetails_Click" class="btn-primary" />
                                        <asp:Button ID="btnDelete" runat="server" Text="Delete Student Record" OnClick="btnDelete_Click" class="btn-primary" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-8 offset-sm-2">  
                    <asp:GridView ID="GridViewStudentDetails" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
                    </div>
            </div>
        </div>
</asp:Content>
