<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MyProject.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 517px;
        }
        .auto-style6 {
            width: 134%;
            align-items: center;
            height: 307px;
        }
        body
        {
            text-align: center;
        }
        
        .auto-style7 {
            width: 399px;
            height: 398px;
            border-radius:50px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #003399; text-align: center; color: #FFFFFF; font-size: 30px;">
            <table align="center" class="auto-style4" style="text-align: center">
                <tr>
                    <td class="auto-style5">
                        <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/images/image1.jpg" Width="650px" />
                    </td>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/images/image3.jpg" Width="650px" />
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Register<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style6" style="text-align: center">
                <tr>
                    <td>
                        <table align="center" class="auto-style7">
                            <tr>
                                <td style="background-color: #FFCC66; color: #000000;">
                                    <asp:Image ID="Image3" runat="server" Height="88px" ImageUrl="~/images/signup.png" />
                                    <br />
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp; E-mail&nbsp;&nbsp;
                                    <asp:TextBox ID="r_email" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
                                    <br />
                                    User Name
                                    <asp:TextBox ID="r_username" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
                                    <br />
&nbsp;&nbsp; Password
                                    <asp:TextBox ID="r_password" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="u_register" runat="server" Font-Size="20" Height="41px" Text="Register" Width="169px" OnClick="u_register_Click" />
                                    <br />
                                    <br />
                                    <asp:Label ID="r_massage" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
