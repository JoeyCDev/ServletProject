/**
 * 
 */

function validate(){
	var nickname = document.getElementById("nickname");
	var title = document.getElementById("title"); 
	var price = document.getElementById("price");
	
	
	if(nickname.value=="none"){
		alert("아이디를 선택하세요");
		return false;
	}
	
	if(title.value==""||title.value==null){
		alert("제목을 입력하세요");
		return false;

	}
	
	if(price.value==""||price.value==null){
		alert("갸격을 입력하세요");
		return false;

	}
	
	

}