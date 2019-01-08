
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>预定or入住</title>
    <title>预定or入住</title>
    <style type="text/css">
        body{
            background: #ccc; 
        }
        .ask{
            width: 620px;
            height: 300px;
            background: #fff;
            position: absolute;
            top: 250px;
            left: 650px;
        }
        a{
            text-decoration: none;
            color: #fff;
            font-size: 25px;
            font-weight: 600;
            position: relative;
            top: 34px;
            height: 100px;
            width: 100px;
            border-radius: 50%;
        }
        .askcan1{
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background: #666;
            text-align: center;
            position: relative;
            top: 100px;
            left: 140px;
            display: inline-block;
            background: #26889e;
        }
        .askcan2{
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background: #666;
            text-align: center;
            position: relative;
            top: 100px;
            left: 280px;
            display: inline-block;
            background: #4b6fb1;
        }/*网页表单设计%*/
    </style>
</head>
<body>
	<%
		String id1=request.getParameter("id");
		String id2=request.getParameter("num");
		String id3=request.getParameter("stanum");
		String id4=request.getParameter("flag");
		%>
    <div class="ask">
        <div class="askcan1"><a href="insertelem.jsp?id=<%=id1 %>
        												&id2=<%=id2 %>
        												&id3=<%=id3 %>
        												&id4=<%=id4 %>">预定</a></div>
        <div class="askcan2"><a href="doroomnew.jsp?id=<%=id1 %>
        												&id2=<%=id2 %>
        												&id3=<%=id3 %>
        												&id4=<%=id4 %>">入住</a></div>
    </div>
    </body>
</html>

















