window.addEventListener("load", function() {
    let section = document.querySelector("#wrapper");
    let comment = section.querySelector(".review-btn-group");

    comment.onclick = function(e) {
		console.log("test");
		

		//2. target 의 동생의 d-none을 빼자
		e.target.nextElementSibling.classList.toggle("d-none"); //nextsibling:
		//toggle방식 숙지


	}

});