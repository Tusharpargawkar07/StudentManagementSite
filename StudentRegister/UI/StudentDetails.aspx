<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="CRUDOperationWebApp.StudentDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Id : </td>
                    <td>
                        <asp:TextBox ID="tboxId" runat="server"></asp:TextBox><asp:Button ID="btnGetData" runat="server" Text="Get Details" OnClick="btnGetData_Click" /> </td>
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
                        <asp:Button ID="Button1" runat="server" Text="Insert Student Details" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Update Student Details" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="Delete Student Record" OnClick="Button3_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
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
    </form>
</body>
</html>
