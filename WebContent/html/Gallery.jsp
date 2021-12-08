<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gallery</title>
    <link rel="stylesheet" href="../Css/Gallery-style.css">
    <link rel="stylesheet" href="../Css/fancybox.css">
    <script src="../js/jquery.js"></script>
    <link rel="stylesheet" href="../Css/jquery.fancybox.min.css">
    <script src="../js/jquery.fancybox.min.js"></script> <script src="../js/jquery.js"></script>
</head>
<body>
    <header>
        <a href="#" class="logo">
            <img src="../Img/logo.jpg" alt="logo">
        </a>
        <div class="search">
            <input type="text">
            <button>검색</button>
        </div>
        <div class="sign">
            <a href="#">sign</a>
            <a href="#">login</a>
        </div>
        <button class="head-btn">글쓰기</button>
    </header>
        <div class="cont-head">
            <h5>GALLERY</h5>
            <div>
            <span class="dropdown">
                <button class="dropdown-btn">추천</button>
                <div class="dropdown-cont">
                    <a href="#">인기</a>
                    <a href="#">최신</a>
                    <a href="#">추천</a>
                </div>
            </span>
            <span class="dropdown">
                <button class="dropdown-btn">카테고리</button>
                <div class="dropdown-cont">
                    <a href="#">CUTE</a>
                    <a href="#">SEXY</a>
                    <a href="#">HAND</a>
                    <a href="#">DEL</a>
                </div>
            </span>
            </div>
        </div>
        <section class="cont">
            <div class="flex flex-wrap gap-5 justify-center max-w-5xl mx-auto px-6 box">
                <a
                  data-caption="Vestibulum lobortis ultricies ipsum, a maximus ligula dignissim in. Sed consectetur tellus egestas, consequat dolor at, tempus augue. "
                  data-fancybox="gallery"
                  href="../Img/bird-2.PNG" 
                  > <!-- 클릭시 -->
                  <img class="rounded" src="../Img/bird-2.PNG" /> <!-- 작은사진 -->
                </a>
                <a
                  data-caption="Short caption"
                  data-fancybox="gallery"
                  href="../Img/bird-3.PNG"
                >
                  <img class="rounded" src="../Img/bird-3.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/bird-4.PNG"
                >
                  <img class="rounded" src="../Img/bird-4.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/bird-5.PNG"
                >
                  <img src="../Img/bird-5.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/mouse-2.PNG"
                >
                  <img class="rounded" src="../Img/mouse-2.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/mouse-3.PNG"
                >
                  <img class="rounded" src="../Img/mouse-3.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/mouse-4.PNG"
                >
                  <img class="rounded" src="../Img/mouse-4.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/mouse-5.PNG"
                >
                  <img class="rounded" src="../Img/mouse-5.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/mouse-6.PNG"
                >
                  <img class="rounded" src="../Img/mouse-6.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/om-1.PNG"
                >
                  <img class="rounded" src="../Img/om-1.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/om-2.PNG"
                >
                  <img class="rounded" src="../Img/om-2.PNG" />
                </a>
                <a
                  data-caption=""
                  data-fancybox="gallery"
                  href="../Img/om-3.PNG"
                >
                  <img class="rounded" src="../Img/om-3.PNG" />
                </a>
                <a
                data-caption=""
                data-fancybox="gallery"
                href="../Img/om-5.PNG"
              >
                <img class="rounded" src="../Img/om-5.PNG" />
              </a>
              
              </div>
        </section>
        <script>
            Fancybox.bind('[data-fancybox="gallery"]', {
                Thumbs: false,
                Toolbar: false,
      
            Image: {
              zoom: false,
              click: false,
              wheel: "slide",
            },
          });
          </script>
</body>
</html>