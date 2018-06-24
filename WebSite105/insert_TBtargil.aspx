<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>

<script runat="server">
    string st = " ";
    public void page_load()
    {
        string stC = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Documents and Settings\My Documents\הודיה ונונו\WebSite105\App_Data\Db.mdf;Integrated Security=True;User Instance=True";
       SqlConnection conn = new SqlConnection(stC);
        string STname = Request.Form["name"];
        string STsisma = Request.Form["Password"];
        string stsql = "insert into TBtargil (firstname,sisma) values ('" + STname + "','" + STsisma+ "')";   
        SqlCommand command = new SqlCommand(stsql, conn);
        conn.Open();
        command.ExecuteNonQuery();
        conn.Close();

    }
   
    </script>
<html>
<head id="Head1" runat="server">
    <title></title>
</head>
<body background="236.JPG"  >
<br />
<hr />
<h1>
הפעולה התבצעה בהצלחה
</h1>
    <a href="Login.html">התחבר</a>
<br />
<hr />
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
