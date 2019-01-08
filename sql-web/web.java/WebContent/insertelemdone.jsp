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
      <title>新建预订信息</title>
      <style type="text/css">/*网页表单设计%*/
        .tablesearch{
          border: 1px solid #ccc;
        }
        .tablesearch td{
          border: 1px solid #ccc;
          width:200px;
        }
        .insertback{
          background: #fff;
          width: 500px;
          height: 150px;
          position: fixed;
          bottom: 10px;
          left: 40%;
        }
        .insertback div,input{
          text-align: center;
          margin-top: 20px;
        }
        .backinf{
                width: 800px;
                height: 300px;
                position: absolute;
                top: 200px;
                left: 29%;
                background: #fff;
            }
            .backbot{
            	width:100px;
            	height:40px;
            	border:none;
            	background:#355bb1b3;
            	color:#fff;
            	position:relative;
            	left:200px;
            	top:30px;}
            .backbot2{
            	width:100px;
            	height:40px;
            	border:none;
            	background:#355bb1b3;
            	color:#fff;
            	position:relative;
            	left:345px;
            	top:30px;
            }
            .backtext{
            	width:800px;
            	text-align:center;
            	color:#fff;
            	font-size:22px;
            }
            h2{
            	text-align:center;
            }
            table{
            	margin:auto;
            }
      </style>
  </head>  
    
<body>

        
        
            <%
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接sql
            Statement stmt=conn.createStatement();
            String initno=request.getParameter("id1");//房间号
            String initid=request.getParameter("id2");//身份证号
            String inittin=request.getParameter("id3");//入住时间
            String inittout=request.getParameter("id4");//离开时间
            String initpeonum=request.getParameter("id5");//人数
            String flagid="select * from 客户信息 where 身份证号="+"'"+initid+"'";//查询
            ResultSet rs=stmt.executeQuery(flagid);
            while(rs.next()){//如果有客户，进行预定信息插入和客户信息更新
            	String sql = "insert into 订房信息  values("+"'"+initno+"'"+","+"'"+initid+"'"+","+"'"+inittin+"'"+","+"'"+inittout+"'"+","+initpeonum+")";  
            	stmt.executeUpdate(sql);
            	String nullinf="yes";
            	String sqlup="update 客房信息  set 入住状态 = "+"'"+nullinf+"'"+" where 房间编号 = "+initno;
            	stmt.executeUpdate(sqlup);
            	%> 
            	<h2>已插入以下预订信息</h2>
            	<table class="tablesearch">
              		<tr>
                		<td align="center">身份证号</td>
                		<td align="center">房间号</td>
                		<td align="center">入住时间</td>
                		<td align="center">离开时间</td>
                		<td align="center">入住人数</td>
              		</tr>
	            	<tr>
	                	<td align="center"><%=initno %></td>
	                	<td align="center"><%=initid %></td>
	                	<td align="center"><%=inittin %></td>
	                	<td align="center"><%=inittout %></td>
	                	<td align="center"><%=initpeonum %></td>
	            	</tr> 
	        	</table>
        	<div class="insertback">
            	<div>按下BACK返回客户信息界面</div>
            	<input type="button" value="BACK" class="backbot" onclick="javascript:document.location.href='peoinf.jsp';">    
        	</div>
        	
        	<%break;} %>
      
      
      
      		<%
            	rs=stmt.executeQuery(flagid);
            	while(!rs.next())/*没有返回客户信息不存在*/
                    {%>
            		<div class="backinf">
		        		<div><h2>客户信息不存在，请先录入客户信息</h2></div>
		        		<div><h2>按下跳转客户详情表</h2></div>
		        		<input type="button" class="backbot2" value="BACK" onclick="javascript:document.location.href='peoinf.jsp';"> 
		    		</div>
            <%
            	break;}
            %>
</body>     
</html> 