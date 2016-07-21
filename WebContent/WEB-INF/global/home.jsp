<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="top.jsp" />
<jsp:include page="header.jsp" />
<jsp:include page="nav.jsp" />
<div style="text-align: center">
<h2>서비스를 이용하시려면 회원가입을 하셔야 합니다.</h2>
<a href ="${context}/member.do?page=regist">회원가입하러 가기</a><br/>
<a href ="${context}/member.do?page=login"> 로그인 하러 가기</a><br/>
<a href ="${context}/global.do?page=main"> [임시]글로벌메인</a><br/>

</div>
<jsp:include page="footer.jsp" />
<jsp:include page="end.jsp" />