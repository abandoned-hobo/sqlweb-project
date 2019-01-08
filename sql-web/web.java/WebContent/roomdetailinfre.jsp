<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>客房基本信息</title>
        <style type="text/css">
          *{/*网页表单设计%*/
            padding: 0;
            margin: 0;
            font: "Microsoft YaHei";
            font-size: 15px;
          }
          body{
          	background:#ccc;
          }
          a{
            text-decoration:none;
            color:#fff;
            
          }
          h2{
            width: 100%;
            height: 50px;
            font-size: 35px;
            font-weight: 400;
            text-align: center;
          }
          .dock{
            position: fixed;
            bottom: 10px;
            left: 360px;
            width: 1200px;
            height: 60px;
            background: #6699cc; 
            border-radius:20px;
          }
          .dock a{
            font-size: 16px;
            width:100px;
            text-decoration:none;
      		border-radius:10px;
            margin-left: 76px;
            margin-top: 38px;
            color:white;
            padding-top:19px;
            padding-bottom:18px;
            padding-left:20px;
            padding-right:20px;
          }
          .dock a:hover{
            background:#2778b1;
          }
          .dockposi{
            position:relative;
            top:20px;
          }
          .exitbot{
            width:80px;
            height:50px;
            position:fixed;
            bottom:0px;
            right: 20px;
          }
          .exitbot a{
            height:50px;
            width:120px;
            padding:20px 30px;
            background:#ff3333;
            color:#fff;
            border-radius:18px;
          }
          
          

          /*表格样式*/
          table{
            margin:auto;
            border:50px solid #fff;
          }
          td a{
          	padding: 15px 30px;
          	font-size:22px;
            font-weight:900;
          }
          td a:hover{
            color:#ffd400;
            background:#4397bf;
            -webkit-transition:all linear 0.30s;  
            -moz-transition:all linear 0.30s;  
            transition:all linear 0.30s; 
          }
          td{
            font-size:22px;
            width: 100px;
            height: 60px;
            border-right: 9px solid #fff;
            border-top: 30px solid #fff;
            background: #356982;
            color:#fff;
          }
          .tabletitle{
            background: #85b8d0;
          }
          .tableundo{
          	background:#cccccc;
          }
          .tableundo a:hover{
          	color:#b9b9b9;
            -webkit-transition:all linear 0.30s;  
            -moz-transition:all linear 0.30s;  
            transition:all linear 0.30s; 
          }
          td a:hover .yudaing{
            display:block;
          }
          /*end*/
          .yuding{
          	font-size:10px;
          	position:relative;
          	left:0px;
          }
        </style>
        <link href="dock.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
       
        <%!
        String trans(String s)
        {
           String result=null;
           try
            {
               byte[] buffer=s.getBytes("ISO-8859-1");
               result=new String(buffer,"GB2312");
             }
           catch(Exception ex)
            {
                 System.out.println(ex.toString());
            }
           return result;
        }
        %>
       
        <div class="head">
          <h2 class="tablet">客房详细信息</h2>
        </div>
        <table class="table2"  align="center" cellspacing="0">
          <tr>
            <td align="center" class="tabletitle">X01</td>
            <td align="center" class="tabletitle">X02</td>
            <td align="center" class="tabletitle">X03</td>
            <td align="center" class="tabletitle">X04</td>
            <td align="center" class="tabletitle">X05</td>
            <td align="center" class="tabletitle">X06</td>
            <td align="center" class="tabletitle">X07</td>
            <td align="center" class="tabletitle">X08</td>
            <td align="center" class="tabletitle">X09</td>
            <td align="center" class="tabletitle">X10</td>
          </tr>
        <%
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");
        Statement stmt=conn.createStatement();
        String fla="yes";
        ResultSet rs=stmt.executeQuery("select * from 客房信息");
        int i=0;
        while(rs.next())
        {%>
          
          <%if(i==0||i==10||i==20||i==30||i==40) {
            %>
            <tr>
            
          <%i=0;} %>
        
              <%if(!rs.getString("入住状态").startsWith("yes"))//入住状态不是yes
               {%>
                    <td align="center"><a href="docheckinororder.jsp?id=<%=rs.getString("入住状态")%>
                        &num=<%=rs.getString("房间编号")%>
                        &stanum=<%=rs.getString("类型编号")%>
                        &flag=<%=fla%>
                          "><%=rs.getString("房间编号") %></a></td>
                
              <%}%>
            
              
              <%if(rs.getString("入住状态").startsWith("yes"))//入住状态是yes
               {%>
                    <td align="center" class="tableundo"><a href="doroomnew.jsp?id=<%=rs.getString("入住状态")%>
                        &num=<%=rs.getString("房间编号")%>
                        &stanum=<%=rs.getString("类型编号")%>
                        &flag=<%=fla%>
                          "><%=rs.getString("房间编号") %></a></td>
                
              <%}%>
            
            <%if(i==10||i==20||i==30||i==40) {%>
            </tr>
            
          <%} %>
          
            <%i++; %>
            
        <%}%>
     </table>
     <div class="chengkai"></div>
     <div class="dock">
      <div class="dockposi">
        <a href="roomdetailinfre.jsp">客房详细信息</a>
          <a href="roombaseinf.jsp">客房基本信息</a>
          <a href="peoinf.jsp">客户详细信息</a>
          <a href="roomcheckin.jsp">客房预订信息</a>
          <a href="roomdone.jsp">客房入住信息</a>
      </div>
     </div>
          <div class="exitbot"><a href="login.jsp">EXIT</a></div>
    </body>
</html>
