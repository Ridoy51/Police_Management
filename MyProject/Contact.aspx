<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MyProject.Contact" %>

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
            width: 1313px;
            height: 182px;
        }
        .auto-style7 {
            width: 256px;
            height: 226px;
        }
        .auto-style8 {
            height: 226px;
        }
        .auto-style9 {
            width: 398px;
            height: 125px;
        }
        .auto-style10 {
            width: 1312px;
            height: 234px;
        }
        .button
        {
            border-radius:50px;
            height:60px;
            width:260px;
        }
        .button:hover{
            width:300px;
            height:80px;
            background-color:hotpink;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #0000FF; color: #FFFFFF; font-size: 20px;">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome
            <br />
            <br />
            <table class="auto-style6" style="border: thick solid #FF0000; text-align: center; font-size: 30px;">
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="u_home" CssClass="button" runat="server" Text="Home" Font-Size="20" OnClick="u_home_Click" />
                        <br />
                        <asp:Button ID="u_fir" CssClass="button" runat="server" Text="FIR" Font-Size="20" OnClick="u_fir_Click" />
                        <br />
                        <asp:Button ID="u_verification" CssClass="button" runat="server"  Text="Verification" Font-Size="20" OnClick="u_verification_Click" />
                        <br />
                        <asp:Button ID="u_logout" CssClass="button" runat="server" Text="Log In" Font-Size="20" OnClick="u_logout_Click" />
                        <br />
                        <asp:Button ID="u_contract" CssClass="button" runat="server" Text="Contact" Font-Size="20" OnClick="u_contract_Click" />
                        <br />
                    </td>
                    <td class="auto-style8">If you want to contact your area police,&nbsp;put your area name.<br />
                        <br />
                        <table align="center" class="auto-style9">
                            <tr>
                                <td>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="Area"></asp:Label>
&nbsp;
                                    <asp:TextBox ID="c_area" runat="server" Height="30px" Width="150px"></asp:TextBox>
&nbsp;
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                    <asp:Button ID="c_submit" runat="server" Height="41px" Font-Size="20" Text="Submit" Width="150px" OnClick="c_submit_Click" />
                                    <br />
                                    <asp:Label ID="c_massage" runat="server"></asp:Label>
                                    <br />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>
            <table align="center" class="auto-style10">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" TextAllign="center" ForeColor="White" Height="204px" Width="736px">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
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
