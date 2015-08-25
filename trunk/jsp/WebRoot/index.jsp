<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>myjsp</title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <style type="text/css">
    	span{
    		color:red;
    	}
    	<%--h3{text-align:center;}
    	form{text-align:center;}
    	--%>
    </style>
  </head>
  <body>
   <h3>登陆页面</h3>
   <form action="login.jsp" method="post"id="myform">
   	<input type="text" name="username" /><span id="name_error"></span></br>
   	<input type="password" name="password"/><span id="pwd_error"></span></br>
   	<input type="button" value="login" id="btn"/></br>
   </form>
   
   <script type="text/javascript">
   	$(document).ready(function(){
   		$("#btn").click(function(){
   			var name = $("input[name='username']").val();
   			var password = $("input[name='password']").val();
   			if(name.trim()==""){
   				$("#name_error").html("请输入用户名");
   				return;
   			}
   			if(password==""){
				$("#pwd_error").html("请输入密码");
				return;
   			}
   			$("#myform").submit();
   		});
   	});
   </script>
  </body>
</html>
