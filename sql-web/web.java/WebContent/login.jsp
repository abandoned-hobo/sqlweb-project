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
      <title>登陆酒店管理系统</title>
      <style type="text/css">
        *{/*网页表单设计%*/
          margin: 0;
          padding: 0;
        }
        .back{
              width: 100%;
              height: 100%;
              background: #ccc;
          }
        .log{
              width: 500px;
              height: 300px;
              position: absolute;
              top: 350px;
              left: 38%;
              background: #fff;
        }
        input{
              width: 300px;
              height: 30px;
              margin-left: 100px;
              margin-top: 15px;
        }
        .subbot{
              width: 100px;
              height:50px;
              margin-top: 30px;
              margin-left: 300px;
              border:none;
              background: #006699;
              color: #fff; 
        }
        .subbot:hover{
        	background:#0099ff;
        }
        h3{
              width: 500px;
              text-align: center;
              margin-top: 40px;
              font-size: 40px;
        }
      </style>
  </head>  
    
<body>
  <div class="back">
    <form action="loginyorn.jsp">
      <div class="log">
        <div class="login">
          <h3>登陆</h3>
          <input type="text" name="id">
          <input type="password" name="pw">
          <input type="submit" class="subbot" value="提交">
        </div>
      </div>
    </form>
  </div>
</body>     
</html> 