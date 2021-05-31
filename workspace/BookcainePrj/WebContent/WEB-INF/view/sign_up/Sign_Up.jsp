<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>북카인 회원가입</title>
    <link href="../css/Sign_Up.css" type="text/css" rel="stylesheet">
    <script src="../js/Sign_up.js"></script>
</head>
<body>
    <header id="header">
        <a href="/index" title="메인화면">BookCaine</a>
    </header>

    <div class="line">

    </div>

    <div id="wrapper">

        <div id="main">
			<form action="/Sign_up" method="post" id="signForm">
            <div>
                <span class="box">
                    <input type="text" class="txt" id="ID_txt" name="id" value="" placeholder="아이디" maxlength="15">
                </span>
                <span class="hide"></span>
            </div>

            <div>
                <span class="box">
                    <input type="password" class="txt" id="PW_txt" placeholder="비밀번호" maxlength="20">
                </span>
                <span class="hide"></span>
            </div>
            

            <div>
                <span class="box">
                    <input type="password" class="txt" id="PWR_txt" name="pwd" placeholder="비밀번호 재확인" maxlength="20">
                </span>
                <span class="hide"></span>
            </div>

            <div>
                <span class="box">
                    <input type="text" class="txt" id="NAME_txt" name="name" placeholder="이름" maxlength="10">
                </span>
                <span class="hide"></span>
            </div>
            
             <div>
                <span class="box">
                    <input type="text" class="txt" id="NICKNAME_txt" name="nickname" placeholder="별명" maxlength="10">
                </span>
                <span class="hide"></span>
            </div>
            <!------------------------------------------생년월일----------------------------------------------------->
            <div class="date">
        
                <span class="box box-yy">
                    <input type="text" name="birthdayYY" class="txt" id="yy"  placeholder="년(4자)" maxlength="4">
                </span>
           
                <span class="box box-mm">
                   <!--  <select name="birthdayMM" class="mm">
                        <option>월</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>   -->              
 					<input type="text" name="birthdayMM" class="mm" id="dd" placeholder="월" maxlength="2">
                </span>
                <span class="box box-dd">
                    <input type="text" name="birthdayDD" class="txt" id="dd" placeholder="일" maxlength="2">
                </span>
            </div>

            <h3>성별</h3>
            <div id="gender_box">

                <span id="box-m" class="gender">
                    <input type="radio" id="man" name="gender" value="남자" onclick="box_change()"> <label for="man"> 남자 </label>
                </span>
                <span id="box-w" class="gender">
                    <input type="radio" id="woman" name="gender" value="여자" onclick="box_change()"> <label for="woman"> 여자 </label>
                </span>
                <!--라디오 버튼에서, 텍스트를 눌렀을때 같이 선택되게 하려면  id속성과 label for속성을 같게 설정한다. -->
            </div>
            <!--------------------------------------------------------------------------------------------------------- -->


            <h3>휴대전화(선택)</h3>
            <span class="box box-p">
                <input type="text" class="txt" name="phone" placeholder="선택입력" maxlength="15">
            </span>


            <h3>이메일(선택)</h3>
            <span class="box box-e">
                <input type="text" class="txt" name="email" placeholder="선택입력" maxlength="30">
            </span>

            <!-- <input type="button" class="btn" value="회원가입 완료"> -->
            <div class="btn_area">
                <a href="javascript:void(0);"><button type="submit"  class="btn">
                    <span>회원가입 완료</span>
                </button></a>
            </div>

			</form>
        </div>

    </div>
    <!-- <script src="Sign_up.js"></script> -->
</body>

</html>