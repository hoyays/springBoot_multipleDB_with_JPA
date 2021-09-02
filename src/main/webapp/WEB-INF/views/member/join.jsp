<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Member Join</title>
		<link rel="stylesheet" href="/css/member/join.css">
	</head>
	<body>
		<!-- header include -->
		<%@ include file="../header.jsp" %>
		<!-- /header include -->
	
		<div id="title_area">
			<p>Member Join</p>
		</div>
	
		<div id="write_area">
			<form action="">
				<table>
					<colgroup>
						<col width="35%">
						<col width="65%">
					</colgroup>
					<tbody>
						<tr>
							<th>ID</th>
							<td>
								<input type="text" id="" name="" placeholder="아이디">
							</td>
						</tr>
						<tr>
							<th>Name</th>
							<td>
								<input type="text" id="" name="" placeholder="이름">
							</td>
						</tr>
						<tr>
							<th>Password</th>
							<td>
								<input type="password" id="" name="" placeholder="비밀번호">
							</td>
						</tr>
						<tr>
							<th>Password 확인</th>
							<td>
								<input type="password" id="" name="" placeholder="비밀번호 확인">
							</td>
						</tr>
						<tr>
							<th>E-mail</th>
							<td>
								<input type="text" id="" name="" placeholder="이메일">
							</td>
						</tr>
					</tbody>
				</table>
				
				<div id="btn_area">
					<div id="btn_body">
						<input type="button" id="goSave" name="" value="가입">
						<a href="/"><input type="button" id="goList" name="" value="취소"></a>
					</div>
				</div>
			</form>
		</div>
		
		<!-- footer include -->
		<div id="footer_area">
			<%@ include file="../footer.jsp" %>
		</div>		
		<!-- /footer include -->
	
	</body>
</html>