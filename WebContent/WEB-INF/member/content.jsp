<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<div style="tex-align : center">
	<div style="width: 300px; margin: 0auto; text-align: Left;">
		<h1>학적 서비스</h1> <br />
		<ol>
			<li><a href="${context}/member/regist.do">회원가입</a></li>
				<li><a href="${context}/member/find_by_id.do">내정보보기</a></li>
				<li><a href="${context}/member/update.do">내정보수정</a></li>
				<li><a href="${context}/member/delete.do">탈퇴</a></li>
				<li><a href="${context}/member/login.do">로그인</a></li>
				<li><a href="${context}/member/logout.do">로그아웃</a></li>
				<li><a href="${context}/member/list.do">리스트</a></li>
				<li><a href="${context}/member/find_by.do">검색</a></li>
				<li><a href="${context}/member/count.do">전체 회원수</a></li>
		</ol>
		<a href="${context}/index.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/service/logout.jsp"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
	</div>	

