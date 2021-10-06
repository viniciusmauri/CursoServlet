package br.com.mvtech.gerenciador;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/removeEmpresa")
public class RemoveEmpresa extends HttpServlet {

    private static final long serialVersionUID = 1L;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String paramId =  req.getParameter("id");
        Integer id = Integer.valueOf(paramId);

        Banco bd = new Banco();
        bd.removeEmpresa(id);

        resp.sendRedirect("listaEmpresas");
    }
}
