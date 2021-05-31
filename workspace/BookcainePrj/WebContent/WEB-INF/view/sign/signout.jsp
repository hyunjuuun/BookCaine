<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>Document</title>
    <link href="../css/signout.css" type="text/css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="../header/header.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
</head>
<body>
    <header id="header">
            <div class="float-content">
                <h1 class="logo"><div class="logo-1">책에 중독되는 순간</div> Bookcaine</h1>
                <section>
                    <h1 class="d-none">헤더</h1>
                    <a href="../sign/singmeno.jsp"><i class="icon-cog"></i></a>
                    
                    <section class="book-search-form">
                        <h1 class="d-none">도서검색폼</h1>
                        <form action="">
                            <legend class="d-none">도서 검색 필드</legend>
                            <input class="form-input" type="text" name="search" placeholder="제목,저자,출판사 검색">
                            <input class="button" type="submit" value="검색">
                        </form>
                    </section>
        
                    <nav class="quick-menu">
                        <h1 class="d-none">퀵메뉴</h1>
                        <ul>
                            <li><a href="../index">홈</a></li>
                            <li><a href="">도전방</a></li>
                            <li class="profile"><a href="/profile">프로필</a></li>
                        </ul>
                    </nav>
                </section>
            </div>
        </header>
<div id="root">
    <!-- <header class="body-colors">
        <div>
            <h1 class="Bookcaine">Bookcaine</h1>

            <form>
                <div class="search-div" >
                    <input class="search-box" placeholder="제목, 저자, 출판사 검색">
                 
                </div>
            </form>
        </div>
    </header> -->


    <main>
        <form class="form" method="get" action="/index">
            <section>
                <h1 class="signout">회원탈퇴</h1>
            </section>

            <fieldset class="fieldset1">
                <legend class="title">탈퇴하려는 이유는 무엇인가요?</legend>
                <div class="check-box">
                    <p><label><input type="checkbox">시스템 오류가 잦아서</label></p>
                    <p><label><input type="checkbox">자주 사용하지 않아서</label></p>
                    <p><label><input type="checkbox">기타</label></p>
                </div>
            </fieldset>
            
            
               <h1 class="title">본인 확인을 위해 비밀번호를 입력해주세요.</h1>
               <input id="" class="password"  placeholder="비밀번호 재입력" type="password"  value="">
               

            <div class="full-aticle">
                <article class="article">
                    <span  class="article-icon"></span> 
                    <p class="p">탈퇴가 완료된 계정은 다시 복구할 수 없습니다.</p>
                </article>
            </div>

            <fieldset class="fieldset2" >
                <legend class="Hidden-yes">회원탈퇴 동의</legend>
                    <input type="checkbox">
                <label class="end-ckeckbox-txt">위 내용을 이해했으며, 모두 동의 합니다.</label>
            </fieldset>

            <div class="button-group">
                <button class="cancel-button">취소</button>
                <a class="out-button" href="javascript:void(0);">
                		<button id="btnSignout" class="button" type="button">회원탈퇴</button>
                </a>
            </div>  
            
        </form>
    </main>


    <footer>

    </footer>

    <script>
        
    </script>
    
</div>
</body>
</html>