<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>
<script runat="server">
    string sthodaya;
    public void Page_load()
    {
               Application.Lock();
        int num;
        num = int.Parse(Application["count"].ToString()); // string ממיר את האובייקט ל
        num++; // מונה
        Application["count"] = num;
        Application.UnLock();
        sthodaya = Application["count"].ToString();
        }
        </script>
<html>
<head  runat="server">
   <title>מספר הצפיות באתר</title> 
    <style type="text/css">
        .style1
        {
            color: #009900;
            font-family: "Guttman Yad-Light";
            font-size: medium;
            font-weight: normal;
        }
    </style>
</head>

<body background="236.JPG" style="text-align: right" />

<h2 style="text-align: right" class="style1">- מספר הכניסות לאתר </h2>
<h2 style="text-align: right"><%=sthodaya%></h2>
    <br />
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

    <a href="Welcome.html">חזרה לף הראשי</a>
<br />
<hr />

</body>
</html>
