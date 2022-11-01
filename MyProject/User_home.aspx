<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_home.aspx.cs" Inherits="MyProject.User_home" %>

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
            width: 965px;
            height: 241px;
        }
        .new {
        border-collapse: collapse;
        border-radius: 30px;
        background-color:darkgoldenrod;
        border-style: hidden; 
        box-shadow: 0 0 0 1px #666;
        }
        .auto-style13 {
            width: 339px;
            height: 337px;
        }
        .auto-style14 {
            width: 519px;
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
                        <asp:Button ID="u_verification" CssClass="button" runat="server" Text="Verification" Font-Size="20" OnClick="u_verification_Click" />
                        <br />
                        <asp:Button ID="u_login" CssClass="button" runat="server" Text="Log In" Font-Size="20" OnClick="u_login_Click" />
                        <br />
                        <asp:Button ID="u_contract" CssClass="button" runat="server" Text="Contract" Font-Size="20" OnClick="u_contract_Click" />
                        <br />
                        <br />
                        <asp:Label ID="u_session" runat="server"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style8">&nbsp; <br />
                        <table align="center" class="auto-style9">
                            <tr>
                                <td class="auto-style14" style="border: medium solid #FF0000; text-align: left;">The&nbsp;Bangladesh Police of the&nbsp;People&#39;s Republic of Bangladesh&nbsp;is a&nbsp;law enforcement agency, operating under the&nbsp;Ministry of Home Affairs.[4]&nbsp;It plays a crucial role in maintaining peace, and enforcement of law and order within Bangladesh. Though the police are primarily concerned with the maintenance of law and order and security of persons and property of individuals, they also play a big role in the criminal justice system.[5][6]&nbsp;Bangladesh police played an important role during the Bangladesh&#39;s liberation war.</td>
                                <td>
                                    <table class="new"  >
                                        <tr>
                                            <td style="font-size: 20px" class="auto-style13">Log In(User)<br />
                                                <br />
                                                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
&nbsp;&nbsp;
                                                <asp:TextBox ID="u_username" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                                <br />
                                                <br />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;
                                                <asp:TextBox ID="u_password" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;<asp:Button ID="user_login" runat="server" Font-Size="15" Height="30px" Text="Log In" Width="81px" OnClick="user_login_Click" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="u_logout" runat="server" Font-Size="15" Height="30px" Text="Log Out" Width="81px" OnClick="u_logout_Click" />
                                                <br />
                                                <br />
                                                <asp:Label ID="u_massage" runat="server"></asp:Label>
                                                <br />
                                                <br />
                                                If you have not register,
                                                <asp:HyperLink ID="register" runat="server" NavigateUrl="~/register.aspx">Register</asp:HyperLink>
&nbsp;now.</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
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
