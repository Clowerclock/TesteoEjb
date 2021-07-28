package cl.inacap.FastDeveloperDashboar.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

//import Service.UsuariosService;

/**
 * Servlet implementation class buying
 */
@WebServlet(name = "buying.do", urlPatterns = { "/buying.do" })
public class buying extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buying() {
        super();
        // TODO Auto-generated constructor stub
    }
    //private UsuariosService us;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sessionValida= request.getSession(true);
        if(sessionValida.getAttribute("SessionActiva")=="1") {
            //La fuente siempre cuando exista una session en este caso SessionActiva =="1"
        	
        	/*if(us.verificarTipoUsuarioByNombre(request.getParameter("Usuario"))==2) {
        		
        		 request.getRequestDispatcher("Site/js/buying.jsp").forward(request, response);
        	}else {
        		//span de Alerta Accseso Denegado	
        		JOptionPane.showMessageDialog(null, "No tiene permiso para ver esta pestania");
        		response.sendRedirect("Site/js/dashboard_inicio.jsp");
        	}*/
     
        }else {
            response.sendRedirect("login2.do");

        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
