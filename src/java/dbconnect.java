
import java.sql.*;


public class dbconnect {
    private Connection con;
    private Statement st;
    private ResultSet rs;
    
    public dbconnect() {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bhawna","root","root");
            st=con.createStatement();
        }
        catch(Exception e)
        {
            System.out.println("Error="+e);
        }
    }
    
public ResultSet getdata() throws SQLException{
      String query="select * from paper";
      rs=st.executeQuery(query);    
    return rs; 
}
    
}
