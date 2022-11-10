package my.com;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * [1] httpServlet을 상속받아 구현 : http프로토콜에 특화된 서블릿
 * [2] doGet() 또는 doPost() 메서드를 오버라이드한다.
 * [3]2번에서 재정의한 메서드 안에서 코드 구현
 * 
 * 서블릿은 구현하고 나면 서블릿을 web.xml에 등록하던지, 아니면 어노테이션(@webServlet)을 기술
 *
 *(1) Web.xml
 *
 *(2) @WebServlet어노테이션 사용하는 방법
 */

public class HelloServlet extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException{
		//req: 사용자 요쳥과 관련된 정보를 추출하거나 다루는 객체
		//res: 브라우저와 연결되어 브라우저에 동적으로 html을 생성해서 쓸 수 있는 객체
		res.setContentType("text/html;charset=UTF-8"); //브라우저에 보여줄 문서형식(마임타입,컨텐트타입)을 지정
		PrintWriter pw=res.getWriter();//브라우저와 노드 연결하고 있는 출력스트림을 반환한다.
		pw.println("<h1>Hello Servlet<h1>");
		pw.println("<h2>안녕 서블릿~~<h2>");
		pw.println("<hr color='red'>");
		Date d = new Date();
		pw.println("<h3>Server Date: "+d.toString()+"<h3>");
		pw.println("");
		pw.println("");
		pw.println("");
		pw.close();
	}
}
