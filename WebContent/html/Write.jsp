<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("utf-8");
     response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>STORY-write</title>
    <link rel="stylesheet" href="../Css/write-style.css">
</head>
<body>
<%-- 	<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%> --%>
    <header class="header">
        <div class="header_top">
            <a href="../html/Login.html">LOGIN</a>
            <a href="../html/Sign.html">SIGN</a>
        </div>
        <div class="header_logo">
            <a href="../html/Mainpage.html">
                <h1>CSHD</h1>
                <p>blog</p>
            </a>
        </div>
    </header>

    <section class="story">
        <div>
            <h2>STORY</h2>
             <form action="WriteAction.jsp" accept-charset="utf-8" name="story" method="get">
                <div class="title">
                    <input type="text" name="bTitle" class="tit-box" maxlength="80" placeholder="제목">
                </div>
                <div class="cont">
                    <textarea name="bContent" id="cont" class="cont-box" cols="30" rows="10" placeholder="글 내용!! XD"></textarea>
                </div>
                <div class="sub">
                    <div class="cho">
                        <input type="file" name="file">
                    </div>
                    <div class="div-box">
                        <div>분류</div>
                        <select name="three">
                            <option value="cute">CUTE</option>
                            <option value="sexy">SEXY</option>
                            <option value="hansume">HANSUME</option>
                        </select>
                    </div>
                 <input type="submit" class="btn" value="글쓰기">
                </div>
             </form>
        </div>
    </section>
    
</body>
</html>