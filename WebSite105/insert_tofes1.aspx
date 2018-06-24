<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>

<script runat="server">
    string st = " ";
    public void page_load()
    {
        string stC = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Documents and Settings\My Documents\הודיה ונונו\WebSite105\App_Data\Db.mdf;Integrated Security=True;User Instance=True";
       SqlConnection conn = new SqlConnection(stC);
        string STname = Request.Form["firstname"];
        string STfamily = Request.Form["lastname"];
        string ST_street = Request.Form["srteet"];
        string STnumhome = Request.Form["numhome"];
        string STcity = Request.Form["city"];
        string STmeen = Request.Form["meen"];
        string STemail = Request.Form["email"];
        string STsisma = Request.Form["Password"];
        string STpelephon = Request.Form["pelephon"];
        string STtelephon = Request.Form["telephon"];
        string STtz = Request.Form["TZ"];
        string STthomeem = Request.Form["thomeem"];
        int STcount = 0;
        string STstatus = "new";
        string STuser = "user1";
        string stsql = "insert into TBtofes1 (firstname,lastname,srteet,numhome,city,mean,email,password,thomeem,pelephon,telephon,TZ,countinsert,status,USER1) values ('" + STname + "','" + STfamily + "','" + ST_street + "','" + STnumhome + "','" + STcity + "','" + STmeen + "','" + STemail + "','" + STsisma + "','" + "," + STthomeem + "','" + STpelephon + "','" + STtelephon + "','" + STtz + "','" + STcount + "','" + STstatus +"','"+STuser+ "')";   
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
