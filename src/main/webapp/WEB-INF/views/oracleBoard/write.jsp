<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Oracle - Board Write</title>
		<link rel="stylesheet" href="/css/oracleBoard/write.css">
	</head>
	<body>
	
		<!-- header include -->
		<%@ include file="../header.jsp" %>
		<!-- /header include -->
	
		<div id="title_area">
			<p><strong>Oracle</strong> Board Write</p>
		</div>
		
		<div id="write_area">
			<form action="">
				<table>
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tbody>
						<tr>
							<th>제목</th>
							<td>
								<input type="text" id="" name="" placeholder="제목을 입력해 주세요!">
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>
								<input type="text" id="" name="" placeholder="작성자 입력">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<input type="text" id="" name="" placeholder="내용 입력">
							</td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td>
								<input type="file" id="" name="" placeholder="첨부파일 입력">
							</td>
						</tr>
					</tbody>
				</table>
				
				<div id="btn_area">
					<div id="btn_body">
						<input type="button" id="goSave" name="" value="저장">
						<a href="/oracle/list"><input type="button" id="goList" name="" value="목록"></a>
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