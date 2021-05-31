function box_change(){
    var man = document.querySelector("#man")
    var woman = document.querySelector("#woman")
    
    
    
    if(man.checked){
        document.getElementById("box-m").className='box_change';
        document.getElementById("box-w").className='gender';
        console.log("tst1")
    }
    
    if(woman.checked){
        document.getElementById("box-w").className='box_change';
        document.getElementById("box-m").className='gender';
        console.log("tst")
    }
    
    
    }


// -----------------------------------------------------------------------

// 1. 페이지를 로드할 때 동적으로 웹페이지의 컨텐트를 생성하는 경우엔 body.
// 2. 함수 안에서 정의하고 page 이벤트에 사용되는 자바스크립트 코드는 head. 그래야 body 태그 안의 내용을 읽어들이기 전에 로드 되기 때문
window.addEventListener("load", function () {

    var id = document.querySelector('#ID_txt');
    var pw = document.querySelector('#PW_txt');
    var pwr = document.querySelector('#PWR_txt');
    var name = document.querySelector("#NAME_txt");
	var nickname = document.querySelector("#NICKNAME_txt");
	let btn = document.querySelector(".btn")
	let signForm = document.querySelector("#signForm");
    // var yy = document.querySelector("#yy");
    // var mm = document.querySelector("#mm");
    // var dd = document.querySelector("#dd");
    var error = document.querySelectorAll('.hide');

    id.addEventListener("focusout", checkId);
    pw.addEventListener("focusout", checkpw);
    pwr.addEventListener("focusout", checkpwr);
    name.addEventListener("focusout", checkname);
    nickname.addEventListener("focusout", checknickname);
    // yy.addEventListener("focusout", checkyy);
    // mm.addEventListener("focusout", checkmm);
    // dd.addEventListener("focusout", checkdd);

var idcheck = /[a-zA-Z0-9_-]{5,20}/; //영문,숫자만 허용하는 정규표현식
var pwchek = /[a-zA-Z0-9_-]{8,16}/;

    function checkId() {

    
    if(id.value === "") {
        error[0].innerHTML = "필수 정보입니다.";
        error[0].style.display = "block";
    }
    else if(!idcheck.test(id.value)) {
        error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
        error[0].style.display = "block";
    }
    else {
        error[0].innerHTML = "멋진 아이디네요!";
        error[0].style.color = "green";
        error[0].style.display = "block";
    }
}

    function checkpw(){

        
        if(pw.value === ""){
            error[1].innerHTML = "필수 정보입니다.";
            error[1].style.display = "block";
        }
        else if(!pwchek.test(pw.value)){
            error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
            error[1].style.display = "block";
            error[1].style.color = "red";
        }
        else{
            error[1].innerHTML = "사용 가능한 비밀번호입니다.";
            error[1].style.color = "green";
        }
    }

    function checkpwr(){
    
        if(pwr.value === ""){
            error[2].innerHTML = "필수 정보입니다.";
            error[2].style.display = "block";
        }
        
        else if(pwr.value === pw.value){
            error[2].innerHTML = "동일한 비밀번호입니다.";
            error[2].style.display = "block";
            error[2].style.color = "green";
        }

        else{
            error[2].innerHTML = "동일하지 않은 비밀번호입니다.";
            error[2].style.color = "red";
        }
    }

    function checkname(){
        if(name.value === ""){
            error[3].innerHTML = "필수 정보입니다.";
            error[3].style.display = "block";
        }
        else if(name.value !== ""){
            error[3].innerHTML = name.value+" 님 환영합니다.";
            error[3].style.display = "block";
            error[3].style.color = "green";
        }
    
    }

	function checknickname(){
		 if(nickname.value === ""){
            error[4].innerHTML = "필수 정보입니다.";
            error[4].style.display = "block";
        }
        else if(nickname.value !== ""){
            error[4].innerHTML = nickname.value+" 좋은 별명이네요!!";
            error[4].style.display = "block";
            error[4].style.color = "green";
        }
	}
	
	btn.onclick = function(e){
		var id_ = id.value;
		var pwd_ = pw.value;
		var name_ = name.value;
		var nickname_ = nickname.value;
			
		if(id_ == null || id_ == "") {
			alert("아이디를 입력하세요");
			return;
		}
		else if(!idcheck.test(id.value)) {
        alert("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
        return;
    }
		
		if(pwd_ == null || pwd_ =="") {
			alert("비밀번호를 입력하세요");	
			return;
		}
		else if(!pwchek.test(pw.value)){

			alert("8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");	
			return;
        }
		
		if(name_ == null || name_ =="") {
			alert("이름을 입력하세요");	
			return;
		}
		
		if(nickname_ == null || nickname_ =="") {
			alert("별명을 입력하세요");	
			return;
		}
		
		
        if(pw.value === ""){
           alert("비밀번호를 입력하세요");	
			return;
        }
        
        else{
            error[1].innerHTML = "사용 가능한 비밀번호입니다.";
            error[1].style.color = "green";
        }
		
		
		signForm.submit();
	}

});
