
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <title>取消预定</title>
        <style type="text/css">
          *{
            padding: 0;
            margin: 0;
            font: "Microsoft YaHei";
            font-size: 15px;
          }
          h2{
   			width: 100%;
   			height: 50px;
   			font-size: 35px;
   			font-weight: 400;
   			text-align: center;
   			}
          .table1{
            border: 1px solid #666;
          }
          .table1 td{
            border: 1px solid #777;
            width: 200px;
          }
          tr{
            text-align: center;
            height:25px;
          }
          .dock{
            position: fixed;
            bottom: 10px;
            left: 360px;
            width: 1200px;
            height: 60px;
            background: #6699cc; 
          }
          a{
          	text-decoration:none;
          }
          .dock a{
            font-size: 16px;
          	width:100px;
            text-decoration:none;
            margin-left: 76px;
            margin-top: 38px;
            color:white;
          	padding-top:19px;
            padding-bottom:19px;
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
          
          .warningspan{
          	height:300px;
          	width:100%;
          	background:#fff;
          	opacity: 1;
          	text-align:center;
          	margin-top:20px;
          }
          .warningspan h3{
          	font-size:30px;
          	padding-top:120px;
          	color:red;
          	font-weight:600;
          }
          .exitbot{
          	width:80px;
          	height:50px;
          	position:absolute;
          	bottom:80px;
          	left: 43.5%;
          }
          .exitbot a{
          	height:50px;
          	width:120px;
          	padding:20px 80px;
          	background:#ff3333;
          	color:#fff;
          }
          .searchspan{
            width: 100%;
            height: 50px;
            position:fixed;
            bottom:80px;
            left:45%;
          }
          .searchspan a{
          	text-align:center;
          	margin-top:10px;
          	padding:20px 60px;
          	background:#336699;
          	color: #fff;
          }/*网页表单设计%*/
        </style>
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
        <%
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接sql
        Statement stmt=conn.createStatement();
        Statement stmt2=conn.createStatement();
        String inf1=request.getParameter("id");
        String inf2=request.getParameter("id2");
        String inf3=request.getParameter("id3");
        String inf4=request.getParameter("id4");
        String inf5=request.getParameter("id5");

        ResultSet rs=stmt.executeQuery("select * from 客户信息");
        String nullinf="           ";
        String sqldel="delete from 订房信息 where 身份证号= "+inf2;
        String sqlReturn="update 客房信息  set 入住状态 = "+"'"+nullinf+"'"+" where 房间编号 = "+inf1;
        %>
      
        <%
        	stmt.executeUpdate(sqldel);
        	stmt.executeUpdate(sqlReturn);//更新客房信息并删除订房信息
        %>
     <div class="dock">
     	<div class="dockposi">
     		<a href="roomdetailinf.jsp">客房详细信息</a>
        	<a href="roombaseinf.jsp">客房基本信息</a>
        	<a href="peoinf.jsp">客户详细信息</a>
        	<a href="roomcheckin.jsp">客房预订信息</a>
        	<a href="roomdone.jsp">客房入住信息</a>
     	</div>
     </div>
     <div class="exitbot"><a href="roomcheckin.jsp">BACK</a></div>
     <div class="out">
     	
     </div>
    </body>
</html>
