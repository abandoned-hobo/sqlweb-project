<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="javax.sql.*" %>  
<%  //导入java包
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <title>新建预订信息</title>
      <style type="text/css">
        .tablesearch{
          border: 1px solid #ccc;
        }
        .tablesearch td{
          border: 1px solid #ccc;
          width:200px;
        }
        .insertback{
          background: #fff;
          width: 900px;
          height: 200px;
          position: fixed;
          bottom: 10px;
          left: 30%;
        }
        .insertback div,input{
          text-align: center;
          margin-top: 5px;
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
            	width:100px;
            	height:40px;
            	border:none;
            	background:#355bb1b3;
            	color:#fff;
            	position:relative;
            	left:350px;
            	top:30px;}
            .backtext{
            	width:800px;
            	text-align:center;
            	color:#718cc8;
            	font-size:18px;
            }/*网页表单设计%*/
      </style>
  </head>  
<body>
            <% 
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://127.0.0.1:1433;DatabaseName=test","yhblsqt","19980322");//连接数据库
            Statement stmt=conn.createStatement();
            String inffangjianhao=request.getParameter("id1");
            String infshenfenzhenghao=request.getParameter("id2");
            String infdaodian=request.getParameter("id3");
            String inflikai=request.getParameter("id4");
            String infrenshu=request.getParameter("id5");
            String infzaocan=request.getParameter("id6");
            String infjine=request.getParameter("id7");
            String sql1 = "insert into 入住信息  values("+"'"+inffangjianhao+"'"+","+"'"+infshenfenzhenghao+"'"+","+"'"+infdaodian +"'"+","+inflikai+","+"'"+infrenshu+"'"+","+"'"+infzaocan+"'"+","+infjine+")";  
            String flagid2="select * from 客户信息 where 身份证号="+infshenfenzhenghao;
            /*判断当前身份证号是否存在*/
            String flagid="select * from 客户信息 where 身份证号="+"'"+infshenfenzhenghao+"'";
            ResultSet rs=stmt.executeQuery(flagid);
            while(rs.next()){
            	String sql = "insert into 入住信息  values("+"'"+inffangjianhao+"'"+","+"'"+infshenfenzhenghao+"'"+","+"'"+infdaodian +"'"+","+inflikai+","+"'"+infrenshu+"'"+","+"'"+infzaocan+"'"+","+infjine+")";;  
                stmt.executeUpdate(sql);
                String nullinf="yes";
                String sqlup="update 客房信息  set 入住状态 = "+"'"+nullinf+"'"+" where 房间编号 = "+inffangjianhao;
                stmt.executeUpdate(sqlup);/*插入入住信息并更新客房信息*/
                %> 
                <h2>已插入以下入住信息</h2>
			<table class="tablesearch">
	              <tr>
	                <td align="center">房间编号</td>
	                <td align="center">到店时间</td>
	                <td align="center">离开时间</td>
	                <td align="center">入住人数</td>
	                <td align="center">身份证号</td>
	                <td align="center">早餐需求</td>
	                <td align="center">消费金额</td>
	              </tr>
		            <tr>
		                <td align="center"><%=inffangjianhao %></td>
		                <td align="center"><%=infdaodian %></td>
		                <td align="center"><%=inflikai %></td>
		                <td align="center"><%=infrenshu %></td>
		                <td align="center"><%=infshenfenzhenghao %></td>
		                <td align="center"><%=infzaocan %></td>
		                <td align="center"><%=infjine %></td>
		            </tr> 
        	</table>
        	<div class="insertback">
            	<div class="backtext">按下BACK返回客户信息界面</div>
            	<input type="button" value="BACK" class="backbot" onclick="javascript:document.location.href='peoinf.jsp';">    
        	</div>	
            <%
            break;
            } %>
            
            <%
            	rs=stmt.executeQuery(flagid);
            	while(!rs.next()){%>
            		<div class="backinf">
		        		<div><h2>客户信息不存在，请先录入客户信息</h2></div>
		        		<div><h2>按下跳转客户详情表</h2></div>
		        		<input type="button" class="backbot" value="BACK" onclick="javascript:document.location.href='peoinf.jsp';"> 
		    		</div>
            <%
            	break;}
            %>     
</body>     
</html> 