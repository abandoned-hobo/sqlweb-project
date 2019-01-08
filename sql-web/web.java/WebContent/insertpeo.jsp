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
      <title>新建预订信息填写</title>
      <style type="text/css">
        *{/*网页表单设计%*/
            margin: 0;
            padding: 0;
        }
        body{
            background: #ccc;
        }
        .con{
            width: 1200px;
            height: 500px;
            background: #fff;
            position: absolute;
            top: 200px;
            left: 360px;
        }
        h2{
        	width:1200px;
        	height:80px;
        	text-align:center;
        	padding-top:50px;
        	font-weight:600;
        }
        table{
        	margin-left:100px;
        }
        td{
            border:1px solid #ccc;
            width:200px;
            height:30px;
        }
        .subinf{
            height: 30px;
            width: 200px;
            border:1px solid #ccc;
        }
        .subbot{
            height:40px;
            width:100px;
            border:none;
            background:#6666ff;
            color:#fff;
            position: relative;
            top: 100px;
            left: 1010px;
        }
        .subbot:hover{
        	background:#0066ff;
        }
        .selec{
        	width:200px;
        	height:30px;
        }
        
      </style>
  </head>  
    
<body>
  <div class="con">
      <h2>新建客户信息</h2>
      <table border="1" cellspacing="0">
          <tr>
                <td align="center">身份证号</td>
                <td align="center">姓名</td>
                <td align="center">性别</td>
                <td align="center">年龄</td>
                <td align="center">电话</td>
          </tr>
      </table> 
      <form action="insertpeodone.jsp" accept-charset="UTF-8">
          <table  border="1" cellspacing="0">
              <tr>
                  <td><input class="subinf" type="text" name="pid1"></td>
                  <td><input class="subinf" type="text" name="pid2"></td>
                  <td><select name="pid3" class="selec">
						<option value="男">男</option >
						<option value="女">女</option >
						</select></td>
                  <td><select name="pid4" class="selec">
				<%	int i=18;//kaishi
					for(i=18;i<80;i++){					
				%>
				<option value="<%=i%>"><%=i %></option >
				<%}//jieshu
				%>
				</select></td>
                  <td><input class="subinf" type="text" name="pid5"></td>
              </tr>
          </table>
          <input class="subbot" type="submit" class="subbot" value="提交">
      </form>
  </div>
  
</body>     
</html> 