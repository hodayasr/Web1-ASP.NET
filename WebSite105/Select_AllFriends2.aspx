<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>
<%@import Namespace="System.Data" %>
<script runat="server">
    string st = " ";
    public void Page_load()
    {
        string stC = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Documents and Settings\My Documents\הודיה ונונו\WebSite105\App_Data\Db.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(stC);
        string stsql = "select *from TBtofes2";
        SqlDataAdapter datadapter = new SqlDataAdapter(stsql, conn);
        DataSet ds = new DataSet();
        datadapter.Fill(ds);
        DataTable dt = ds.Tables[0];
        StringBuilder htmlstr = new StringBuilder();
        
        htmlstr.Append("<TABLE BORDER=5>");
        htmlstr.Append("<TR bgcolor=pink>");
        htmlstr.Append("<TD>"); htmlstr.Append("Question1"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("Question2"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("Question3"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("Question4"); htmlstr.Append("</TD>");
        htmlstr.Append("<TD>"); htmlstr.Append("Question5"); htmlstr.Append("</TD>");
        
        htmlstr.Append("</TR>");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            htmlstr.Append("<TR>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["Question1"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["Question2"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["Question3"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["Question4"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            htmlstr.Append(dt.Rows[i]["Question5"]); htmlstr.Append("</TD>");
            htmlstr.Append("<TD>");
            
            htmlstr.Append("</TR>"); 
        }
        htmlstr.Append("</TABLE>");
       st = htmlstr.ToString();
        }
</script>
<html ><head>    <title> תוצאות הסקר</title>
    <style type="text/css">
        .style54
        {
            text-align: right;
        }
        .style55
        {
            width: 436px;
        }
        .style56
        {
            width: 380px;
        }
    </style>
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

    <a href="Welcome.html">חזרה לדף הראשי</a>
<br />
     <p>
         &nbsp;</p>

</body>
</html>
