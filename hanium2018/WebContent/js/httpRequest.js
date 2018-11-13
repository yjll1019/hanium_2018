
var params;
function getXMLHttpRequest() {        //  XMLHttpRequest 객체를 생성해 주는 getXMLHttpRequest() 함수
      if (window.ActiveXObject) {
               try {
                      return new ActiveXObject("Xsxml2.XMLHTTP");
               } catch(e) {
                      try {
                             return new ActiveXObject("Microsoft.XMLHTTP");
                       } catch(e1) { return null; }
                  }
              } else if (window.XMLHttpRequest) {
                     return new XMLHttpRequest();
              } else {
                     return null;
              }
       }
var httpRequest = null; // 생성된 XMLHttpRequest 객체를 저장할 전역변수
// XMLHttpRequest 객체를 사용해서 지정한 방식(GET, POST), 지정한 URL, 첨부할 파라미터 값을 사용하여 웹 서버에 요청을 전송
function sendRequest(url, params, callback, method) {
    httpRequest = getXMLHttpRequest();
    var httpMethod = method ? method : 'GET';
    if (httpMethod != 'GET' && httpMethod != 'POST') {
          httpMethod = 'GET';
    }
    var httpParams = (params == null || params == '') ? null : params;
    var httpUrl = url;
    if (httpMethod == 'GET' && httpParams != null) { // HTTP 요청방식이 'GET'이면
          httpUrl = httpUrl + "?" + httpParams;                      // URL 뒤에 파라미터를 붙임
    }
 httpRequest.open(httpMethod, httpUrl, true); // 동기방식에서 브라우저 간 차이가 발생하므로, 크로스 브라우저를 위해 항상 비동기식으로 XMLHttpRequest 객체 사용
	
 // 웹 서버에 전송할 컨텐트 타입 지정
 httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 	
 httpRequest.onreadystatechange = callback; // readyState 값이 바뀔 때 호출될 콜백함수 지정

 // HTTP 요청방식이 'POST'이면 send() 함수를 통해 파라미터 전송
	 httpRequest.send(httpMethod == 'POST' ? httpParams : null);
}
