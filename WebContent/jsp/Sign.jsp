<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign</title>
    <link rel="stylesheet" href="../Css/sign-style.css">
    <script type="text/javascript">
function fn_sendJoin(){
   var frmJoin=document.frmJoin;
   var userId=frmJoin.userId.value;
   var userPassword=frmJoin.userPassword.value;
   var userName = frmJoin.userName.value;
   var userGender = frmJoin.userGender.value;
   var userEmail = frmJoin.userEmail.value;
   if(userId.length==0 ||userId==""){
      alert("아이디를 입력해주세요");
   }else if(userPassword.length==0 ||userPassword==""){
      alert("비밀번호를 입력해주세요");
   }else if(userName.length==0 ||userName==""){
      alert("이름 입력해주세요");
   }else if(userGender.length==0 ||userGender==""){
      alert("이메일을 입력해주세요");
   }else if(userEmail.length==0 ||userEmail==""){
      alert("성별을 입력해주세요");
   }else{
	   frmJoin.method="post";
	   frmJoin.action="signAction.jsp";
	   frmJoin.submit();
   } 
}
</script>
</head>
<body>
    <header class="header">
        <div class="header_top">
            <a href="../jsp/Login.jsp">LOGIN</a>
            <a href="../jsp/Sign.jsp">SIGN</a>
        </div>
        <div class="header_logo">
            <a href="../jsp/Mainpage.jsp">
                <h1>CSHD</h1>
                <p>blog</p>
            </a>
        </div>
</header>

<div class="content">
    <h2>Sign</h2>
    <section class="sign">
        <form accept-charset="utf-8" name="frmJoin">
            <!-- name -->
            <div>
                <h3 class="title"><label for="id">Id</label></h3>
                <span class="name box">
                    <input type="text" name="userId" id="id" class="int" maxlength="20"placeholder="ID">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- password -->
            <div>
                <h3 class="title"><label for="password">Password</label></h3>
                <span class="password box">
                    <input type="password" name="userPassword" id="password" class="int" maxlength="20"placeholder="Password">
                    <span id="alerTxt">ì¬ì©ë¶ê°</span>
                    <img src="../Img/lock-solid.svg" id="pswd_img" class="pswdimg" alt="">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- password_check -->
            <div>
                <h3 class="title"><label for="check">Password_check</label></h3>
                <span class="check box">
                    <input type="password" name="password_check" id="check" class="int" maxlength="20"placeholder="Password_check">
                    <img src="../Img/user-lock-solid.svg" id="check_img" class="pswdimg" alt="">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- name -->
            <div>
                <h3 class="title"><label for="name">Name</label></h3>
                <span class="name box">
                    <input type="text" name="userName" id="name" class="int" maxlength="20" placeholder="name">  
                </span>
                <span class="error_next_box"></span>
            </div>

			<!-- gender -->
            <div>
                <h3 class="title"><label for="gender">Gender</label></h3>
                <select name="userGender">
				<option value="남">남자</option>
				<option value="여">여자</option>
				</select>
                <span class="error_next_box"></span>
            </div>

            <!-- email -->
            <div>
                <h3 class="title"><label for="email">Email</label></h3>
                <span class="email box">
                    <input type="text" name="userEmail" id="email" class="int" placeholder="####@naver.com">
                </span>   
                <span class="error_next_box">ì´ë©ì¼ ì£¼ìë¥¼ ë¤ì íì¸í´ì£¼ì¸ì</span>
            </div>

           <!-- button -->
            <div class="sumit">
        	    <input type="button" value="회원가입" onclick="fn_sendJoin()" id="btnsign">
        
            </div>
            
            
        </form>

    </section>
</div>
</div>
    <!-- wrapper -->
    <script src="../js/sign.js"></script>
</body>
</html>