window.addEventListener("load", function(){
	var section = document.querySelector("#login-info-form");
	var loginButton = document.querySelector("#btnLogin");
	var idInput = section.querySelector(".id-input");
	var pwdInput = section.querySelector(".pwd-input");
	var loginForm = document.querySelector("#loginForm");
	
	loginButton.onclick = function(e){
		var id = idInput.value;
		var pwd = pwdInput.value;
		
		if(id == null || id == "") {
			alert("아이디를 입력하세요");
			return;
		}
		
		if(pwd == null || pwd =="") {
			alert("비밀번호를 입력하세요");	
			return;
		}
			
		loginForm.submit();
		
		
	}
	
	
	
	
});