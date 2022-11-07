package my.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//어노테이션으로 servlet-mappint url-pattern을 등록한다.
//이때 @webservlet("/GetTest")안의 url pattern은 unique해야 한다.
@WebServlet("/GetTest")
public class GetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html;charset=UTF-8");
		PrintWriter out=res.getWriter();
		out.println("<h1>GetServlet</h1>");
		out.println("<h2>GET방식의 요청을 처리할 때는 doGet()메서드를 오버라이드 합니다.</h2>");
		res.getWriter().append("<h1>겟라이터</h1> ");
		String name = req.getParameter("name");
		String userid = req.getParameter("userid");
//		get파라미터 받는법 req.getParameter(action에 name명);
		out.println("<h3>getTest Form에서 Get방식으로 받은값</h3>");
		out.println("name :" +name+"<br>");
		out.println("id :"+userid);
		
	}

}
