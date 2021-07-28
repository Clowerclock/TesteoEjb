package cl.inacap.FastDeveloperDashboar.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.persistence.internal.libraries.asm.util.Printer;

import Service.*;
import Data.Usuario;

/** 
 * Servlet implementation class login2
 */
@WebServlet(name = "login2.do", urlPatterns = { "/login2.do" })
public class login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login2() { 
        super();
        // TODO Auto-generated constructor stub
    }


	/**como era?
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		/*/Usuario u =new Usuario();
		u.setNombreUsuario("Ejemplo1");
		u.setPassword("lorem");
		u.setId_tipo_usuario(1);
		u.setId_trabajador(2);
		u.setIdUser(1);
		//us.agregarUsuario(u);
		 * */
		 
		
		//eso se la asocias a una lista por ejempo..asocias o como lo estan haciendo us estaok us.listarUsuario().stream().filter(p->p.getNombreUsuario().equals(Ejemplo1));
		
		request.getRequestDispatcher("Site/js/login2.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String Usuario= request.getParameter("nombreUsuario").toString();
		String Password= request.getParameter("nombrePassword").toString();
		
		// id_user=Ana cliente  1, Jose vendedor1 2, Pepa vendedor2	3						
		//password
		
		int tipo_usuario=  us.buscarUsuario(Usuario, Password); //servicio
		
		//0= refuse , los demas pasan a home
		
		//revisar si logea
		PrintWriter out=response.getWriter();
		
		if(tipo_usuario==0) {
			out.println("0");
		}else {
			out.println("1");
			
			//request.setAttribute("Usuario", Usuario);
			 //buscar a traves del usuario de do a do????
		}
		
	}
}
