<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>home</title>

    <!-- vendor css -->
    <link href="/resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/resources/lib/Ionicons/css/ionicons.css" rel="stylesheet">

    <!-- Bracket CSS -->
    <link rel="stylesheet" href="/resources/css/bracket.css">
  </head>

  <body>

    <div class="d-flex align-items-center justify-content-center bg-br-primary ht-100v"  style="background-image:url(/resources/img/bg-1.jpg);background-size:cover;">

      <div class="login-wrapper wd-300 wd-xs-350 pd-25 pd-xs-40 bg-white rounded shadow-base">
        <div class="signin-logo tx-center tx-28 tx-bold tx-inverse"><span class="tx-normal">[</span> User Interface <span class="tx-normal">]</span></div>
        <div class="tx-center mg-b-60">사용자 정보 관리 솔루션</div>
        ${login.jiName}(${login.jiId})님 환영합니다
        <a href="/logout"><button class="btn btn-info btn-block">Logout</button></a>
      </div><!-- login-wrapper -->
    </div><!-- d-flex -->

    <script src="/resources/lib/jquery/jquery.js"></script>
    <script src="/resources/lib/popper.js/popper.js"></script>
    <script src="/resources/lib/bootstrap/bootstrap.js"></script>

  </body>
</html>