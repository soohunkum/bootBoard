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
<title>�Խ��� ������ ó��</title>
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
		out.println("alert('�α����� �ϼ���.')");
		out.println("location.href = 'login.jsp'");
		out.println("</script>");
	}
	int bbsId = 0;
	if (request.getParameter("bbsId") != null)
		bbsId = Integer.parseInt(request.getParameter("bbsId"));
	if (bbsId == 0) {
		out.println("<script>");
		out.println("alert('��ȿ���� ���� ���Դϴ�.')");
		out.println("location.href = 'bbs.jsp'");
		out.println("</script>");
	}
	BbsDAO bbsDAO = new BbsDAO();
	int result = bbsDAO.delete(bbsId);
			
	bbsDAO.connClose();
	if (result == -1) {
		out.println("<script>");
		out.println("alert('�ۻ����� �����߽��ϴ�.')");
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