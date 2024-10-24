<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POWPOW</title>
<link rel="stylesheet" href="../assets/css/index.css"/>
<link rel="stylesheet" href="../assets/css/login/buyer-id-find.css"/>
<link rel="shortcut icon" href="../assets/images/favicon.ico"/>
</head>
<body>
 <div  class="find-main">
    <div class="logo-box">
      <a href="http://127.0.0.1:5500/powpow-login/main.html">
        <img id="logo" src="../assets/images/login/logo.png" alt="로고" />
      </a>
    </div>
    <div>
      <div class="tap">
        <button class="id-btn">아이디 찾기</button>
        <button class="password-btn">비밀번호 찾기</button>
      </div>

        <div class="main-content id" class="id">
          <div class="input">
            <div>
              <p>이름</p>
              <input class="inputbutton" type="text" name="id" placeholder="이름">
            </div>
            <div>
              <p>휴대폰 번호</p>
              <div class="input-container">
                <input class="inputbutton" type="number" name="phone" placeholder="휴대폰 번호 입력 ('-'제외 11자리 입력)">
                <button class="auth-button">인증</button>
              </div>
            </div>
          </div>
          <a href="http://localhost:9000/powpow/buyer-id-find-complete.jsp">
            <button class="next-button">다음</button>
          </a>
        </div>


        <div class="main-content password" style="display: none;" class="password">
          <div class="box1">
            <img id="check" src="../assets/images/login/smallcheck.svg" alt="">
            <p class="text">본인 확인을 통해 비밀번호를 재설정 하실 수 있습니다.</p>
          </div>
          <div>
            <p>아이디</p>
            <input class="inputbutton" type="text" name="id" placeholder="아이디(이메일)">
          </div>

          <p class="text2">비밀번호 찾기 방법을 선택해주세요.</p>

          <div class="raido-box">
            <label for="user_a">
              <input type="radio" name="user" id="user_a" value="A">
                <p class="text1">등록된 이메일</p>
  
            </label>
            <label for="user_b">
              <input type="radio" name="user" id="user_b" value="B">
                <p class="text1">등록된 휴대폰</p>
            </label>
          </div>
          <a href="http://localhost:9000/powpow/buyer-password-change.jsp">
            <button class="next-button1">다음</button>
          </a>
        </div>

      </div>
  </div>



  
</body>
<script>
    const idBtn = document.querySelector(".id-btn");
    const passwordBtn = document.querySelector(".password-btn");
    const main = document.querySelectorAll(".main-content");

    idBtn.addEventListener("click", () => {
      main[0].style.display = "block";
      main[1].style.display = "none";
    })

    passwordBtn.addEventListener("click", () => {
      main[0].style.display = "none";
      main[1].style.display = "block";
    })
</script>
</html>