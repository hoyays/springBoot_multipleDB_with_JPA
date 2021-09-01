<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>H2DB - Board List</title>
		<link rel="stylesheet" href="/css/h2Board/list.css">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		
			//modal 참고 블로그 : https://kuzuro.blogspot.com/2018/09/blog-post.html
			function modal_open(){
				$("#modal").attr("style", "display:block");
			}
			
			$(document).ready(function(){
			     $("#modal_close_btn").click(function(){
			        $("#modal").attr("style", "display:none");
			    });      
			});
		</script>
		
	</head>
	<body>
		<!-- header include -->
		<%@ include file="../header.jsp" %>
		<!-- /header include -->
		
		<div id="title_area">
			<p>H2DB Board List</p>
		</div>
		<div id="listTop_area">
			<div id="searchBox">
				<form action="">
					<select>
						<option>제목+내용</option>
						<option>제목</option>
						<option>내용</option>
					</select>
					<input type="text" id="" name="" placeholder="검색어를 입력해 주세요!">
					<input type="button" id="" name="" value="검색">				
				</form>
			</div>
			<p id="totalCnt_area">전체<strong id="totalCnt">215</strong>건</p>
		</div>
		<div id="listDetail_area">
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
		
		<!-- modal Test-->
		<div id="modal">
		   
		    <div class="modal_content">
		        <h2>모달 창</h2>
		       
		        <p>모달 창 입니다.</p>
		       
		        <button type="button" id="modal_close_btn">모달 창 닫기</button>
		       
		    </div>
		   
		    <div class="modal_layer"></div>
		</div>
		<!-- /modal Test -->
		
		
		
		<div id="pageNum_area">
			<div id="paging_body">
				<ul id="pageNum_ul">
					<li class="first"></li>
					<li class="prev"></li>
					<li class="pageNum">1</li>
					<li class="pageNum">2</li>
					<li class="pageNum">3</li>
					<li class="pageNum">4</li>
					<li class="pageNum">5</li>
					<li class="pageNum">6</li>
					<li class="pageNum">7</li>
					<li class="pageNum">8</li>
					<li class="pageNum">9</li>
					<li class="pageNum">10</li>
					<li class="next"></li>
					<li class="last"></li>
				</ul>
			</div>
		</div>
		<!-- footer include -->
		<div id="footer_area">
			<%@ include file="../footer.jsp" %>
		</div>		
		<!-- /footer include -->
	</body>
</html>