<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>
<%@import Namespace="System.Data" %>
<script runat="server">
    string st = " ";
    public void Page_load()
    {
        string stC = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Documents and Settings\My Documents\הודיה ונונו\WebSite105\App_Data\Db.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(stC);
        string name = Request.Form["name"];
        string stsql = "select *from TBtofes1 where firstname='" + name + "'";
        SqlDataAdapter datadapter = new SqlDataAdapter(stsql, conn);
        DataSet ds = new DataSet();
        datadapter.Fill(ds);
        DataTable dt = ds.Tables[0];
        StringBuilder htmlstr = new StringBuilder();

        htmlstr.Append("<TABLE BORDER=5>");
        htmlstr.Append("<TR bgcolor=pink>");
        htmlstr.Append("<TD>"); htmlstr.Append("firstname"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("lastname"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("street"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("numhome"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("city"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("mean"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("email"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("thomeem"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("pelephon"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("telephon"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("TZ"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("nums' Enter"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("new/old"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("Kind"); htmlstr.Append("</TD>");
        htmlstr.Append("</TR>");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            htmlstr.Append("<TR>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["firstname"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["lastname"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["srteet"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["numhome"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["city"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["mean"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["email"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["thomeem"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["pelephon"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["telephon"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["TZ"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["countinsert"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["status"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["USER1"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append("</TR>");
        }
        htmlstr.Append("</TABLE>");
        st = htmlstr.ToString();
    }
</script>
<html ><head>    <title>חיפוש לפי שם פרטי</title>
</head> 
 <body background="236.JPG"  >
    <%=st %>
    
<SCRIPT language="VBScript">
      <!--
      dim MoveItX, MoveItY, mnumfond
      MoveItY=0
      MoveItX=0
      numfond=document.body.sourceIndex
      SUB SF
      MoveItY=MoveItY-1
      MoveItX=MoveItX+2
      Document.all(numfond).style.BackgroundPosition= MoveItX & " " & MoveItY
      id=SetTimeOut("SF",100,"VBScript")
      End Sub
      SF
      --> </SCRIPT>



</body>
</html>

