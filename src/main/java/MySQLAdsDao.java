import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {

    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver(){});
            this.connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public List<Ad> all() {
        String selectQuery = "Select * from ads";
        Statement statement = null;
        ResultSet resultSet = null;
        List<Ad> adsList = new ArrayList<>();

        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(selectQuery);
            while (resultSet.next()) {

                Ad newAdd = new Ad(resultSet.getInt("id"), resultSet.getString("title"), resultSet.getString("description"));
                adsList.add(newAdd);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adsList;
    }

        public Long insert (Ad ad){
            return null;
        }
}
