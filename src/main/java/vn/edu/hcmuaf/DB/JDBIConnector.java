package vn.edu.hcmuaf.DB;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.bean.User;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class JDBIConnector {
    public static Jdbi jdbi;
    public static Jdbi getJdbi(){
        if(jdbi == null){
            connect();
        }
        return jdbi;
    }
    public static void connect(){
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://localhost:3306/DA_WEB");
        dataSource.setUser("root");
        dataSource.setPassword("");
        try {
            dataSource.setAutoReconnect(true);
            dataSource.setUseCompression(true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        jdbi = Jdbi.create(dataSource);
    }

    public static void main(String[] args) {
        List<User> listusser = JDBIConnector.getJdbi().withHandle(
                handle->{
            return handle.createQuery("SELECT * from users where id = ?").bind(0,1).mapToBean(User.class).list();
        });
        System.out.println(listusser);
    }
}
