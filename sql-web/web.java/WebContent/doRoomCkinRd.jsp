
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
        <title>客户信息</title>
        <style type="text/css">
          *{/*网页表单设计%*/
            padding: 0;
            margin: 0;
            font: "Microsoft YaHei";
            font-size: 15px;
          }
          h2{
   			width: 100%;
   			height: 50px;
   			font-size: 35px;
   			font-weight: 400;
   			text-align: center;
   			}
          .table1{
            border: 1px solid #666;
          }
          .table1 td{
            border: 1px solid #777;
            width: 200px;
          }
          tr{
            text-align: center;
            height:25px;
          }
          .dock{
            position: fixed;
            bottom: 10px;
            left: 360px;
            width: 1200px;
            height: 60px;
            background: #6699cc; 
          }
          a{
          	text-decoration:none;
          }
          .dock a{
            font-size: 16px;
          	width:100px;
            text-decoration:none;
            margin-left: 76px;
            margin-top: 38px;
            color:white;
          	padding-top:19px;
            padding-bottom:19px;
            padding-left:20px;
            padding-right:20px;
          }
          .dock a:hover{
          	background:#2778b1;
          }
          .dockposi{
          	position:relative;
          	top:20px;
          }
          
          .warningspan{
          	height:300px;
          	width:100%;
          	background:#fff;
          	opacity: 1;
          	text-align:center;
          	margin-top:20px;
          }
          .warningspan h3{
          	font-size:30px;
          	padding-top:120px;
          	color:red;
          	font-weight:600;
          }
          .exitbot{
          	width:80px;
          	height:50px;
          	position:absolute;
          	bottom:0px;
          	right: 20px;
          }
          .exitbot a{
          	height:50px;
          	width:120px;
          	padding:20px 30px;
          	background:#ff3333;
          	color:#fff;
          }
          .searchspan{
            width: 100%;
            height: 50px;
            position:fixed;
            bottom:0px;
            left:0px;
          }
          .searchspan a{
          	text-align:center;
          	margin-top:10px;
          	padding:20px 40px;
          	background:#336699;
          	color: #fff;
          }
          .backcan{
          	position:absolute;
          	left:43%;
          	bottom:78%;
          	
          }
          .backbot{
          	padding:20px 50px;
          	background:#6699cc;
          	color:#fff;
          }
        </style>
    </head>
    <body>
       
        <%!
        String trans(String s)
        {
           String result=null;
           try
            {
               byte[] buffer=s.getBytes("ISO-8859-1");
               result=new String(buffer,"GB2312");
             }
           catch(Exception ex)
            {
                 System.out.println(ex.toString());
            }
           return result;
        }
        %>
        <%
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");
        Statement stmt=conn.createStatement();
        Statement stmt2=conn.createStatement();
        String inf1=request.getParameter("id");//房间号
        String inf2=request.getParameter("id2");
        String inf3=request.getParameter("id3");
        String inf4=request.getParameter("id4");
        String inf5=request.getParameter("id5");
        
        /*获取入住日数*/
        String date1=inf3.substring(0,8);//huoderiqi
        String date2=inf4.substring(0,8);
        int dt1=Integer.parseInt(date1);
        int dt2=Integer.parseInt(date2);
        int day=dt2-dt1;//入住天数
        String sqlmoney="select 价格 from 客房类别 where 编号 in (select 类型编号 from 客房信息 where 房间编号="+inf1+")";
        //类型编号查房间价格
        
        ResultSet rs2=stmt.executeQuery(sqlmoney);
        rs2.next();
        String money=rs2.getString("价格");
        int imoney=Integer.parseInt(money);
        
        int allmoney=imoney*day;
        
        ResultSet rs=stmt.executeQuery("select * from 客户信息");
        String sqldel="delete from 订房信息 where 身份证号= "+inf2;
        String sqlins="insert into 入住信息  values("+"'"+inf1+"'"+","+"'"+inf2+"'"+","+"'"+inf3+"'"+","+inf4+","+"'"+inf5+"'"+","+"'"+"yes"+"'"+","+allmoney+")";;//sql语句
        %>
        
        
        
        <%
        	stmt.executeUpdate(sqldel);//客户信息删除
        	stmt.executeUpdate(sqlins);//客户信息插入
        	
        %>
        
        <div class="backcan">
        	<a href="roomdone.jsp" class="backbot">该用户成功确认入住</a>
        </div>
        
        
        
        
        
     <div class="dock">
     	<div class="dockposi">
     		<a href="roomdetailinf.jsp">客房详细信息</a>
        	<a href="roombaseinf.jsp">客房基本信息</a>
        	<a href="peoinf.jsp">客户详细信息</a>
        	<a href="roomcheckin.jsp">客房预订信息</a>
        	<a href="roomdone.jsp">客房入住信息</a>
     	</div>
     </div>
     <div class="exitbot"><a href="login.jsp">EXIT</a></div>
     <div class="out">
     	
     </div>
     <%=money%>
    </body>
</html>
