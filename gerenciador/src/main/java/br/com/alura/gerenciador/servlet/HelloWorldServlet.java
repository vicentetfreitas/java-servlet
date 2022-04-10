package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/oi")
public class HelloWorldServlet extends HttpServlet {
	
	public HelloWorldServlet(){
		System.out.println("Criando Hello World Servlet");
	}
	
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<boyd>");
		out.println("Hellor World, Primeiro Servlets.");
		out.println("</body>");
		out.println("</html>");
		System.out.println("O servlet  HelloWorldServlet foi chamado");
	}

}
