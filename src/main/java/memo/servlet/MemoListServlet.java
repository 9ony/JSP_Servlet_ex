package memo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import memo.model.MemoDAO;
import memo.model.MemoVO;

/**
 * Servlet implementation class MemoListServlet
 */
@WebServlet("/MemoList")
public class MemoListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out=res.getWriter();
		//전체 메모 가져오기
		MemoDAO dao=new MemoDAO();
		try {
		List<MemoVO> arr=dao.selectMemoAll();
		//모델 통해 가져온 데이터 req에 저장 후 view페이지로 이동한다.
		//==>redirect방식이 아니라 forward방식으로 이동해야한다.
		//req.setAttribure(key값,value); hashMap방식
		req.setAttribute("memoarr", arr);
		
		String viewPage="memo/list.jsp";
		
		//forward로 이동해보자.
		RequestDispatcher disp=req.getRequestDispatcher(viewPage);
		disp.forward(req, res);//forward이동할때 req,res를 가지고 간다.
		//redirect : 브라우저의 url을 변경해서 새로운 request를 발생시키는 방식으로 이동하고
		//forward: 서버 내부에서 페이지 이동을 한다. 따라서 브라우저는 이동한 url을 알지 못한다.
		}catch(Exception e) {
			e.printStackTrace();
			out.println("error: "+e.getMessage()+"<br>");
		}
		out.close();
	}

}
