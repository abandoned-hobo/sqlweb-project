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
        .backinf{
                width: 800px;
                height: 300px;
                position: absolute;
                top: 200px;
                left: 28%;
                background: #fff;
        }
        
        .backbot{
                width: 100px;
                height: 45px;
                border: none;
                background: #33cc33;
                margin-top: 20px;
                position: relative;
                left: 350px;
                top: 55px;
                color:#fff;
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
            z-index:1;
        }
        .subbot:hover{
        	background:#0066ff;
        }
        .goto{
        	position:relative;
        	top:70px;
        	left:100px;
        	font-size:15px;
        }
        .goto a{
        	text-decoration: none;
        	color:#fff;
        	padding:13px 10px;
        	background:#6666ff
        }
        a:hover{
        	background:#0066ff;
        }
        .backinf h2{
        	width:800px;
        	margin-top:-10px;
        	height:30px;
        }
      </style>
  </head>  
    
<body>
	<%
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接sql
        Statement stmt=conn.createStatement();
        String state=request.getParameter("id");//房间状态
        String numb=request.getParameter("id2");//房间号
        String stateno=request.getParameter("stanum");
        String sendflag=request.getParameter("flag");
        String flag="no\0";
        String flag2="yes\0";
        String id1 = new String(state.getBytes("ISO-8859-1"),"UTF-8");
        String id2 = new String(flag.getBytes("ISO-8859-1"),"UTF-8");
        String sqlkind="select * from 客房类别 where 编号="+stateno;
        ResultSet rs=stmt.executeQuery(sqlkind);
        int date1=20180627;
        int date2=20180628;
        //String pay=rs.getString("价格");
		if(!state.equals("yes                   ")){%>

		  <div class="con">
		      <h2>插入预定信息前请确保当前客户信息存在</h2>
		      <table class="table1" cellspacing=0>
		          <tr>
		            <td align="center">客房编号</td>
		            <td align="center">身份证号</td>
		            <td align="center">入住时间</td>
		            <td align="center">离开时间</td>
		            <td align="center">入住人数</td>
		          </tr>
		      </table>
		          <form action="insertelemdone.jsp">
		            <table class="table1" cellspacing=0>
		              <tr>
		                  <td align="center"><input class="subinf" type="text" name="id1" value="<%=numb %>"></td>
		                  <td align="center"><input class="subinf" type="text" name="id2"></td>
		                  <td align="center"><input class="subinf" type="text" name="id3" value="<%=date1%>"></td>
		                  <td align="center"><input class="subinf" type="text" name="id4" value="<%=date2%>"></td>
		                  <td align="center"><input class="subinf" type="text" name="id5"></td>
		              </tr>
		            </table>
		              <input type="submit" class="subbot" value="提交">
		          </form>
		          <div class="goto"><a href="insertpeo.jsp" class="insertoth">插入客户信息</a></div>
		     	
		  </div>
		  <%} %>
		  
		  <%
		  if(state.equals("yes                   ")){ %>
			  	<div class="backinf">
	        		<div><h2>此房间已有入住</h2></div>
	        		<div><h2>按下跳转入住详情表</h2></div>
	        		<input type="button" class="backbot" value="BACK" onclick="javascript:document.location.href='roomdetailinfre2.jsp';"> 
	    		</div>
		  <%} %>
</body>     
</html> 