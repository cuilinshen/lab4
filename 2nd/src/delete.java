import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class delete {
	private String isbn;
	public String getIsbn()
	{
		return isbn;
	}
	public void setIsbn(String isbn)
	{
		this.isbn = isbn;
	}
	public String execute()
	{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cls","root","1234");
		Statement stm = con.createStatement();
		System.out.println(isbn);
        int result = stm.executeUpdate("delete from book where ISBN="+"\""+isbn+"\"");
        if (result==0){
        	return "FAILURE";
        }
        System.out.println(result);
        stm.close();
	}catch(SQLException e)
	{
		e.printStackTrace();
		return "FAILURE";
	}catch(ClassNotFoundException e)
	{
		e.printStackTrace();
		return "FAILURE";
	}
	return "SUCCESS";
}

}
