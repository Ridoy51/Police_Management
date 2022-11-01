<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Application.aspx.cs" Inherits="MyProject.Application" %>

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
    <script type = "text/javascript" >  
    function preventBack() { window.history.forward(); }  
    setTimeout("preventBack()", 0);  
    window.onunload = function () { null };  
    </script>

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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Application
            <br />
            <br />
            <table class="auto-style6" style="border: thick solid #FF0000; text-align: center; font-size: 30px;">
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="u_home" CssClass="button" runat="server" Height="60px" Text="Home" Font-Size="20"  OnClick="u_home_Click" />
                        <br />
                        <asp:Button ID="h_criminal" CssClass="button" runat="server" Text="Criminal" Font-Size="20" OnClick="h_criminal_Click" />
                        <br />
                        <asp:Button ID="h_applicaqtion" CssClass="button" runat="server" Text="Application" Font-Size="20" OnClick="c_criminal_Click" />
                        <br />
                        <asp:Button ID="h_verify" CssClass="button" runat="server" Text="Verify" Font-Size="20" OnClick="h_verify_Click" />
                        <br />
                        <asp:Button ID="h_logout"  CssClass="button" runat="server" Text="Log Out" Font-Size="20" OnClick="h_logout_Click" />
                        <br />
                        <br />
                        <asp:Label ID="a_session" runat="server" Height="50px" Width="260px"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:GridView ID="verification" runat="server" Height="313px" Width="1026px">
                        </asp:GridView>
                        <br />
                        <asp:Button ID="show" CssClass="button" runat="server" Height="50px" Font-Size="20" Text="Show All" Width="250px" OnClick="show_Click" />
                        <br />
                    </td>
                </tr>
            </table>
            This is Accessed by&nbsp;
            <asp:Label ID="a_cookie" runat="server"></asp:Label>
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
