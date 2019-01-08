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
      <title>查询结果</title>
      <style type="text/css">
        .tablesearch{
          border: 1px solid #ccc;
        }/*网页表单设计%*/
        .tablesearch td{
          border: 1px solid #ccc;
          width:200px;
        }
        .searchback{
          background: #fff;
          width: 800px;
          height: 150px;
          position: fixed;
          bottom: 10px;
          left: 30%;
        }
        .searchback div,input{
          text-align: center;
          margin-top: 20px;
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
            .chawuciren{
            	width:620px;
            	height:400px;
            	position:absolute;
            	top:250px;
            	left:650px;
            }
            .chawuciren div{
            	font-size:30px;
            	text-align:center;
            }
      </style>
      <link href="table.css" rel="stylesheet" type="text/css" />
  </head>      
<body>    
            <%
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接sql
            Statement stmt=conn.createStatement();
            String searchid=request.getParameter("id");
            ResultSet rs=stmt.executeQuery("select * from 客户信息 where 身份证号="+searchid);//查询到的客户信息
            ResultSet rwhy=rs;
            if(rs.next())
            {%>
              <h2>查询到以下结果</h2>
        		<table class="table1">
              <tr>
                <td align="center">身份证号</td>
                <td align="center">姓名</td>
                <td align="center">性别</td>
                <td align="center">年龄</td>
                <td align="center">电话</td>
              </tr>
              <tr>
                <td align="center"><%=rs.getString("身份证号") %></td>
                <td align="center"><%=rs.getString("姓名") %></td>
                <td align="center"><%=rs.getString("性别") %></td>
                <td align="center"><%=rs.getString("年龄") %></td>
                <td align="center"><%=rs.getString("电话") %></td>
              </tr>
            </table>
            <%}else{%>
            <div class="chawuciren"><div>查无此人</div></div>
            <%}
            rs=stmt.executeQuery("select * from 入住信息 where 身份证号="+searchid);//查询到的该客户入住信息
            %>
        	
            	<%while(rs.next())
            	{%>
              	<table class="table1">
          		<tr>
            	<td align="center">房间编号</td>
            	<td align="center">到达时间</td>
            	<td align="center">离开时间</td>
            	<td align="center">入住人数</td>
            	<td align="center">身份证号</td>
            	<td align="center">早餐服务</td>
            	<td align="center">结账金额</td>
          		</tr>
              	<tr>
                	<td align="center"><%=rs.getString("房间编号") %></td>
                	<td align="center"><%=rs.getString("到达时间") %></td>
                	<td align="center"><%=rs.getString("离开时间") %></td>
                	<td align="center"><%=rs.getString("入住人数") %></td>
                	<td align="center"><%=rs.getString("身份证号") %></td>
                	<td align="center"><%=rs.getString("早餐服务") %></td>
                	<td align="center"><%=rs.getString("结账金额") %></td>
              	</tr>
            		</table>
            	<%break;}%>
            
            
            <%rs=stmt.executeQuery("select * from 订房信息 where 身份证号="+searchid);//查询到的该客户订房信息
            %>
        	
            	<%while(rs.next())
            	{%>
              	<table class="table1">
          	<tr>
            	<td align="center">房间编号</td>
            	<td align="center">身份证号</td>
            	<td align="center">到达时间</td>
            	<td align="center">离开时间</td>
            	<td align="center">入住人数</td>
          	</tr>
              	<tr>
                	<td align="center"><%=rs.getString("房间编号") %></td>
                	<td align="center"><%=rs.getString("身份证号") %></td>
                	<td align="center"><%=rs.getString("到达时间") %></td>
                	<td align="center"><%=rs.getString("离开时间") %></td>
                	<td align="center"><%=rs.getString("入住人数") %></td>
              	</tr>
            		</table>
            	<%break;}%>      
        <div class="searchback">
            <div></div>
            <div>按下BACK返回客户信息界面</div>
            <input type="button" value="BACK" class="backbot" onclick="javascript:document.location.href='peoinf.jsp';">    
        </div>
</body>     
</html> 