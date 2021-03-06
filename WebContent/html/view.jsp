<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% request.setCharacterEncoding("utf-8");
     response.setContentType("text/html;charset=utf-8"); %>
  <%@ page import="java.io.PrintWriter" %>
  <%@ page import="board.BoardVO" %>
  <%@ page import="board.BoardDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userId = null;
		if(session.getAttribute("userId") != null){
			userId = (String)session.getAttribute("userId");
		}
	%>
	
	<%	
	//bId 를 초기화시키고
	//bId라는 데이터가 넘어온 것이 존재하면 캐스팅하여 변수담기
	int bId = 0;
	if(request.getParameter("bId") !=  null){
		bId=Integer.parseInt(request.getParameter("bId"));
	}
	
	//만약 넘어온 데이터 없을경우
	if(false){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}
	
	// 유요한 글이라면 구체적인 정보를 bo라는 인스턴스에 담기
	BoardVO bo = new BoardDAO().getBoardVO(1);
	//BoardVO bcount = new BaordDAO().getCount(bId);
	%>
	<!--게시판 글보기 양식 영역시작-->
<div class="container">
			<div class="row">
			
					<table >
							<thead>
								<tr>
									<th colspan="2" style="background-color:#eeeeee;text-align:center;">
										게시판 글 보기
									</th>
								</tr>
							</thead>
							<tbody>
								<tr> 
									<td style="width: 20%;">
										글 제목
									</td>
									<td colspan="2">
										<%= bo.getbTitle().replaceAll("","&nbsp;").replaceAll("<","&lt").replaceAll(">", "&gt").replaceAll("\n","<br>") %>
									</td>
								</tr>
								<tr><td>작성자</td>
									<td colspan="1">
										<%= bo.getuserId().replaceAll("","&nbsp;").replaceAll("<","&lt").replaceAll(">", "&gt").replaceAll("\n","<br>") %>
									</td>
									<td>작성일</td>
									<td colspan="1">
										<%= bo.getbDate().substring(0,11)+bo.getbDate().substring(11,13)+"시"
										+ bo.getbDate().substring(14,16)+"분" %>
									</td>
								</tr>
								<tr>
									<td>이미지</td>
									<td colspan="2" style="height: 200px; text-align:left">
									<%if(bo.getbimage()==null){ //이미지가 없음때%> 
									
									<%}else { //이미지가 있을때 %>
								      	<img src="../upload/<%=bo.getbimage() %>">
								     <%} %> 	
									</td>
								</tr>
							
								<tr>
									<td>내용</td>
									<td colspan="2" style="height: 200px; text-align:left">
										<%=bo.getbContent().replaceAll("","&nbsp;").replaceAll("<","&lt").replaceAll(">", "&gt").replaceAll("\n","<br>") %>
									</td>
								</tr>
								<tr>
									<td>조회수</td>
									<td colspan="2"><%=bo.getBcount()+1%></td>
								</tr>
							</tbody>
					</table>
					<a href="Story.jsp" class=btn >목록</a>
					<!-- 해당 글의 작성자가 본인이라면 수정과 삭제가 가능하도록 코드추가 -->
				 	<%
						if(userId != null && userId.equals(bo.getuserId())){
						
					%> 
					
						<a class=btn href="update.jsp?bId=<%= bId %>">수정</a>
						<a class=btn href="deleteAction.jsp?bId=<%= bId %>" >삭제</a>
						
					
					<%
					} 
					%> 
			</div>
	</div>

</body>
</html>