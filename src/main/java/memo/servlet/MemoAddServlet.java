package memo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import memo.model.MemoDAO;
import memo.model.MemoVO;

/**
 * Servlet implementation class MemoAddServlet
 */
@WebServlet("/MemoAdd")
public class MemoAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out=res.getWriter();
		//1. 사용자가 입력한 값 받아오기
		String name = req.getParameter("name");
		String msg = req.getParameter("msg");
		//2.유효성검사
		if(name==null||msg==null||name.trim().isEmpty()||msg.trim().isEmpty()) {
			res.sendRedirect("memo/input.html");			
		}
		//메모객체생성
		MemoVO vo=new MemoVO(0,name,msg,null);
		
		MemoDAO dao=new MemoDAO();
		//dao를 통해 db에등록
		try {
			int n = dao.insertMemo(vo);
			String str=(n>0)?"글등록성공":"글등록실패";
			String loc=(n>0)?"MemoList":"memo/input.html";
			out.println("<script type=\"text/javascript\">alert('"+str+"');");
			out.println("location.href='"+loc+"'");
			out.println("</script>");
		}catch(Exception e) {
			e.printStackTrace();
			out.println("error: "+e.getMessage()+"<br>");
		}
		out.close();
	}
}
