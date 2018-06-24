<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>
<%@import Namespace="System.Data"%>

<script runat="server">
    string st = " ";
    public void Page_load()
    {    
          string stC = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Documents and Settings\My Documents\הודיה ונונו\WebSite105\App_Data\Db.mdf;Integrated Security=True;User Instance=True"; 
        SqlConnection conn = new SqlConnection(stC);
        string stsql = "select *from TBtofes1";
        SqlDataAdapter datadapter = new SqlDataAdapter(stsql, conn);
        DataSet ds = new DataSet();
        datadapter.Fill(ds);
        DataTable dt = ds.Tables[0];
        StringBuilder htmlstr = new StringBuilder();
        htmlstr.Append("<TABLE BORDER=5>");
        htmlstr.Append("<TR>");
        htmlstr.Append("<TD>"); htmlstr.Append("name"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("lastname"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("street"); htmlstr.Append("</TD>");
        htmlstr.Append("</TR>");
        for (int i = 0; i < dt.Rows.Count; i++)
        {   htmlstr.Append("<TR>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["name"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["lastname"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["street"]); htmlstr.Append("</TD>");
            htmlstr.Append("</TR>");
        }
        htmlstr.Append("</TABLE>");
       st = htmlstr.ToString();
        }
</script>
<html ><head>    <title></title>
</head>  <body>
    <%=st %>
</body></html>

