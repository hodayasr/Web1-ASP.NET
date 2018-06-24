<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>
<%@import Namespace="System.Data" %>
<script runat="server">
    string st;
    public void Page_load()
    {
        if (Session["userId"] == null)
        {
            Response.Redirect("Copy of error.htm");
        }
        else
        {
            Session["userId"] = null;
        }   
    }
    </script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>פעולת ההתנתקות עברה בהצלחה</title>
</head>
<body>
כעת אינך מחובר עוד 
<a href="Welcome.html" title="">Home</a>
<a href="Login.html" title="">Login</a>
</body>
</html>
