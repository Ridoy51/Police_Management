<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FIR.aspx.cs" Inherits="MyProject.FIR" %>

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
            width: 488px;
            height: 216px;
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FIR<br />
            <br />
            <table class="auto-style6" style="border: thick solid #FF0000; text-align: center; font-size: 30px;">
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="u_home" CssClass="button" runat="server" Text="Home" Font-Size="20"  OnClick="u_home_Click" />
                        <br />
                        <asp:Button ID="u_fir" CssClass="button" runat="server" Text="FIR" Font-Size="20" OnClick="u_fir_Click" />
                        <br />
                        <asp:Button ID="u_verification" CssClass="button" runat="server" Text="Verification" Font-Size="20" OnClick="u_verification_Click" />
                        <br />
                        <asp:Button ID="u_login" CssClass="button" runat="server" Text="Log In" Font-Size="20" OnClick="u_login_Click" />
                        <br />
                        <asp:Button ID="u_contract" CssClass="button" runat="server" Text="Contract" Font-Size="20" OnClick="u_contract_Click" />
                    </td>
                    <td class="auto-style8">In this section you can make FIR.<table align="center" class="auto-style9" style="border: medium solid #FF0000">
                        <tr>
                            <td style="background-color: #FF00FF">Your Name&nbsp;&nbsp;
                                <asp:TextBox ID="f_name" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                <br />
                                Mobile No.&nbsp; &nbsp;
                                <asp:TextBox ID="f_mobile" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                <br />
                                Your Thana&nbsp;&nbsp;
                                <asp:TextBox ID="f_thana" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                <br />
                                Decsription&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="f_desc" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="f_submit" runat="server" Height="38px" Text="Submit" Font-Size="20" Width="167px" OnClick="f_submit_Click" />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="f_massage" runat="server"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        </table>
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
