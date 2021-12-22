<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!doctype html>
    <html>
    <head>
    <meta charset="utf-8">
    <title>Main Page Layout</title>
    <link rel="stylesheet" href="../Css/reset.css">
    <link rel="stylesheet" href="../Css/font.css">
    <link rel="stylesheet" href="../Css/newmain.css">
    </head>
    
    <body style="overflow-x:hidden">
      <div id="wrap">
        <header class="header">
          <a href="../html/Main.jsp" class="logo">
            <img src="../Img/logo.jpg" alt="logo">
        </a>
        <span class="sign">
            <a href="../html/Sign.jsp">sign</a>
            <a href="../html/Login.jsp">login</a>
        </span>
        <a href="../html/Write.jsp"><button class="head-btn">글쓰기</button></a>
      </header>
    
      <section class="cont">
          <div class="main-img">
              <img src="../Img/dogbig.PNG" alt="main-img">
              <div class="search">
                  <h2>검색어를 입력하세요</h2>
                  <p>자신의 이미지를 공유하고 원하는 이미지를 다운 받아보세요</p>
                  <form action="get">
                    <div class="search-icon">icon</div>
                    <input class="real-search" type="text" placeholder="이미지, 주제 검색">
                    <span class="dropdown">
                        <select>
                            <option value="0">선택</option>
                            <option value="bTitleTag">제목</option>
                            <option value="userIdTag">작성자</option>
                        </select>
                        <span class="dropdown-icon"><img src="../Img/chevron-down-solid.svg" alt=""></span>
                    </span>
                </form>
                  
                  <span class="best-search">인기검색어 : 
                    <a href="#">크리스마스</a>
                    <a href="#">맥주</a>
                    <a href="#">산타</a>
                    <a href="#">홍대</a>
                  </span>
              </div>
          </div>
      </section>
    
      <section class="cont">
          <div class="car-box">
              <a href="#"><span>CUTE</span></a>
              <a href="#"><span>SEXY</span></a>
              <a href="#"><span>HANDSOME</span></a>
              <a href="#"><span>DELICIOUS</span></a>
          </div>
    
      </section>
    
      <section class="cont img-cont">
          <div class="box">
              <a href="#">
                  <img src="../Img/mouse-1.PNG" alt="">
              </a>
              <a href="#">
                <img src="../Img/bird-7.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/om-9.PNG" alt="">
            </a>
              <a href="#">
                <img src="../Img/mouse-2.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/bird-3.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/om-3.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/mouse-3.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/bird-1.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/om-6.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/mouse-4.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/om-2.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/mouse-6.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/bird-2.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/bird-4.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/om-10.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/bird-5.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/om-1.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/bird-6.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/mouse-5.PNG" alt="">
            </a>
            <a href="#">
                <img src="../Img/bird-8.PNG" alt="">
            </a>
    
          </div>
    
      </section>
       
    
    
      <!-- Footer -->
      <footer>
        <div class="footer-cont">
          <div class="footer-logo"><img src="../Img/big-log_png.png" alt="logo"></div>
          <div class="team">
            <span><p>Team Member</p>
              <p>Cute HYUK</p>
              <p>Sexy KYU / Handsome JUNE</p>
            </span>
          </div>
          
        </div>
      </footer>
    </div>
        
    </body>
    </html>
    