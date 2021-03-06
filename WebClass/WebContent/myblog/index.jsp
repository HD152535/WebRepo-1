<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>My Blog</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">    
    <link href="../css/jumbotron-narrow.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/main.css">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </head>

  <body>
    <div class="container">
      <div class="header">
        <div class="row" style="margin: 0">
          <h3 class="text-muted">My Blog</h3>
          <ul class="nav justify-content-end">
            <li class="nav-item">
              <a class="nav-link" href="#introduce">Introduce</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#favorite">Favorite</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#dream">Dream</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="jumbotron">
        <p class="title">Too early to stop</p>
        <p class="lead">
          "멈추기에는 너무 이르다." <br/>
          어디서 나온 것인지는 모르겠지만 내가 가장 좋아하는 문구.<br/> 
        </p>
        <%
	        UserVO user = (UserVO) session.getAttribute("user");
	    	if (user == null) {
        %>
        <div>
            <a class="btn btn-outline-success" href="/WebClass/bloglogin" role="button" style="margin-right: 20px">Sign in</a>            
            <a class="btn btn-outline-success" href="signup.html" role="button">Sign up</a>
        </div>
        <% } else { %>
        <div>
        	<p>사용자명 : <%= user.getName() %></p>
        	<form action="/WebClass/bloglogout" method="post">
        		<button class="btn btn-outline-primary" type="submit">logout</button>
        	</form>
        </div>
        <% } %>
      </div>

      <div class="row marketing contents">
        <div id="introduce">
          <p class="contents-title">Introduce</p>
          <p class="introduce-content">
            한국디지털미디어고등학교 <br/>
            2학년 5반 34번 주현도 <br/>
            현재 안산시 상록구 거주
          </p>
        </div>
        <div id="favorite">
          <p class="contents-title">Favorite</p>
          <div class="card-container">
            <div class="card sports">
              <img class="card-img-top" src="../image/soccer.jpg" alt="Card image cap">
              <div class="card-body">
                <p class="card-text">내가 가장 좋아하는 운동 종목은 축구이다. 주 포지션은 수비수로 디미리그에서 센터벡 포지션을 맡고있다.</p>
              </div>
            </div>
            <div class="card sports">
              <img class="card-img-top" src="../image/table-tennis.jpg" alt="Card image cap">
              <div class="card-body">
                <p class="card-text">다음으로 좋아하는 운동 종목은 탁구이다. 초등학교때 탁구부 활동을 하였다. 지금은 탁구 디미리그 주장이다.</p>
              </div>
            </div>
          </div>
          <div class="card border" style="max-width: 100%;">
              <div class="card-header">Pop Song</div>
              <div class="card-body text-dark">
                <p class="card-text">
                  나는 팝송을 즐겨 듣는 편이다. 그런만큼 좋아하는 가수는 많지만 그 중 한 명만 뽑으라고 하면
                  뽑지 못할 것 같다. 댄스 음악, 발라드 같은 장르가 유행이고, 잘생기고 예쁜 아이돌 가수의 활동이 대부분인
                  우리나라에 비해 다양한 장르가 존재하고 내 취향에 맞는 음악이 많은 팝송에 더 이끌렸다.
                </p>
              </div>
            </div>
        </div>
        <div id="dream">
          <p class="contents-title">Dream</p>
          <p class="dream-title">"React.js와 Node.js를 잘 다루는 웹 프론트엔드 개발자"</p>
          <p class="dream-contents">
            내 꿈은 웹 프론트엔드 개발자이지만 Node.js도 잘 다루는 프론트엔드 개발자가 되고싶다. 
            물론 둘 다 완벽하게 다룰 수 있으면 얼마나 좋을까? 하지만 지금처럼 웹 시장이 빠르게 
            팽창하고 그에 따라 웹 기술도 엄청난 속도로 발전하는 지금은 백엔드와 프론트엔드를
            트렌드에 맞춰 따라가는 것도 엄청 벅찰 것이다. 그래도 Node.js를 학습하여 언제든지
            내가 원하거나 다른 사람들이 원하는 그런 웹 어플리케이션을 제작하고 싶다.
          </p>
        </div>
      </div>

      <footer class="footer">
        <p>2534주현도</p>
      </footer>

    </div>
  </body>
</html>
