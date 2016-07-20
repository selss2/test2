<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="${context}/global/top.jsp"/>
	<jsp:include page="${context}/global/header.jsp"/>
	<jsp:include page="${context}/global/navi.jsp"/>
		<div class="box">
			<h2>서비스를 이용하시려면 회원가입이 필요합니다.</h2>
			<a href="${context}/member/service/regist.jsp">회원가입 하러 가기</a><br/>
			<a href="${context}/member/service/login.jsp">로그인 하러 가기</a><br/>
			<a href="${context}/global/main.jsp">[임시]메인화면 바로 가기</a><br/>
		</div>
<jsp:include page="${context}/global/footer.jsp"/>
<jsp:include page="${context}/global/end.jsp"/>