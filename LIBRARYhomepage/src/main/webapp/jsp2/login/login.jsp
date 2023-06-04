<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서관 로그인</title>
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
			<div class="card">
				<div class="card-body">
					<form method="post" action="loginProcess.jsp" name="loginForm"
						onsubmit="return checkForm()">
						<div class="form-group">
							<label for="id">ID</label> <input type="text"
								class="form-control" id="id" name="id" placeholder="아이디를 입력하세요">
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" id="password" name="password"
								placeholder="비밀번호를 입력하세요">
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary">로그인</button>
							<button type="submit" class="btn btn-primary">회원가입</button>
						</div>
					</form>
				</div>
			</div>
		</div>

	</section>


	<script>
		function checkForm() {
			let f = document.loginForm;

			if (f.id.value === '') {
				alert('아이디를 입력하세요');
				f.id.focus();
				return false;
			}

			if (f.password.value === '') {
				alert('비밀번호를 입력하세요');
				f.password.focus();
				return false;
			}

			return true;
		}
	</script>
</body>
</html>









