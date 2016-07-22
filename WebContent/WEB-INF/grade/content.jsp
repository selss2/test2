<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="tex-align : center">
	<div style="width: 300px; margin: 0auto; text-align: Left;">
		<h1>성적 서비스</h1>
		<ol>
			<li><a href="${context}/grade.do/page=login">로그인</a></li>
			<li><a href="${context}/grade.do/page=regist">등록</a></li>
			<li><a href="${context}/grade.do/page=count">목록</a></li>
			<li><a href="${context}/bank.do/page=update">수정</a></li>
			<li><a href="${context}/bank.do/page=search">검색</a></li>
			<li><a href="${context}/bank.do/page=delete">삭제</a></li>
		</ol>
		<a href="${context}/index.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/service/logout.jsp"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
	</div>	