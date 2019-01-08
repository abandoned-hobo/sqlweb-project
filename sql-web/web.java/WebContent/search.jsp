<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="javax.sql.*" %>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
	<head>  
	   	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>  
   	<title>查找数据</title>
   	<style type="text/css">
   		body{
   			background: #ccc;
   		}/*网页表单设计%*/
   		.searchinf{
   			width: 500px;
   			height: 300px;
   			position: absolute;
   			top: 350px;
   			left: 38%;
   			background: #fff;
   		}
   		.inputinf{
   			width: 350px;
   			height: 50px;
   			position: relative;
   			left: 75px;
   			top: 70px;
   		}
   		.send{
   			width: 100px;
   			height: 60px;
   			position: relative;
   			left: -25px;
   			bottom: -200px;
   			border:none;
   			background:#009900;
   			color:#fff;
   			font-size:20px;
   		}
   		.send:hover{
   			background:#00cc00;
   		}
   	</style>
      
<body>
	<div class="searchinf">
		<form action="searchdone.jsp">
			<input type="text" name="id" class="inputinf">
			<input type="submit" value="查找" class="send">
		</form>
	</div>
	
</body>     
</html> 