<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${css}/global.css" />
<div id="nav">
	<div style="float: right; margin-right: 100px">${result}님 환영합니다</div>
<%-- 	<div style="float: right; margin-right: 100px">${result}님 환영합니다</div> --%>
 	<ul>
		<li><a href="${context}/member/main.do">회원관리</a></li>
		<li><a href="${context}/grade/main.do">성적관리</a></li>
		<li><a href="${context}/bank/main.do">계좌관리</a></li>
		<li><a href="${context}/global/school_info.do">학교소개</a></li>
	</ul>
</div>