<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>

<script runat="server">
    string st= " ";
    public void page_load()
    {
        string stC = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Documents and Settings\My Documents\הודיה ונונו\WebSite105\App_Data\Db.mdf;Integrated Security=True;User Instance=True";
        SqlConnection conn = new SqlConnection(stC);
        string STname1 = Request.Form["R1"];
        string STname2 = Request.Form["R2"];
        string STname3 = Request.Form["R3"];
        string STname4 = Request.Form["R4"];
        string STname5 = Request.Form["R5"];
        string stsql = "insert into TBtofes2 (Question1,Question2,Question3,Question4,Question5) values ('" + STname1 + "','" + STname2 + "','" + STname3 + "','" + STname4 + "','" + STname5 + "')";   
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
    <a href="Welcome.html">חזרה לף הראשי</a>
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
