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
        <title>删除处理已经完成</title>
        <style type="text/css">
            body{
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
            .backbot:hover{
            	background:#44b99e;
            }
            .backinf{
                width: 500px;
                height: 300px;
                position: absolute;
                top: 330px;
                left: 38%;
                background: #fff;
            }
            h2{
                text-align: center;
                margin-top: 45px;
            }/*网页表单设计%*/
        </style>
    </head>  
    
<body>
    <%
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接数据库
        Statement stmt=conn.createStatement();
        String Peoidstr=request.getParameter("id");
        String sql1="delete from 订房信息  where 身份证号="+Peoidstr;
        String sql2="delete from 入住信息  where 身份证号="+Peoidstr;
        String sql4="delete from 客户信息  where 身份证号="+"'"+Peoidstr+"'";//sql语句
        String test="123";
		ResultSet rs=stmt.executeQuery("select * from 订房信息 where 身份证号="+Peoidstr);
		while(rs.next()){
			String roomid=rs.getString("房间编号");
       		stmt.executeUpdate(sql1);//删除订房信息
       		test="789";
       		String sqlnull1="update 客房信息 set 入住状态= "+"'"+"           "+"'"+"where 房间编号= "+roomid;
            stmt.executeUpdate(sqlnull1);//更新客房信息
            break;
		}

		ResultSet rq=stmt.executeQuery("select * from 入住信息 where 身份证号="+Peoidstr);
		while(rq.next()){
			String roomid2=rq.getString("房间编号");
			stmt.executeUpdate(sql2);//删除入住信息
			test="456";
			String sqlnull2="update 客房信息 set 入住状态= "+"'"+"           "+"'"+"where 房间编号= "+roomid2;
	        stmt.executeUpdate(sqlnull2);
	        break;
		}
        
        
        stmt.executeUpdate(sql4);//删除客户信息
        
        String sqlnull="update 客房信息  set 入住状态= "+"'"+"   "+"'"+ " where 房间号= " +Peoidstr;
    %>
    <div class="backinf">
        <div><h2>已删除客户相关的所有信息</h2></div>
        <div><h2>按下BACK返回查看结果</h2></div>
        <input type="button" class="backbot" value="BACK" class="backbot" onclick="javascript:document.location.href='peoinf.jsp';"> 
    </div>
</body>     
</html> 