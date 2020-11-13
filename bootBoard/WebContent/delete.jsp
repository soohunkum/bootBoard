<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="javax.naming.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판 데이터 처리</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("userId");
	%>
	<%
		if (session.getAttribute("userId") != null) {
		id = (String) session.getAttribute("userId");
		}
	
		if (id == null) {
		out.println("<script>");
		out.println("alert('로그인을 하세요.')");
		out.println("location.href = 'login.jsp'");
		out.println("</script>");
	}
	int bbsId = 0;
	if (request.getParameter("bbsId") != null)
		bbsId = Integer.parseInt(request.getParameter("bbsId"));
	if (bbsId == 0) {
		out.println("<script>");
		out.println("alert('유효하지 않은 글입니다.')");
		out.println("location.href = 'bbs.jsp'");
		out.println("</script>");
	}
	BbsDAO bbsDAO = new BbsDAO();
	int result = bbsDAO.delete(bbsId);
			
	bbsDAO.connClose();
	if (result == -1) {
		out.println("<script>");
		out.println("alert('글삭제에 실패했습니다.')");
		out.println("history.back()");
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("location.href = 'bbs.jsp'");
		out.println("</script>");
	}
	%>
</body>
</html>