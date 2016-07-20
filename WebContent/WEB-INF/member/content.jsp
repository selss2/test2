<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	div.memberClass{font-size: 20px}
</style>
<div id="" class="memberClass box">
	
	<h1>회원관리</h1>
	<div style="width: 300px;margin: 0 auto;text-align: left;">
	<ol>
		<li><a href="service/regist.jsp">회원가입</a></li>
		<li><a href="service/detail.jsp">내정보보기</a></li>
		<li><a href="service/update.jsp">내정보수정 </a></li>
		<li><a href="service/delete.jsp">탈퇴 </a></li>
		<li><a href="service/login.jsp">로그인</a></li>
		<li><a href="service/logout.jsp">로그아웃 </a></li>
		<li><a href="service/list.jsp">리스트 </a></li>
		<li><a href="service/find_by.jsp">검색</a></li>
		<li><a href="service/count.jsp">회원수</a></li>
	</ol>
	</div>
	<a href="${context}/index.jsp">
		<img src="${img}/home.png" alt="home" style="width: 30px"/>
	</a>
</div>
