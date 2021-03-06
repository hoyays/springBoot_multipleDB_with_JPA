<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>H2DB - Board Write</title>
		<link rel="stylesheet" href="/css/h2Board/write.css">
		<script type="text/javascript" src="/js/ckeditor/ckeditor.js"></script>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			/** 
			 * 목록으로 (이동)
			 */
			function goList(){
				
				location.href="/h2/list";
			}
			
			
			
			/** 
			 * 글쓰기 저장
			 */
			function goSave(){
				
				var title = $("#title").val();
				if(!title){
					alert("제목을 입력해 주세요!");
					$("#title").focus();
					return false;
				}
				
				var writer = $("#writer").val();
				if(!writer){
					alert("작성자를 입력해 주세요!");
					$("#writer").focus();
					return false;
				}
				
				var contents = CKEDITOR.instances.content.getData();
				if(!contents || contents == ''){
					alert("내용을 입력해 주세요!");
					CKEDITOR.instances.content.focus();
					return false;
				}

				$("#contents").val(contents);
				document.h2BoardFrm.submit();
			}
		
		</script>
	</head>
	<body>
		<!-- header include -->
		<%@ include file="../header.jsp" %>
		<!-- /header include -->
		
		<div id="title_area">
			<p><strong>H2DB</strong> Board Write</p>
		</div>
				
		<div id="write_area">
			<form action="/h2/save" method="post" name="h2BoardFrm">
				<table>
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tbody>
						<tr>
							<th>제목</th>
							<td>
								<input type="text" id="title" name="title" placeholder="제목을 입력해 주세요!">
							</td>
						</tr>
						<tr>
							<th>작성자</th>
							<td>
								<input type="text" id="writer" name="writer" placeholder="작성자 입력(추후 로그인 ID로 출력예정)">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<input type="text" id="content" placeholder="내용 입력">
								<!-- CKeditor 적용 -->
								<!-- 참고 : ckeditor 이용한 이미지 업로드(https://mine-it-record.tistory.com/277) -->
								<script type="text/javascript">
									//내용 input박스와 CKeditor 연결
									CKEDITOR.replace('content', {height: 500});  
								</script>
								<input type="hidden" id="contents" name="contents" value="">
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
						<input type="button" id="saveBtn" onclick="goSave()" value="저장">
						<input type="button" id="listBtn" onclick="goList()" value="목록">
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