package memo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import memo.model.MemoDAO;
import memo.model.MemoVO;

@WebServlet("/MemoEditForm")
public class MemoEditFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//		MemoEditFormServlet작성
//		url매핑=> MemoEditForm 
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out=res.getWriter();
//		1. 수정할 글 번호 받아 오기
		String idx = req.getParameter("idx");
		
//		2. 유효성 체크 -> redirect MemoList로 이동
		if(idx==null||idx.trim().isEmpty()) {
			res.sendRedirect("MemoList");
		}
//		3. MemoDAO의 selectMemo(idx)호출
//		==> MemoVO받아서 req에 저장
//		키값 "memo"
		MemoDAO dao = new MemoDAO();
		try {
			MemoVO vo = dao.selectMemo(Integer.parseInt(idx));
			
			req.setAttribute("memo", vo);
			
			String viewPage="memo/edit.jsp";
//			4. forward로 edit.jsp로 이동시킨다.
			//forward로 이동해보자.
			RequestDispatcher disp=req.getRequestDispatcher(viewPage);
			disp.forward(req, res);
			//forward이동할때 req,res를 가지고 간다.
		} catch (NumberFormatException | SQLException e) {
			e.printStackTrace();
			out.println("error : "+ e.getMessage()+"<br>");
		}

//		-----------------------------------------------
//		edit.jsp에서는 req에서 저장된 "memo"를 꺼내서
//		형변환한다. out.println(memo)
		out.close();
	}

}
