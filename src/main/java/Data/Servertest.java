package Data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/servertest")
public class Servertest extends HttpServlet {
    DB db = new DB();

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
        String CPR = req.getParameter("CPR");
        String Password = req.getParameter("Password");
        //System.out.println(CPR);
        //System.out.println(Password);

        boolean validering = false;
        try {
            validering = DB.validering(CPR, Password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        //System.out.println("her kommer brugeren med cpr "+ CPR + " password " + Password);
        if (validering) {
            resp.sendRedirect("OversigtBorger.jsp?cpr=" + CPR);
        } else {
            resp.sendRedirect("BorgerLogIn.jsp");
        }
    }


  /*  public void aftaleFjern(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException, ClassNotFoundException {
        DB.Slet(req.getParameter("Dato"));
        String cpr = req.getParameter("cpr");
        resp.sendRedirect("OversigtBorger.jsp?cpr="+cpr);

    } */
}
