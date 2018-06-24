<%@ Page Language="C#" Debug="true" %>
<%@import Namespace="System.Data.SqlClient" %>
<%@import Namespace="System.Data" %>

<script runat="server">
   string st = " ";
   //int count = 0;
    public void page_load()

{
    string STid = Request.Form["TZ"];
    string STsisma = Request.Form["Password"];
    string stC = @"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Documents and Settings\My Documents\הודיה ונונו\WebSite105\App_Data\Db.mdf;Integrated Security=True;User Instance=True";
    SqlConnection conn = new SqlConnection(stC);


    string stsql2 = "update TBtofes1 set countinsert=countinsert+1 where TZ=" + STid + "";
    SqlDataAdapter datadapter2 = new SqlDataAdapter(stsql2, conn);
    DataSet ds2 = new DataSet();
    datadapter2.Fill(ds2);

    
      
        
    string stsql3 = "update TBtofes1 set status='old' where TZ=" + STid + " AND countinsert>=5";
       
    SqlDataAdapter datadapter3 = new SqlDataAdapter(stsql3, conn);
    DataSet ds3 = new DataSet();
    datadapter3.Fill(ds2);

    //string STs = Request.Form["status"];
    //if (STs == "new") 
    //    count++;

        string stsql1 = "select *from TBtofes1 where TZ='"+STid+"'AND password='"+STsisma+"'";
        SqlDataAdapter datadapter1 = new SqlDataAdapter(stsql1, conn);
        DataSet ds1 = new DataSet();
        datadapter1.Fill(ds1);
        DataTable dt = ds1.Tables[0];
        if (dt.Rows.Count == 0)
        {
            Response.Redirect("tofes1.htm");
        }
        else
        {
            if (STid == "5917511" && STsisma == "hodaya" || STid == "588435" && STsisma == "777777" || STid == "4555622" && STsisma == "999" || STid == "2233" && STsisma == "N@$2233" || STid == "123456" && STsisma == "123456@$v")
            {
                Session["kind"] = "menager";
                Session["userId"] = STid;
                Response.Redirect("Welcome.html");
            }
            else
            {
                Session["userId"] = STid;
                Response.Redirect("Welcome.html");
            }
                
        }

    }


    
   
    </script>
<html>
<head id="Head1" runat="server">
    <title></title>
</head>
<body background="236.JPG">
<%=st %>
</body>
</html>
