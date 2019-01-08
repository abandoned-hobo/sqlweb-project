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
        <title>退房处理</title>
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
                width: 500px;
                height: 300px;
                position: absolute;
                top: 320px;
                left: 38%;
                background: #fff;
            }
            h2{
                text-align: center;
                margin-top: 45px;
            }
        </style>
    </head>  
    
<body>
    <%
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接sql
        Statement stmt=conn.createStatement();
        String Peoidstr=request.getParameter("id");
        String money=request.getParameter("money");
        String roomnum=request.getParameter("rno");
        String sql2="delete from 入住信息  where 身份证号="+Peoidstr;
        stmt.executeUpdate(sql2);
        String sqlnull="update 客房信息 set 入住状态= "+"'"+"           "+"'"+"where 房间编号= "+roomnum;
        stmt.executeUpdate(sqlnull);//退房并更新客户信息
    %>
    <div class="backinf">
        <div><h2>退房操作完成</h2></div>
        <div><h2>需要付款<%=money %></h2></div>
        <input type="button" class="backbot" value="BACK" onclick="javascript:document.location.href='roomdone.jsp';"> 
    </div>

</body>     
</html> 