<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="tex-align : center">
	<div style="width: 300px; margin: 0auto; text-align: Left;">
		<h1>은행 서비스</h1> <br />
		<ol>
			<li><a href="${context}/bank/add.do">계좌추가</a></li>
			<li><a href="${context}/bank/deposit.do">입금</a></li>
			<li><a href="${context}/bank/withdraw.do">출금</a></li>
			<li><a href="${context}/bank/update.do">수정</a></li>
			<li><a href="${context}/bank/delete.do">계좌해지</a></li>
			<li><a href="${context}/bank/search.do">검색</a></li>
			<li><a href="${context}/bank/list.do">계좌리스트</a></li>
			<li><a href="${context}/bank/count.do">계좌수</a></li>
		</ol>
		<a href="${context}/index.jsp"><img src="${img}/home.png" alt="home" width="50" height="50"/></a>
		<a href="${context}/member/service/logout.jsp"><img src="${img}/logout.png" alt="home" width="50" height="50"/></a>
		</div>
	</div>	
