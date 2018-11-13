package myChatbot;

/* 
    Krit Karan Singh
     IIIT Sricity
 */ 

import java.io.*;
import java.net.Socket;
import java.util.HashMap;

/** class is instantiated, then initialized, call processInput(message) **/

public class Client {

	static char nullChar = (char) 0;
	static String userName = "HEEMO"; // or take as input
	static String botName = "HARRY"; // or take as input
 
	public static void main(String[] args) throws Exception {
		Client client = new Client();
//		client.init(null);
		String input = "What is your name";
		String rString = doMessage(userName+nullChar+nullChar+input+nullChar);
		System.out.println("rString = " + rString);
	}
	
	public static String doMessage(String mess) 
	{
		Socket echoSocket;
		String resp = "";
  
		try {
			echoSocket = new Socket("localhost", 1024);
			PrintWriter out = new PrintWriter(echoSocket.getOutputStream(), true);
			BufferedReader in = new BufferedReader(new InputStreamReader(
					echoSocket.getInputStream()));
			out.println(mess);
			resp = in.readLine();
			echoSocket.close();
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Error: " + e.getMessage());
		}
		return resp;
	}
 
	public static void init(HashMap<String, String> args) {
		System.out.println("ChatScript Bot init()...");
		System.out.println("got back:" + doMessage(nullChar+"1"+nullChar+nullChar));
		System.out.println("now starting conversation..." + doMessage(userName+nullChar+nullChar+nullChar));
		System.out.println("conversation started with default bot as " + userName);
	}

	public String getBotType() {
		return "ChatSCript";
	}
} 