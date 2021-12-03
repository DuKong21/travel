package Main;

import java.awt.PageAttributes.OrientationRequestedType;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CategoryDao;
import Dto.Userinfo;

/**
 * Servlet implementation class Category
 */
@WebServlet("/Category")
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Category() {
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
        
//        int category1 = Integer.parseInt(request.getParameter("category1"));
//        int category2 = Integer.parseInt(request.getParameter("category2"));
//        int category3 = Integer.parseInt(request.getParameter("category3"));
        String []gate = request.getParameterValues("CATE");
//        for(int i=0;i<gate.length;i++) {
//        	String temp = gate[i];
//        }
//        
        Userinfo userinfo = new Userinfo();
        if(gate[0] != null ) userinfo.setCategory1(Integer.parseInt(gate[0]));     
        if(gate[1] != null ) userinfo.setCategory2(Integer.parseInt(gate[1]));
        if(gate[2] != null ) userinfo.setCategory3(Integer.parseInt(gate[2]));    
         
       userinfo.setId(((Userinfo)request.getSession().getAttribute("userinfo")).getId());      
       CategoryDao categorydao = new CategoryDao();
       categorydao.updateDate(userinfo);		
       RequestDispatcher rd = request.getRequestDispatcher("sebu.jsp");
       rd.forward(request, response);
        
	}

}
