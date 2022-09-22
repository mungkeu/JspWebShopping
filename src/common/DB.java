package common;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;

public class DB {
    public static Connection dbConn(){
        DataSource ds = null;
        Connection conn = null;
        try{
            Context ctx = new InitialContext(); // Context 객체로 Context.xml을 읽어들인다.
            ds=(DataSource) ctx.lookup("java:comp/env/oraDB"); // 이름이 일치하는지 확인
            conn=ds.getConnection(); // 일치하면 커넥션을 하나 얻어온다.
        }catch (Exception e){
            e.printStackTrace();
        }
        return conn;
    }
}
