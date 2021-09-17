package br.com.mvtech.gerenciador;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/novo-teste-servlet")
public class NovoTesteServlet extends HttpServlet {
	
	private String message;
	
	public void init() {
		message = "Oi mundo, parabéns você escreveu o primeiro servlets.";
	}
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>" + message + "</h1>");
		out.println("</body></html>");
		
	}
}