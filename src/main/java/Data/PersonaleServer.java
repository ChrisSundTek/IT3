package Data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class PersonaleServer {


    @WebServlet("/Personaleserver")
    public class PersonaleServer extends HttpServlet {
        PersonaleDB personaledb = new PersonaleDB();

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp){
            try{
                String dato =  req.getParameter("Tid");
                String cpr = req.getParameter("cpr");
                db.Slet(cpr, dato);
                resp.sendRedirect("OversigtBorger.jsp?cpr="+cpr);
            }catch (Exception ex){
                ex.printStackTrace();
            }
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String AutorasitionID = req.getParameter("AutorasitionID");
            String Password = req.getParameter("Password");

            boolean validering = false;
            try {
                validering = DB.validering(AutorasitionID, Password);
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
            //System.out.println("her kommer brugeren med cpr "+ CPR + " password " + Password);
            if (validering) {
                resp.sendRedirect("OverPersonale.jsp?id=\" + AutorasitionID);
            } else {
                resp.sendRedirect("PersonaleLogIn.jsp");
            }
        }
    }
}
