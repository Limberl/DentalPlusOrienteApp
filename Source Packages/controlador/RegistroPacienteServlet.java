
/**
 *
 * @author WI138
 */
package controlador;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import modelo.Paciente;

public class RegistroPacienteServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        int edad = Integer.parseInt(request.getParameter("edad"));

        Paciente paciente = new Paciente(nombre, edad);

        request.setAttribute("paciente", paciente);
        request.getRequestDispatcher("registroExitoso.jsp").forward(request, response);
    }
}

