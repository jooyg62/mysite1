<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% pageContext.setAttribute("newline", "\n"); %>
<!DOCTYPE html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="${pageContext.servletContext.contextPath}/assets/css/guestbook.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
	<c:import url='/WEB-INF/views/includes/header.jsp' />
		<div id="content">
			<div id="guestbook">
				<form action="${pageContext.servletContext.contextPath}/guestbook?a=add" method="post">
					<input type="hidden" name="a" value="insert">
					<table>
						<tr>
							<td>이름</td><td><input type="text" name="name"></td>
							<td>비밀번호</td><td><input type="password" name="password"></td>
						</tr>
						<tr>
							<td colspan=4><textarea name="contents" id="contents"></textarea></td>
						</tr>
						<tr>
							<td colspan=4 align=right><input type="submit" value=" 확인 "></td>
						</tr>
					</table>
				</form>
				<ul>
					<li>
						<table>
							<c:set var='count' value='${fn:length(list)}' />
							<c:forEach items='${list}' var='vo' varStatus='status'>
								<tr>
									<td>[${count-status.index }]</td>
									<td>${vo.name}</td>
									<td>${vo.regDate}</td>
									<td><a href="${pageContext.servletContext.contextPath}/guestbook?a=deleteform&no=${vo.no}">삭제</a></td>
								</tr>
								<tr>
									<td colspan=4>
									${fn:replace(vo.contents, newline, "</br>") }
									</td>
								</tr>
							</c:forEach>
						</table>
						<br>
					</li>
				</ul>
			</div>
		</div>
		<c:import url='/WEB-INF/views/includes/navigation.jsp'>
			<c:param name="menu" value="guestbook" />
		</c:import>
		<c:import url='/WEB-INF/views/includes/footer.jsp' />
	</div>
</body>
</html>