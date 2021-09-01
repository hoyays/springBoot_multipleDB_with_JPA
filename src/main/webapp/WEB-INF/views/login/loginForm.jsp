<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/css/login/loginForm.css">
		<title>JPA Board(ft.Multiple DB)</title>
	</head>
	<body>
		<!-- header include -->
		<%@ include file="../header.jsp" %>
		<!-- /header include -->
		<div id="title_area">
			<p>로그인</p>
		</div>
		<form action="">
		<div id="loginInfo_area">
			<div id="id_pw_area">
				<input type="text" id="" name="" placeholder="아이디"><br>
				<input type="password" id="" name="" placeholder="비밀번호"><br>
			</div>
			<input type="checkbox" id="userIdSave" name="" value="Y">
			<label for="userIdSave">아이디저장</label>
		</div>
		<div id="loginBtnBox">
			<a>로그인</a>
		</div>
		<div id="memberInfo_area">
			<a>회원가입하기 ></a>
			<ul id="lookingFor_area">
				<li>아이디찾기</li>
				<li>|</li>
				<li>비밀번호찾기</li>
			</ul>
		</div>
		</form>
		<!-- footer include -->
		<%@ include file="../footer.jsp" %>
		<!-- /footer include -->
	</body>
</html>