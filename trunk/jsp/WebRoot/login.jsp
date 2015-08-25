<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("username");
	String pwd = request.getParameter("password");
	
	
	if(name==null||pwd==null){
		response.sendRedirect("index.jsp");
		return;
	}	

	System.out.println("name→"+name+"pwd→" + pwd);
	
	
	if("aa".equals(name) && "123".equals(pwd)){
		response.sendRedirect("main.jsp");		
	}else{
		
		response.sendRedirect("index.jsp");
	}
%>
