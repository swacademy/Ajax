function getXMLHttpRequest(){
	if(window.ActiveXObject){  //IE7
		try{
			return new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e){
			try{
				return new ActiveXObject("Microsoft.XMLHTTP");
			}catch(e){
				return null;
			}
		}
	}else if(window.XMLHttpRequest){  //IE8 higher, FF, Safari, Opear, Chrome
		return new XMLHttpRequest();
	} else{
		return null;
	}
}
var httpRequest = null;
function sendRequest(url, params, callback, method){
	httpRequest = getXMLHttpRequest();
	var httpMethod = method ? method : "get";
	if(httpMethod.toLowerCase() != "get" && httpMethod.toLowerCase() != "post"){
		httpMethod = "get";
	}
	var httpParams = (params == null || params == "") ? null : params;
	var httpUrl = url;
	if(httpMethod == "get" || httpParams != null){
		httpUrl = httpUrl + "?" + httpParams;
	}
	httpRequest.open(httpMethod, httpUrl, true);
	httpRequest.onreadystatechange = callback;
	httpRequest.send(httpMethod == "post" ? httpParams : null);	
}