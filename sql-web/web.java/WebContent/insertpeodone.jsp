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
      <%request.setCharacterEncoding("gb2312");response.setContentType("text/html; charset=utf-8");%>
      <title>新建客户信息</title>
      <style type="text/css">
      	/*网页表单设计%*/
        .tablesearch{
          border: 1px solid #ccc;
          margin:auto;
        }
        .tablesearch td{
          border: 1px solid #ccc;
          width:200px;
        }
        .insertback{
          background: #fff;
          width: 800px;
          height: 150px;
          position: fixed;
          bottom: 10px;
          left: 30%;
          color:#309dbd;
        }
        .insertback div,input{
          text-align: center;
          margin-top: 20px;
        }
        .backbot{
        	width:100px;
        	height:40px;
        	position:relative;
        	left:350px;
        	top:30px;
        	background:#309dbd;
        	border:none;
        	color:#fff;  
        }/*网页表单设计%*/
      </style>
  </head>  
  
<body>
        <h2>已插入以下客户信息</h2>
        <table class="tablesearch">
              <tr>
                <td align="center">身份证号</td>
                <td align="center">姓名</td>
                <td align="center">性别</td>
                <td align="center">年龄</td>
                <td align="center">电话</td>
              </tr>
            <%
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接sql
            Statement stmt=conn.createStatement();
            String initno=request.getParameter("pid1");
            String initid=request.getParameter("pid2");
            String inittin=request.getParameter("pid3");
            String inittout=request.getParameter("pid4");
            String initpeonum=request.getParameter("pid5");
            String id1 = new String(initno.getBytes("ISO-8859-1"),"UTF-8");
            String id2 = new String(initid.getBytes("ISO-8859-1"),"UTF-8");
            String id3 = new String(inittin.getBytes("ISO-8859-1"),"UTF-8");
            String id4 = new String(inittout.getBytes("ISO-8859-1"),"UTF-8");
            String sql = "insert into 客户信息  values("+"'"+initno+"'"+","+"'"+id2+"'"+","+"'"+id3+"'"+","+inittout+","+"'"+initpeonum+"'"+")";  
            stmt.executeUpdate(sql);//插入客户信息
            //jsp代码是用<%的一堆符号括起来的
            %> 
            <tr>
                <td align="center"><%=id1 %></td>
                <td align="center"><%=id2 %></td>
                <td align="center"><%=id3 %></td>
                <td align="center"><%=id4 %></td>
                <td align="center"><%=initpeonum %></td>
              </tr> 
        </table>
        <div class="insertback">
            <div>按下BACK返回客户信息界面</div>
            <input type="button" value="BACK" onclick="javascript:document.location.href='peoinf.jsp';" class="backbot">    
        </div>
      


</body>     
</html> 