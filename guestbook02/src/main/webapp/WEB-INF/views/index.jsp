<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.poscoict.guestbook.dao.GuestbookDao"%>
<%@page import="com.poscoict.guestbook.vo.GuestbookVo"%>
<% 
	List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
	GuestbookDao dao = new GuestbookDao();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>

	<form action="<%=request.getContextPath()%>/gb?a=add" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
	<br>
	<%
		int count = dao.selectCnt();
		for(GuestbookVo vo : list) {
	%>
	<table width=510 border=1>
		<tr>
			<td><%= count %></td>  
			<td><%= vo.getName() %></td>
			<td><%= vo.getReg_date() %></td>
		</tr>
		<tr>
			<td colspan = 4><%= vo.getMessage().replace("\n", "<br>") %></td>
		</tr>
		<td><a href="<%=request.getContextPath()%>/gb?no=<%= vo.getNo() %>&a=deleteform">삭제</a></td>
	</table>
	<%
		count--;
		}
	%>
</body>
</html>