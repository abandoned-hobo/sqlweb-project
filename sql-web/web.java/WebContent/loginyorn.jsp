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
      <title>登陆状态</title>
      <style type="text/css">
            *{/*网页表单设计%*/
                margin:0;
                padding: 0;
                background: #ccc;
            }
            .success ,.fail{
                width: 500px;
                height: 300px;
                position: absolute;
                left: 38%;
                top: 350px;
                background: #fff;
            }
            h2{
                position: relative;
                top: 30px;
				background: #fff;
                width: 500px;
                text-align: center;
                font-size: 40px;
                font-weight: 900;
            }
            .inf{
            	font-size:30px;
                width: 500px;
                text-align: center;
				background: #fff;
				position:relative;
				top:70px;
				
            }
            .nosuccess{
                color: red;
            }
            .bot{
                position: relative;
                top:120px;
                left: 150px;
                border: none;
                width: 200px;
                height: 60px;
                background:#cc3333; 
                color:#fff;
            }
            .bot:hover{
                background: #cc0000;
            }
      </style>
  </head>  
    
<body>
        
        <%
            String reqid=request.getParameter("id");
            String reqpw=request.getParameter("pw"); 
            String rigid="yhblsqt";
            String rigpw="19980322";
            if((reqid.equals(rigid))&&(reqpw.equals(rigpw)))/*登陆成功*/
            {%>
            <div class="success">
                <h2>登陆成功</h2>
                <div class="inf">登录信息正确</div>
                <input class="bot"  type="button" value="进入系统" onclick="javascript:document.location.href='roomdetailinfre.jsp';">
            </div>
                        
        <%}%>
        
        <%
            if(!(reqid.equals(rigid))||!(reqpw.equals(rigpw)))/*登陆失败*/
            {%>
            <div class="fail">
                <h2>登陆失败</h2>
                <div class="inf nosuccess">登录信息错误</div>
                <input class="bot" type="button" value="重新输入" onclick="javascript:document.location.href='login.jsp';">
            </div>
                        
        <%}%>
</body>     
</html> 