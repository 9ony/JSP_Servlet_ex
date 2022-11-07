package my.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//post방식은 요청 entity body에 데이터를 포함시켜 전송한다 . 따라서 url부분에 데이터노출이없음
@WebServlet("/PostTest")
public class PostSerVlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html;charset=UTF-8");
		PrintWriter out=res.getWriter();
//		res.getOutputStream(); << 이미지나 동영상파일
		
		//post방식은 body에 담아서 가기때문에
		//한글 처리를 해줘야함
		req.setCharacterEncoding("UTF-8");
		String name = req.getParameter("name");
		String userid = req.getParameter("userid");
		out.println("<h1>POST방식 TEST</h1>");
		out.println("<h2>POST방식 -doPost()메서드를 오버라이드 해야 한다.</h2>");
		out.println("<hr color='red'>");
		out.println("<h3> 이름 :"+name+"</h3>");
		out.println("<h3>아이디 :"+userid+"</h3>");
		out.close();
	}

}
