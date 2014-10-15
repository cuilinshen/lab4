import java.sql.*;
import java.util.*;


public class search {
	private List<book> baas = new ArrayList<book>();
	private String Name;
	private book resultBook = new book();
	private author resultAuthor = new author();
	public List<book> getBaas() {
		return baas;
	}
	public void setBaas(List<book> baas) {
		this.baas = baas;
	}
	
	public book getresultBook(){
		return resultBook;
	}
	public void setresultBook(book resultBook){
		this.resultBook = resultBook;
	}
	public String getName(){
		return Name;
	}
	public void setName(String Name){
		this.Name = Name;
	}
	public String execute ()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cls","root","");
			Statement stm = con.createStatement();
			String sql;
			sql = "SELECT book.ISBN AS isbn,book.Title AS title,book.Publisher AS publisher,book.PublishDate AS publishdate,book.Price AS price,author.Name AS name FROM book JOIN author  ON author.AuthorID = book.AuthorID where name = '"+Name+"'";
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()) {
				resultBook.setISBN(rs.getString("isbn"));
				resultBook.setTitle(rs.getString("title"));
				resultBook.setPublisher(rs.getString("publisher"));
				resultBook.setPublishDate(rs.getString("publishdate"));
				resultBook.setPrice(rs.getFloat("price"));
				baas.add(resultBook);
			}
				rs.close();
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
