package Data;

import com.sun.xml.internal.bind.v2.model.core.ID;

import javax.xml.transform.Result;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PersonaleDB {
    public static void main (String[] args) {
        try {
            getPersonale();
            //getAftale("");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public static List<Personale> getPersonale() throws SQLException, ClassNotFoundException {
        Class.forName("org.mariadb.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mariadb://su6.eduhost.dk:3306/db6?user=christoffer&password=zaq12wsx");
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM Sundhedspersonale;");
        connection.close();
        List<Personale> personale = parseResultsetToPersonale(resultSet);
        System.out.println("Der er Personale");
        return personale;
    }
    public static Boolean valider(String id, String password) throws SQLException, ClassNotFoundException {
        Class.forName("org.mariadb.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mariadb://su6.eduhost.dk:3306/db6?user=christoffer&password=zaq12wsx");
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM Sundhedspersonale WHERE AutorisationID ='"+ id +"';");
        resultSet.next();
        String ID = resultSet.getString("Autorisation ID");
        String pa = resultSet.getString("Password");
        connection.close();
        System.out.println("Jeg validerer");
        if (id.equals(ID) && password.equals(pa)) {
            return true;
        }
        return false;
    }
    private static List<Personale> parseResultsetToPersonale(ResultSet resultSet) throws SQLException {
        List<Personale> personalet = new ArrayList<>();
        while (resultSet.next()) {
            Personale personale = new Personale();
            String id = resultSet.getString("AutorisationID");
            String fornavn = resultSet.getString("Fornavn");
            personale.setAutorasitionID(id);
            personale.setFornavn(fornavn);
            personalet.add(personale);
            System.out.println("Personale " + fornavn + " " + id);
        }
        return personalet;
    }
}
