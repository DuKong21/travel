package Main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.MemberDao;
import Dto.Userinfo;

/**
 * Servlet implementation class MemberAdd
 */
@WebServlet("/MemberAdd")
public class MemberAdd extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            request.setCharacterEncoding("UTF-8");
            String id = request.getParameter("id");
            String pw = request.getParameter("pw");
            String name = request.getParameter("name");
            String sex = request.getParameter("sex");
            int p_number = Integer.parseInt(request.getParameter("p_number"));
            String post = request.getParameter("post");
            String address = request.getParameter("address");
            int age = Integer.parseInt(request.getParameter("age"));
            String email = request.getParameter("email");
            
            
            Userinfo userinfo = new Userinfo();
            userinfo.setId(id);
            userinfo.setPw(pw);
            userinfo.setName(name);
            userinfo.setSex(sex);
            userinfo.setP_number(p_number);
            userinfo.setPost(post);
            userinfo.setAddress(address);
            userinfo.setAge(age);
            userinfo.setSex(sex);
            userinfo.setEmail(email);
            
           MemberDao memberdao = new MemberDao();
           memberdao.insertData(userinfo);
           response.setContentType("text/html; charset=UTF-8"); 
           PrintWriter writer = response.getWriter(); 
           writer.println("<script>alert('회원가입이 완료되었습니다'); location.href='login_resist_form.html';</script>"); 
           writer.close();
            
   }

}
