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
        <title>办理入住</title>
        <style type="text/css">
            body{/*网页表单设计%*/
                background: #ccc;
            }
            .backbot{
                width: 100px;
                height: 45px;
                border: none;
                background: #33cc33;
                margin-top: 20px;
                position: relative;
                left: 350px;
                top: 15px;
                color:#fff;
            }
            .backinf{
                width: 800px;
                height: 300px;
                position: absolute;
                top: 200px;
                left: 28%;
                background: #fff;
            }
            table{
            	border:1px solid #ccc;
            	margin-left:120px;
            	
            }
            h2{
                text-align: center;
                margin-top: 45px;
            }
        	.subbot{
            	height:40px;
            	width:100px;
            	border:none;
            	background:#6666ff;
            	color:#fff;
            	position: relative;
            	top: 60px;
            	left: 610px;
        	}
        	.subbot:hover{
        		background:#0066ff;
        	}
        	td{
        		width:80px;
        		height:30ox;
        		border:1px solid #ccc;
        	}
        	.subinf{
        		width:80px;
        		height:30px;
        	}
        	.money{
        		position:absolute;
        		right:33.2%;
        		top:359px;
        		height: 60px;
        		width:300px;
        		background:#fff;
        		text-align:center;
        	}
        	.money p{
        		margin-top:16px;
        	}
        	.selec{
        	width:80px;
        	height:30px;
        }
        </style>
    </head>  
    
<body>
    <%
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接sql
        Statement stmt=conn.createStatement();
        String state=request.getParameter("id");
        String numb=request.getParameter("id2");
        String stateno=request.getParameter("id3");
        String sendflag=request.getParameter("flag");
        String flag="no\0";
        String flag2="yes\0";
        String id1 = new String(state.getBytes("ISO-8859-1"),"UTF-8");
        String id2 = new String(flag.getBytes("ISO-8859-1"),"UTF-8");
        String sqlkind="select * from 客房类别 where 编号="+stateno;
        ResultSet rs=stmt.executeQuery(sqlkind);//查询客房编号对应的客房类型

        if(state.startsWith("yes"))/*判断为非空房间,返回*/
        {
	%>
        	<div class="backinf">
        		<div><h2>此房间已有入住</h2></div>
        		<div><h2>按下跳转入住详情表</h2></div>
        		<input type="button" class="backbot" value="BACK" onclick="javascript:document.location.href='roomdetailinfre2.jsp';"> 
    		</div>
	<%
		}
	%>
        
        
    <%
    	if(!state.startsWith("yes")){/*判断是空房间*/
    %>
    	<div class="backinf">
        	<div><h2>输入入住客户信息</h2></div>
        	<table class="table1" cellspacing=0>
          <tr>
            <td align="center">房间编号</td>
            <td align="center">身份证号</td>
            <td align="center">入住时间</td>
            <td align="center">离开时间</td>
            <td align="center">入住人数</td>
            <td align="center">早餐需求</td>
            <td align="center">入住金额</td>
          </tr>
      </table>
          <form action="directin.jsp">
            <table class="table1" cellspacing=0>
              <tr>
                  <td align="center"><input class="subinf" type="text" name="id1" value=<%=numb %>></td>
                  <td align="center"><input class="subinf" type="text" name="id2"></td>
                  <td align="center"><input class="subinf" type="text" name="id3" value="20180628"></td>
                  <td align="center"><input class="subinf" type="text" name="id4" value="20180629"></td>
                  <td align="center"><input class="subinf" type="text" name="id5"></td>
                  <td><select name="id6" class="selec">
						<option value="yes">yes</option >
						<option value="no">no</option >
						</select></td>
					
                  	<td align="center"><input class="subinf" type="text" name="id7"></td>
                  	
              </tr>
            </table>
              <input type="submit" class="subbot" value="提交">
          </form>
    	</div>
    	<%while(rs.next()) {%>
    		<div class="money"><p>当前所选的房间单日价格是<%=rs.getString("价格") %></p></div>	
    	<%} %> 
    	<%} %>
</body>     
</html> 