<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
    <title>Document</title>
    <link href="../css/Main_Sign_Up.css" type="text/css" rel="stylesheet">
</head>

<body>

    <!--헤더-->
    <header>
        <div id="header">
            <a href="/index.html" class="logo" target="_blank" title="메인화면링크">BookCaine</a>
        </div>
    </header>

    <div id="header-line"></div>


    <div id="wrapper">

        <div class="content">
            <div>
                <a class="main-img"><img src="../images/free-icon-celebration-1517746.png"></a>
            </div>

            <div class="btn-wrapper">
                <button type="button" onclick="location.href='Sign_Up'" class="btn Sign_Go">
                    <span>일반 회원가입</span>
                </button>

                <button type="button" onclick="location.href='/login/login.do'" class="btn Login_go">
                    <span>로그인</span>
                </button>

            </div>

        </div>

    </div>

</body>

</html>