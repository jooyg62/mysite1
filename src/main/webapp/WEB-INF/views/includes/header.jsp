<%@page import="com.cafe24.mysite.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	UserVo authUser = (UserVo) session.getAttribute("authUser");
%>
		<div id="header">
			<h1>MySite</h1>
			<ul>
				<%
					if(authUser == null) {
				%>
				<li><a href="<%=request.getContextPath()%>/user?a=loginform">�α���</a><li>
				<li><a href="<%=request.getContextPath()%>/user?a=joinform">ȸ������</a><li>
				<%
					} else {
				%>
				<li><a href="<%=request.getContextPath()%>/user?a=updateform">ȸ����������</a><li>
				<li><a href="<%=request.getContextPath()%>/user?a=logout">�α׾ƿ�</a><li>
				<li>�� �ȳ��ϼ��� ^^;</li>
				<%
					}
				%>
			</ul>
		</div>