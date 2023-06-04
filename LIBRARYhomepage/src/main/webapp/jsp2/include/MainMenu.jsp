<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<link rel="stylesheet" href="/LIBRARYhomepage/jsp2/css/layout.css">

<div class="mark-pic">
	<img src="/LIBRARYhomepage/image/5.png" alt="성남시 분당도서관">
</div>

<div class="book-search">
		<div class="search-container">
			<input type="text" name="search" placeholder="도서 검색">
			<button type="submit">검색</button>
		</div>
</div>



<div class="menu">
	<c:if test="${loginUser.type eq 'S'}">
		<a href="#" class="menu-link">회원관리</a>
	</c:if>
	<a href="#" class="menu-link">게시판</a>

	<c:choose>
		<c:when test="${empty loginUser}">
			<a href="#" class="menu-link">도서관안내</a>
			<a href="#" class="menu-link">전자책</a>
			<a href="#" class="menu-link">스마트 도서관</a>
			<a href="#" class="menu-link">열람실좌석현황</a>
			<a href="#" class="menu-link">회원가입</a>
			<a href="${pageContext.request.contextPath}/jsp2/login/login.jsp" class="menu-link">로그인</a>
		</c:when>
		<c:otherwise>
			<a href="#" class="menu-link">마이페이지</a>
			<a href="${pageContext.request.contextPath}/jsp2/login/logout.jsp" class="menu-link">로그아웃</a>
		</c:otherwise>
	</c:choose>
</div>


<div class="favorite-user-wrapper">
	<c:if test="${not empty loginUser}">
		<span class="user">[${loginUser.name}(${loginUser.id})님
			로그인중...]</span>
	</c:if>
</div>

<div class="menu2">
	<div class="menu2">


		<div class="back-pic">
			<img src="/LIBRARYhomepage/image/8.jpg"
				style="position: relative; top: 10px; width: 100%; height: 400px;"
				alt="도서관사진">
		</div>




	</div>

	<div class="content">
		<h2 class="book-section-title" style="font-weight: 100px">최신 추천
			도서</h2>
		<br>
		<div class="book-images">
			<div class="book1">
				<img src="/LIBRARYhomepage/image/1.jpg" alt="사진1">
			</div>
			<div class="book2">
				<img src="/LIBRARYhomepage/image/2.jpg" alt="사진2">
			</div>
			<div class="book3">
				<img src="/LIBRARYhomepage/image/3.jpg" alt="사진3">
			</div>
			<div class="book4">
				<img src="/LIBRARYhomepage/image/4.jpg" alt="사진4">
			</div>
			<div class="book5">
				<img src="/LIBRARYhomepage/image/5.jpg" alt="사진5">
			</div>
			<div class="book6">
				<img src="/LIBRARYhomepage/image/6.jpg" alt="사진6">
			</div>
		</div>
	</div>

	<div class="content">

		<div class="book-images">
			<div class="book1">
				<img src="/LIBRARYhomepage/image/1.jpg" alt="사진1">
			</div>
			<div class="book2">
				<img src="/LIBRARYhomepage/image/2.jpg" alt="사진2">
			</div>
			<div class="book3">
				<img src="/LIBRARYhomepage/image/3.jpg" alt="사진3">
			</div>
			<div class="book4">
				<img src="/LIBRARYhomepage/image/4.jpg" alt="사진4">
			</div>
			<div class="book5">
				<img src="/LIBRARYhomepage/image/5.jpg" alt="사진4">
			</div>
			<div class="book6">
				<img src="/LIBRARYhomepage/image/6.jpg" alt="사진6">
			</div>
		</div>
	</div>

	<div class="coment"></div>

	<footer>
		<%@ include file="/jsp2/include/bottom.jsp"%>
	</footer>