/*
          XMLHttpRequest 객체 생성하기
*/
function createHttpRequestObject(){
	var xmlObj;
	try{
		//FF, Safari, Opera, Chrome, IE8 later
		xmlObj = new XMLHttpRequest();
	}catch(e){
		//IE 6, IE 7
		try{
			xmlObj = new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e){
			try{
				xmlObj = new ActiveXObject("Microsoft.XMLHTTP");
			}catch(e){
				alert("Your browser does not support Ajax.");
				xmlObj = null;
			}
		}
	}
	return xmlObj;
}