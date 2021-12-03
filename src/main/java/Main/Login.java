package Main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.MemberDao;
import Dto.Userinfo;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("ksm ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		/*
		UserinfoDao userinfodao =  new UserinfoDao();
		boolean result = userinfodao.exist(id, pw);
		if(result==true) {
			out.print("<script>");
			  out.print("alert('로그인에 성공하셧습니다.');");
			  out.print("location.href = 'http://localhost:8080/travel/main.html'");
			  out.print("</script>");
		}
		else {
			out.print("<script>");
			  out.print("alert('틀렸습니다 다시 로그인을 시도해주세요.');");
			  out.print("location.href = 'http://localhost:8080/travel/login_resist_form.html'");
			  out.print("</script>");
		}
		*/
		MemberDao memberdao = new MemberDao();
		Userinfo userinfo = memberdao.getUserinfo(id, pw);  // 로그인 사용 가능
		request.getSession().setAttribute("userinfo", userinfo);		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		         
	}

}
