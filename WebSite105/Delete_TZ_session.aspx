<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>
<%@import Namespace="System.Data" %>
<script runat="server">
    string st;
    public void Page_load()
    {
        if ( Session["userId"] == null)
        {
            Response.Redirect("error.htm");
        }
        else
        {
            Response.Redirect("deleteTz.htm");
        }   
    }
    </script>
<html>
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