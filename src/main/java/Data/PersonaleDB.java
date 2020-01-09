package Data;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PersonaleDB {
    public static void main(String[] args) {
        try {
            getPersonale();
            getKalender("");
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
        ResultSet resultSet = statement.executeQuery("SELECT * FROM Sundhedspersonale WHERE AutorisationID ='" + id + "';");
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

    public static List<Kalender> getKalender(String dato) throws SQLException, ClassNotFoundException {
        Class.forName("org.mariadb.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mariadb://su6.eduhost.dk:3306/db6?user=christoffer&password=zaq12wsx");
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM Aftale WHERE Afdeling = '" + dato + "';");
        connection.close();
        List<Kalender> kalender = parseResultsetToKalender(resultSet);
        System.out.println("Der er Aftaler på din kalender");
        return kalender;
    }

    private static List<Kalender> parseResultsetToKalender(ResultSet resultSet) throws SQLException {
        List<Kalender> kalenderen = new ArrayList<>();
        while (resultSet.next()) {
            Kalender kalender = new Kalender();
            String patient = resultSet.getString("Patient");
            String sygehus = resultSet.getString("Sygehus");
            String type = resultSet.getString("Type");
            String dato = resultSet.getString("Dato");
            String fritekst = resultSet.getString("Fritekst");
            kalender.setPatient(patient);
            kalender.setSygehus(sygehus);
            kalender.setType(type);
            kalender.setDato(dato);
            kalender.setFritekst(fritekst);
            kalenderen.add(kalender);
            //System.out.println("Jeg kan se min aftaler");
            //System.out.println(patient + " har en aftale på sygehus " + sygehus + " til undersøgelse i " + type + " den "+ dato);
        }
        return kalenderen;
    }
}
