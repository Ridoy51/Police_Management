<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verify.aspx.cs" Inherits="MyProject.verify" %>

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
            width: 646px;
            border-color: #FF0000;
        }
        .auto-style10 {
            height: 270px;
            width: 666px;
        }
        .button
        {
            border-radius:50px;
            width:260px;
            height:60px;
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
                        <asp:Button ID="v_home" CssClass="button" runat="server" Text="Home" Font-Size="20" OnClick="v_home_Click" />
                        <br />
                        <asp:Button ID="v_criminal" CssClass="button" runat="server" Text="Criminal" Font-Size="20" OnClick="v_criminal_Click" />
                        <br />
                        <asp:Button ID="v_application" CssClass="button" runat="server" Text="Application" Font-Size="20" OnClick="v_application_Click" />
                        <br />
                        <asp:Button ID="v_verify" CssClass="button" runat="server"  Text="Verify" Font-Size="20" OnClick="v_verify_Click" />
                        <br />
                        <asp:Button ID="v_logout" CssClass="button" runat="server" Text="Log Out" Font-Size="20" OnClick="v_logout_Click" />
                        <br />
                        <asp:Label ID="v_session" CssClass="button" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">This is the section for the police to verify the person who want to take online verification.<br />
                        <table align="center" border="1" class="auto-style9" style="border: medium solid #FF0000">
                            <tr>
                                <td class="auto-style10">
                                    <br />
                                    Name&nbsp;
                                    <asp:TextBox ID="v_name" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile no.&nbsp;
                                    <asp:TextBox ID="v_mobile" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
                                    <br />
                                    NID&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="v_nid" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Area&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="v_area" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                    <br />
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="v_submit" runat="server" Height="40px" Text="Verify" font-size="20" Width="150px" OnClick="v_submit_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="v_see" runat="server" Height="40px" OnClick="v_see_Click" font-size="20"  Text="See All" Width="150px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:Label ID="v_masage" runat="server" Width="500px"></asp:Label>
                    </td>
                </tr>
            </table>
            This is Accessed by&nbsp;
            <asp:Label ID="v_cookie" runat="server"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" Height="207px" Visible="False" Width="729px">
            </asp:GridView>
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
