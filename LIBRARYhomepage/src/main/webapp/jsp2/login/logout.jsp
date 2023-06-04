<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	// 여기에 로그아웃 처리 로직을 작성합니다.
	
	// 세션 초기화
	session.invalidate();
%>
<html>
<head>
<meta charset="UTF-8">
<title>도서관 로그아웃</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" href="/LIBRARYhomepage/jsp2/css/layout.css">
</head>
<body>
	<header>
		<%@ include file="/jsp2/include/MainMenu.jsp"%>
	</header>
	<section>
	
		<div class="loginbox">
			<div class="row justify-content-center mt-5">
				<div class="col-md-6">
					<h2 class="text-center mb-4">로그아웃</h2>
					<div class="card">
						<div class="card-body">
							<p>로그아웃 되었습니다.</p>
							<p><a href="/jsp2/login/login.jsp">다시 로그인하기</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<%@ include file="/jsp2/include/bottom.jsp"%>
	</footer>
</body>
</html>