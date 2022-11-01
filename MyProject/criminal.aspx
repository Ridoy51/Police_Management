<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="criminal.aspx.cs" Inherits="MyProject.criminal" %>

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
            width: 799px;
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
                        <asp:Button ID="c_home" CssClass="button" runat="server" Text="Home" Font-Size="20" OnClick="c_home_Click" />
                        <br />
                        <asp:Button ID="c_criminal" CssClass="button" runat="server"  Text="Criminal" Font-Size="20" OnClick="c_criminal_Click" />
                        <br />
                        <asp:Button ID="c_application" CssClass="button" runat="server" Text="Application" Font-Size="20"  OnClick="c_application_Click" />
                        <br />
                        <asp:Button ID="c_verify" CssClass="button" runat="server" Height="60px" Text="Verify"  Font-Size="20" Width="260px" OnClick="c_verify_Click" />
                        <br />
                        <asp:Button ID="c_logout" CssClass="button" runat="server" Text="Log Out" Font-Size="20" OnClick="c_logout_Click" />
                        <br />
                        <br />
                        <asp:Label ID="c_session" runat="server" Height="50px" Width="260px"></asp:Label>
                    </td>
                    <td class="auto-style8">This is the criminal control page. You can update the criminal status and also can add a new criminal.<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="update" CssClass="button" Font-Size="20" runat="server" Height="50px" Text="Update" Width="150px" OnClick="update_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Button ID="NewAdd" CssClass="button" Font-Size="20" runat="server" Height="50px" Text="Add New Criminal" Width="224px" OnClick="NewAdd_Click" />
                        <br />
                        <br />
                        <table align="center" class="auto-style9"  style="border: medium solid #FF0000">
                            <tr>
                                <td>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Name" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="c_upadetename" runat="server" Width="162px" Height="25px" Visible="False"></asp:TextBox>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="NID" Visible="False"></asp:Label>
                                    &nbsp;&nbsp; &nbsp;
                                    <asp:TextBox ID="c_updatenid" runat="server" Width="162px" Height="25px" Visible="False"></asp:TextBox>
                                    <br />
&nbsp;<asp:Label ID="Label8" runat="server" Text="Crime ID" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="c_updatecrimeid" runat="server" Width="162px" Height="25px" Visible="False"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Punishment" Visible="False"></asp:Label>
&nbsp;
                                    <asp:TextBox ID="c_updatepunishment" runat="server" Width="162px" Height="25px" Visible="False"></asp:TextBox>
                                    <br />
                                    <br />
&nbsp;<asp:Button ID="finalupdate" runat="server" Height="40px" Font-Size="20" Text="Update" Width="120px" Visible="False" OnClick="finalupdate_Click" />
                                </td>
                                <td>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text="Name" Visible="False"></asp:Label>
                                    &nbsp; <asp:TextBox ID="c_addname" runat="server" Width="162px" Height="25px" Visible="False"></asp:TextBox>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label5" runat="server" Text="NID" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="c_addnid" runat="server" Width="162px" Height="25px" Visible="False"></asp:TextBox>
                                    <br />
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label6" runat="server" Text="Crime ID" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="c_addcrimeid" runat="server" Width="162px" Height="25px" Visible="False"></asp:TextBox>
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="Punishment" Visible="False"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="c_addpunishment" runat="server" Width="162px" Height="25px" Visible="False"></asp:TextBox>
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Add" runat="server"  Height="40px" Text="Add" Width="120px" Font-Size="20" Visible="False" OnClick="Add_Click" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Label ID="c_massage" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            This is Accessed by&nbsp;
            <asp:Label ID="c_cookie" runat="server"></asp:Label>
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
