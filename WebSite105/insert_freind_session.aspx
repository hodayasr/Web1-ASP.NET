<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>
<%@import Namespace="System.Data" %>
<script runat="server">
    string st;
    public void Page_load()
    {
        if (Session["kind"] == "menager" || Session["userId"] == null)
        {
            Response.Redirect("error.htm");
        }
        else
        {
            Response.Redirect("tofes3.htm");
        }   
    }
    </script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
