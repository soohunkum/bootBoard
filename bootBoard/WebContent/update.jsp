<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%
	String id = (String) session.getAttribute("userId");
%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />

<title>JSP �Խ���</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">JSP �Խ���</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-targer="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active" href="main.jsp">����</a>
				</li>
				<li class="nav-item"><a class="nav-link active" href="bbs.jsp">�Խ���<span
						class="sr-only">(current)</span></a></li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">�����ϱ�</a>
					<div class="dropdown-menu" aria-labelledby="navbarDrdpdown">
						<%
							if (id == null) {
						%>
						<a class="dropdown-menu" href="login.jsp"> �α��� </a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="join.jsp">ȸ������</a>
						<%
							} else {
						%>
						<a class="dropdown-item" href="logoutAction.jsp">�α׾ƿ�</a>
						<%
							}
						%>
					</div></li>
			</ul>
		</div>
	</nav>
	<%
		if (session.getAttribute("userId") != null)
		id = (String) session.getAttribute("userId");
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
	Bbs bbs = bbsDAO.getBbs(bbsId);
	if (!id.equals(bbs.getUserId())) {
		out.println("<script>");
		out.println("alert('������ �����ϴ�.')");
		out.println("location.href = 'bbs.jsp'");
		out.println("</script>");
	}
	%>
	<div class="container pt-3">
		<form method="post" action="updateAction.jsp?bbsId<%=bbsId%>">
			<table class="table table-striped text-center">
				<thead class="thead-light">
					<tr>
						<th>�Խ��� �ۼ���</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control"
							placeholder="�� ����" name="bbsTitle" maxlength="50"
							value="<%=bbs.getBbsTitle()%>" /></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="�� ����"
								name="bbsContent" maxlength="2048"
								style="height: 350px; resize: none;"><%=bbs.getBbsContent()%></textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<a href="bbs.jsp" class="btn btn-success float-legt">���</a>
			<button type="submit" class="btn btn-primary float-right">�۾���</button>
		</form>
	</div>


	<!-- Optional JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
</body>
</html>