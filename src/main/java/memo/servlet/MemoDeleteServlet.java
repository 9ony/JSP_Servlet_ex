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


@WebServlet("/MemoDelete")
public class MemoDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out=res.getWriter();
		//1. 사용자가 입력한 값 받아오기
		String idx = req.getParameter("idx");
		if(idx==null||idx.trim().isEmpty()) {
			out.println("<script type=\"text/javascript\">alert('잘못된 id값 입니다');");
			out.println("location.href='MemoList'");
			out.println("</script>");
		}
		MemoDAO dao=new MemoDAO();
		try {
			int n = dao.deleteMemo(Integer.parseInt(idx));
			String str=(n>0)?"글 삭제 성공":"글 삭제 실패";
			out.println("<script type=\"text/javascript\">alert('"+str+"');");
			out.println("location.href='MemoList'");
			out.println("</script>");
		}catch(Exception e) {
			e.printStackTrace();
			out.println("<script type=\"text/javascript\">alert('"+e.getMessage()+"');");
			out.println("location.href='MemoList'");
			out.println("</script>");
		}
		out.close();
	}
}
