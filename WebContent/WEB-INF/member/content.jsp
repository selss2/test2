<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="tex-align : center">
	<div style="width: 300px; margin: 0auto; text-align: Left;">
		<h1>회원 서비스</h1>
		<ol>
		<li><a href="${context}/member.do?page=regist">회원가입</a></li>
		<li><a href="${context}/member.do?page=detail">내정보보기</a></li>
		<li><a href="${context}/member.do?page=update">내정보수정 </a></li>
		<li><a href="${context}/member.do?page=delete">탈퇴 </a></li>
		<li><a href="${context}/member.do?page=login">로그인</a></li>
		<li><a href="${context}/member.do?page=logout">로그아웃 </a></li>
		<li><a href="${context}/member.do?page=list">리스트 </a></li>
		<li><a href="${context}/member.do?page=find_by">검색</a></li>
		<li><a href="${context}/member.do?page=count">회원수</a></li>
		</ol>
		<a href="${context}/index.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/service/logout.jsp"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
	</div>	
