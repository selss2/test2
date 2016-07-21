<%@page import="member.MemberBean"%>
<%@page import="member.MemberServiceImpl"%>
<%@page import="member.MemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>회원가입 result</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href=" ${css}/member.css" />
<style>
h1 {
	color: blue;
}

h5 {
	border: 1px solid black;
	width: 800px;
	margin: 0 auto;
}

p {
	color: red;
}

span.meta {
	width: 200px;
	background-color: yellow;
	float: left;
}

div.joinDiv {
	border: 1px dotted black;
	width: 500px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<div class="box">

<%
MemberService service = MemberServiceImpl.getInstance();
MemberBean mem = new MemberBean();

String id = request.getParameter("id");
String pw = request.getParameter("pw");
String ssn = request.getParameter("ssn");
String name = request.getParameter("name");
mem.setId(id);
mem.setPw(pw);
mem.setName(name);
mem.setSsn(ssn);
mem.setRegDate();
name = service.regist(mem);
application.log("(1)id :"+id+" (2)pw : "+pw+" (3)이름 : "+name);
if(id==""){
%>
<h2> 아이디 중복!!</h2>
<a href="${context}/member/service/regist.jsp">회원가입 다시하기</a>
<%
}else{
%>
		<span class="meta"> 이름 </span>
		<%=request.getParameter("name")%><br /> <span class="meta">
			ID </span>
		<%=request.getParameter("id")%><br /> <span class="meta"> PW
		</span>
		<%=request.getParameter("pw")%><br /> <span class="meta"> SSN
		</span>
		<%=request.getParameter("ssn")%>
		-
		<%=request.getParameter("ssn2")%><br /> <span class="meta">
			전공 </span>
		<%=request.getParameter("major")%><br /> <span class="meta">
			수강과목 : </span>
		<%
			String[] subjects = request.getParameterValues("subject");
			if (subjects != null) {
				for (int i = 0; i < subjects.length; i++) {
		%><%=subjects[i]%><br />
		<%
			}
			}
		%><br/>
		회원가입을 축하드립니다.
		<%=request.getParameter("name")%>님♥<br />
	<%} %>
		
<a href="${context}/member/member_controller.jsp"><img src="${img}/img/ThumbnailAction.jpg" alt="" width="10%" height="10%"/></a> 
<a href="${context}/index.jsp"><img src="${img}/img/home.png" alt="" width="10%" height="10%"/></a>
	</div>
</body>
</html>