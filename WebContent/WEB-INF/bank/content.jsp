<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="tex-align : center">
	<div style="width: 300px; margin: 0auto; text-align: Left;">
		<h1>은행 서비스</h1>
		<ol>
			<li><a href="${context}/bank.do/page=add">계좌추가</a></li>
			<li><a href="${context}/bank.do/page=deposit">입금</a></li>
			<li><a href="${context}/bank.do/page=withdraw">출금</a></li>
			<li><a href="${context}/bank.do/page=update">수정</a></li>
			<li><a href="${context}/bank.do/page=delete">계좌해지</a></li>
			<li><a href="${context}/bank.do/page=search">검색</a></li>
			<li><a href="${context}/bank.do/page=list">계좌리스트</a></li>
			<li><a href="${context}/bank.do/page=count">계좌수</a></li>
		</ol>
		<a href="${context}/index.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/service/logout.jsp"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
	</div>	
