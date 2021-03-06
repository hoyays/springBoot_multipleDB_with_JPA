<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Oracle - Board List</title>
		<link rel="stylesheet" href="/css/oracleBoard/list.css">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		
			//modal 참고 블로그 : https://kuzuro.blogspot.com/2018/09/blog-post.html
			function modal_open(){
				$("#modal").attr("style", "display:block");
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
			<p><strong>Oracle</strong> Board List</p>
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
		
		<!-- View Page - Modal Start-->
		<div id="modal">
		   
		    <div class="modal_content">
		       	<p id="title">
		       		제목입니다.
		       		<div id="modalCloseBtn"></div>
		       	</p>
		       	<div id="detailContents">
		       		<div id="txtContents">
		       			내용입니다.<br>
		       			1<br>
		       			2<br>
		       			3<br>
		       			4<br>
		       			5<br>
		       			6<br>
		       			7<br>
		       			8<br>
		       			9<br>
		       			10<br>
		       			11<br>
		       			12<br>
		       			13<br>
		       			14<br>
		       			15<br>
		       			16<br>
		       			17<br>
		       			18<br>
		       			19<br>
		       			20<br>
		       			1<br>
		       			2<br>
		       			3<br>
		       			4<br>
		       			5<br>
		       			6<br>
		       			7<br>
		       			8<br>
		       			9<br>
		       			10<br>
		       			11<br>
		       			12<br>
		       			13<br>
		       			14<br>
		       			15<br>
		       			16<br>
		       			17<br>
		       			18<br>
		       			19<br>
		       			20<br>
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
							<input type="button" id="goSave" name="" value="저장">
						</div>
					</div>
					
		       	</div>
		    </div><!-- /modal_content -->
		    <div class="modal_layer"></div>
		</div>
		<!-- View Page - Modal END-->
		
		
		<div id="writeBtn_area">
			<a href="/oracle/write"><input type="button" id="" name="" value="WRITE"></a>
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