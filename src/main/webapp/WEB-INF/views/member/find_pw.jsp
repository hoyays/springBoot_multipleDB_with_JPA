<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>PW 찾기</title>
		<link rel="stylesheet" href="/css/member/find_pw.css">
	</head>
	<body>
		<!-- header include -->
		<%@ include file="../header.jsp" %>
		<!-- /header include -->
		
		<div id="title_area">
			<h3>비밀번호 찾기</h3>
			<h1>아이디 확인 후<br>비밀번호를 다시 설정하실 수 있습니다.</h1>
		</div>
		
		<div id="findInfo">
			<form action="">
				<table>
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tbody>
						<tr>
							<th>ID</th>
							<td>
								<input type="text" id="" name="" placeholder="아이디를 입력해 주세요!">
								<input type="button" id="" name="" value="확인">
							</td>
						</tr>
					</tbody>
				</table>		
			</form>
		</div>
		
		<div id="btn_area">
			<div id="btn_body">
				<a href="/"><input type="button" id="goSave" name="" value="취소"></a>
			</div>
		</div>
		
		<!-- footer include -->
		<div id="footer_area">
			<%@ include file="../footer.jsp" %>
		</div>		
		<!-- /footer include -->
		
	
	</body>
</html>