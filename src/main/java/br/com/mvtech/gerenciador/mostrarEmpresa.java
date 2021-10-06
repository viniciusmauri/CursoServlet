package br.com.mvtech.gerenciador;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mostrarEmpresa")
public class mostrarEmpresa extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String paramId = req.getParameter("id");
        Integer id = Integer.valueOf(paramId);

        Banco bd = new Banco();

        Empresa emp = bd.buscaEmpresaPelaId(id);

        req.setAttribute("empresa", emp);

        RequestDispatcher rd = req.getRequestDispatcher("/formAlteraEmpresa.jsp");
        rd.forward(req, res);

    }
}
