<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>H2DB - Board Write</title>
		<link rel="stylesheet" href="/css/h2Board/write.css">
	</head>
	<body>
		<!-- header include -->
		<%@ include file="../header.jsp" %>
		<!-- /header include -->
		
		<div id="title_area">
			<p>H2DB Board Write</p>
		</div>
		<!-- 
		<div id="writeDetail_area">
			<table>
				<colgroup>
					<col width="10%">
					<col width="50%">
					<col width="15%">
					<col width="15%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>No</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>			
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>111</td>
						<td class="list_ttl_area"><a href="javascript:void(0)" onclick="modal_open()">테스트제목입니다.</a></td>
						<td>홍길동</td>
						<td>2021-09-01</td>
						<td>10</td>
					</tr>
				</tbody>
			</table>
		</div>
		 -->
		
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
					<input type="button" id="" name="" value="저장">
					<input type="button" id="" name="" value="목록">
				</div>
			</form>
		</div>
		
		
	</body>
</html>