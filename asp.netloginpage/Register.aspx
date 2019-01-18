<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="asp.netloginpage.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="margin:auto;border:5px solid white">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label></td>
            <td>
                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox></td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="LastName"></asp:Label></td>
            <td>
                <asp:TextBox ID="LastName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td>
            <td>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="MobileNumber"></asp:Label></td>
            <td>
                <asp:TextBox ID="MobileNumber" runat="server" TextMode="Number"></asp:TextBox></td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Balance"></asp:Label></td>
            <td>
                <asp:TextBox ID="Balance" runat="server" TextMode="Number" ></asp:TextBox></td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="UserName"></asp:Label></td>
            <td>
                <asp:TextBox ID="UserName" runat="server"></asp:TextBox></td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
            </td>
            <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
    </tr>
                </table>
        </div>
    </form>
</body>
</html>
