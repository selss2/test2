<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<jsp:include page="${context}/global/top.jsp"/>
<jsp:include page="${context}/global/header.jsp"/>
<div class="box">
	<form action="${context}/result/login_result.jsp" method="post">
		<span class="meta">ID</span> <input type="text" name="id"/><br />
		<span class="meta">비밀번호</span> <input type="password" name="pw" /><br />
		<br /><br /><br />
		<input type="submit" value="로그인" />
		<input type="reset" value="취소" />
	</form>
	
	</div>	
<jsp:include page="${context}/global/footer.jsp"/>
<jsp:include page="${context}/global/end.jsp"/>

</body>
</html>