package ait;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DBConnector extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet (HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter out = res.getWriter();
		
		String dbname = "jdbc:postgresql://localhost:5432/postgres";
		String driver = "org.postgresql.Driver";
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		try {
			Connection con = DriverManager.getConnection(dbname, "postgres", "postgres");
			Statement statement = con.createStatement();
			
			String sql = "select * from \"ait-project\".\"Accidents\"";
			
			ResultSet rs = statement.executeQuery(sql);
			while (rs.next()){
				out.print(rs.getString(1));
				for(int i = 2; i < 16; ++i){					
					out.print(" | " + rs.getString(i));
				}
				
				out.print("\n");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		out.close();
	}
}
