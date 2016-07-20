<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="${context}/global/top.jsp"/>
	<jsp:include page="${context}/global/header.jsp"/>
	<jsp:include page="${context}/global/navi.jsp"/>
<style>
div.memberClass{font-size: 20px;}
</style>
	<div id="box" class="memberClass box">
	<h1>회원관리</h1>
	<div style="width: 300px; margin: 0 auto; text-align: left;">
		<ol>
			<li><a href="service/regist.jsp">등록</a></li>
			<li><a href="service/update.jsp">수정</a></li>
			<li><a href="service/delete.jsp">삭제</a></li>
			<li><a href="service/list.jsp">목록 </a></li>
			<li><a href="service/count.jsp">카운트 </a></li>
			<li><a href="service/list.jsp">리스트 </a></li>
			<li><a href="service/search.jsp">검색(이름)</a></li>
		</ol>
		</div>
		<a href="${context}/index.jsp"><img src="${img}/img/home.png" alt="" width="10%" height="10%"></a>
	</div>
	<div id="box2" class="memberClass">
	</div>
<jsp:include page="${context}/global/footer.jsp"/>
<jsp:include page="${context}/global/end.jsp"/>