<%@page import="com.poscoict.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.poscoict.guestbook.vo.GuestbookVo"%>

<%
	request.setCharacterEncoding("utf-8");
	String nostring = request.getParameter("no");
	Long no = Long.parseLong(nostring);
	String password = request.getParameter("password");

	GuestbookDao dao = new GuestbookDao();
	dao.delete(no, password);
	
	response.sendRedirect("/guestbook01");

%>
