<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="MyProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .button
        {
            border-radius:50px;
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
        <div style="background-color: #0033CC; font-size: 30px; text-align: center; color: #FFFFFF;">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            If you want to download your certificate ,<br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" Target="_blank" NavigateUrl="~/PDF/Pcc.pdf">Click Here</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:Button ID="d_back" CssClass="button" Font-Size="20" runat="server" Height="50px" Text="Back" Width="150px" OnClick="d_back_Click" />
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
