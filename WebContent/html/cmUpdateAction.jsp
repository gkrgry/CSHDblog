<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.io.PrintWriter" %>
<%@ page import="board.CommentDAO" %>
    <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String userId = null;
int bId = 1;
int cId = Integer.parseInt(request.getParameter("cId"));
String cmContent = request.getParameter("cmContent");
if(session.getAttribute("userId") != null){
	userId = (String)session.getAttribute("userId");
}
// 로그인을 한 사람만 글을 쓸 수 있도록 코드를 수정한다.
if(userId != null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 하세요')");
	script.println("location.href='#'");
	script.println("</script>");
}else{ 
	if(bId==0 || cmContent==null){
		
	}else{
		userId="ddd";
		CommentDAO comDAO = new CommentDAO();
		
		int result=comDAO.update(bId, cId, cmContent);
		if(result==-1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('수정실패하였습니다.')");
			script.println("history.back()");
			script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('수정성공!')");
			script.println("location.href='deat.jsp'");
			script.println("</script>");
		}
	}
}
%>
</body>
</html>