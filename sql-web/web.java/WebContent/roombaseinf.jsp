
<%@page contentType="text/html" pageEncoding="GB2312"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <title>客房基本信息</title>
        <style type="text/css">
          *{/*网页表单设计%*/
            padding: 0;
            margin: 0;
            font: "Microsoft YaHei";
            font-size: 15px;
          }
          a{
          	text-decoration:none;
          }
          h2{
   			width: 100%;
   			height: 50px;
   			font-size: 35px;
   			font-weight: 400;
   			text-align: center;
   			}
          .table1{
            border: 1px solid #d4d4d4;
            margin:auto;
          }
          .table1 td{
            border: 1px solid #d4d4d4;
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
          td a:hover{
          	color:#ff0033;
          	font-size:25px;
          	-webkit-transition:all linear 0.20s;  
    		-moz-transition:all linear 0.20s;  
    		transition:all linear 0.20s; 
          }
          
        </style>
        <link href="dock.css" rel="stylesheet" type="text/css" />
        <link href="table.css" rel="stylesheet" type="text/css" />
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
          <h2 class="tablet">客房基本信息</h2>
        </div>
        <table class="table1"  align="center"  cellspacing="0">
          <tr>
            <td align="center">房间编号</td>
            <td align="center">房间类型</td>
            <td align="center">房间价格</td>
          </tr>
        <%
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");
        Statement stmt=conn.createStatement();
        ResultSet rs=stmt.executeQuery("select * from 客房类别");
        while(rs.next())
        {%>
          <tr>
            <td><%=rs.getString("编号") %></td>
            <td><%=rs.getString("类型名称") %></td>
            <td><%=rs.getString("价格") %></td>
          </tr>
        <%}%>
     </table>
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
