package cl.inacap.FastDeveloperDashboar.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class dashboard_inicio
 */
@WebServlet(name = "dashboard_inicio.do", urlPatterns = { "/dashboard_inicio.do" })
public class dashboard_inicio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dashboard_inicio() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession sessionValida= request.getSession(true);
        if(sessionValida.getAttribute("SessionActiva")=="1") {
            //La fuente siempre cuando exista una session en este caso SessionActiva =="1"
            request.getRequestDispatcher("site/js/dashboard_inicio.jsp").forward(request, response);

        }else {
            response.sendRedirect("login2.do");

        }
			
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//segun el tipo de usuario 
		
	}

}
