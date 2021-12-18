<%@page import="com.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="EUC-KR" />
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<style>
</style>
<body style="text-align: center;">
	<%
		MemberVO vo = (MemberVO) session.getAttribute("member");
	//오브젝트 타입으로 자동 업케스팅 되기때문에 MemberVO타입으로 강제형변환 시켜줘야 한다.
	%>

	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Menu -->
		<nav id="Update">
		<ul class="actions vertical">
			<li><h5>회원정보수정</h5></li>
			<form action="UpdateService" method="post">
				<%
					if (vo == null) {
				%>
				<li>로그인을해주세요</li>
				<%
					} else {
				%>
				<li>접속한 Email :<%=vo.getEmail()%>
				</li>
				<%
					}
				%>
				<li><input name="pw" type="password" placeholder="PW를 입력하세요"
					style="width: 500px; margin: 0 auto;"></li>
				<li><input name="tel" type="text" placeholder="전화번호를 입력하세요"
					style="width: 500px; margin: 0 auto;"></li>
				<li><input name="address" type="text" placeholder="집주소를 입력하세요"
					style="width: 500px; margin: 0 auto;"></li>
				<li><input type="submit" value="JoinUs" class="button fit"
					style="width: 500px; margin: 0 auto;"></li>
			</form>
		</ul>
		</nav>
	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>

