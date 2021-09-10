<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>H2DB - Board List</title>
		<link rel="stylesheet" href="/css/h2Board/list.css">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		
			//modal 참고 블로그 : https://kuzuro.blogspot.com/2018/09/blog-post.html
			function showDetail(id){
				$("#modal").attr("style", "display:block");
				
				$.post(
					"/h2/detail",
					{
						"id":id
					},
					function(result){
						
						console.log(result);
						
						$("#title").text(result.title);
						$("#txtContents").text(result.contents);
						
					},
					"json"
				);//ajax
				
				
				
			}
			
			$(document).ready(function(){
			     $("#modalCloseBtn").click(function(){
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
			<p><strong>H2DB</strong> Board List</p>
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
					<!-- loop START -->
					<c:forEach var="dto" items="${map.listDto}">
					<tr>
						<td>${dto.id}</td>
						<td class="list_ttl_area"><a href="javascript:void(0)" onclick="showDetail(${dto.id})">${dto.title}</a></td>
						<td>${dto.writer}</td>
						<td>${dto.createDate}</td>
						<td>${dto.hitNum}</td>
					</tr>
					</c:forEach>
					<!-- loop END -->
				</tbody>
			</table>
		</div>
		
		<!-- View Page - Modal Start-->
		<div id="modal">
		   
		    <div class="modal_content">
		       	<p id="title">
		       		<!-- 상세페이지 제목이 들어가는 자리 -->
		       		<div id="modalCloseBtn"></div>
		       	</p>
		       	<div id="detailContents">
		       		<div id="txtContents">
		       			<!-- 상세페이지 내용이 들어가는 자리 -->
		       		</div>

		       		<div id="prevNext">
		       			<div class="list">
		       				<p class="ttl">이전글</p>
		       				<a>글 제목입니다.</a>
		       			</div>
		       			<div class="list">
		       				<p class="ttl">다음글</p>
		       				<a>글 제목입니다.</a>
		       			</div>
		       		</div>
		       		
		       		<div id="btn_area">
						<div id="btn_body">
							<input type="button" id="goSave" name="" value="수정">
						</div>
					</div>
					
		       	</div>
		    </div><!-- /modal_content -->
		    <div class="modal_layer"></div>
		</div>
		<!-- View Page - Modal END-->
		
		
		<div id="writeBtn_area">
			<a href="/h2/write"><input type="button" id="" name="" value="WRITE"></a>
		</div>
		
		
		<!-- 
		(참고) Page Number 가운데 정렬 : 
		https://eggmoneyna811.tistory.com/entry/paging%EB%B6%80%EB%B6%84-%EA%B0%80%EC%9A%B4%EB%8D%B0-%EC%A0%95%EB%A0%AC
		 -->
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