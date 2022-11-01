<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verification.aspx.cs" Inherits="MyProject.verification" %>

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
            width: 306px;
        }
        .auto-style10 {
            width: 528px;
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
                        <asp:Button ID="u_home" runat="server" CssClass="button" Text="Home" Font-Size="20"  OnClick="u_home_Click" />
                        <br />
                        <asp:Button ID="u_fir" CssClass="button" runat="server"  Text="FIR" Font-Size="20"  OnClick="u_fir_Click" />
                        <br />
                        <asp:Button ID="u_verification" CssClass="button" runat="server"  Text="Verification" Font-Size="20"  OnClick="u_verification_Click" />
                        <br />
                        <asp:Button ID="u_login" CssClass="button" runat="server"  Text="Log In" Font-Size="20"  OnClick="u_login_Click" />
                        <br />
                        <asp:Button ID="u_contract" CssClass="button" runat="server"  Text="Contract" Font-Size="20"  OnClick="u_contract_Click" />
                    </td>
                    <td class="auto-style8">It is the online verification page. You can apply for police varification online here.<br />
                        <table align="center" class="auto-style9" style="border: thick solid #FF0000">
                            <tr>
                                <td>Verification Form</td>
                            </tr>
                        </table>
                        <table class="auto-style4" style="text-align: center; border: thick solid #FF0000">
                            <tr>
                                <td>
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="v_name" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="Father's name"></asp:Label>
&nbsp;&nbsp;
                                    <asp:TextBox ID="v_f_name" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text="Nationality"></asp:Label>
&nbsp;&nbsp;
                                    <asp:TextBox ID="v_nationality" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
&nbsp;&nbsp;
                                    <asp:Label ID="Label7" runat="server" Text="Mobile No."></asp:Label>
&nbsp;&nbsp;
                                    <asp:TextBox ID="v_mobile" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label8" runat="server" Text="Area"></asp:Label>
&nbsp;&nbsp;
                                    <asp:TextBox ID="v_area" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style10">&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label3" runat="server" Text="Date of Birth"></asp:Label>
&nbsp;&nbsp;
                                    <asp:TextBox ID="v_date" runat="server" Height="25px" Width="150px" TextMode="Date"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text="Mother's Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="v_m_name" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server" Text="Religion"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="v_religion" runat="server" Height="25px" Width="150px"></asp:TextBox>
&nbsp;&nbsp;<br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="v_nid" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    &nbsp;&nbsp;<br />
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    &nbsp;
                                    <asp:Label ID="image" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Button ID="v_submit" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="5px" Height="50px" Text="Submit" Font-Size="20" Width="150px" OnClick="v_submit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp; To get Verification Certificate click here <asp:Button ID="certificate" runat="server"  CssClass="button" Font-Size="20" Text="certificate" OnClick="certificate_Click" />
                        <br />
                        <br />
                        <asp:Label ID="v_massage" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
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
