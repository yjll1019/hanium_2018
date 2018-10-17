<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="euc-kr"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="myChatbot.Client" %>

<% 
	//한글 깨짐 처리를 위해 인코딩 구문
	request.setCharacterEncoding("UTF-8");

	//글 삭제(del), 글 등록(insert) 이벤트를 한 jsp파일에서 처리하기 위해 type 파라미터를 받음
	String message = (String)request.getParameter("message");
	String messageHistory = (String)request.getParameter("messageHistory");
	
	if(messageHistory == null) {
		messageHistory = "";
	}
	
	char nullChar = (char) 0;
    String userName = "USER : "; // or take as input
    String botName = "HARRY : "; // or take as input
	
    Client client = new Client();
    String rMessage = client.doMessage(botName+nullChar+nullChar+message+nullChar);

    message = "\n" + userName + " " + message;
    rMessage = "\n" + botName + " " + rMessage;
    
    
%>

	<table cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td>		
				<!-- DB에서 가져온 글을 화면에 표시하기 위해 html로 작성 //-->
				<span></span><br>
				<textarea id="composerInput" name="messageResult" height="2000" rows="40" cols="45" data-sigil="textarea" style="overflow-x:hidden;">
				<%=messageHistory+""+message+""+rMessage%></textarea>
			</td>
		</tr>
	</table>
	<hr>


	