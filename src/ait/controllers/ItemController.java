package ait.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.postgresql.util.PSQLException;

import ait.models.Item;

public class ItemController extends Controller {
	public static ArrayList<Item> getItems(){
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
			return null;
		}
	    
	    try {
		    Connection con = DriverManager.getConnection(dbname, "postgres", "postgres");
			Statement st = con.createStatement();
			String sql = "select * from \"ait-project\".\"items\"";
			
		    ResultSet rs = st.executeQuery(sql);
		    
		    ArrayList<Item> items = new ArrayList<Item>();
		    while(rs.next()){
		    	Item item = new Item(
		    			rs.getInt("id"),
		    			rs.getString("name"),
		    			rs.getString("image"),
		    			rs.getInt("price"),
		    			rs.getString("description")
		    			); 
		    	
		    	items.add(item);
		    }
		    
		    return items;
	    } catch (PSQLException e) {
			e.printStackTrace();
			if(e.getMessage().contains("does not exist"))
			{
				ArrayList<Item> items = new ArrayList<Item>();
				
				for(int i = 0; i < 4; i++){
					items.add(new Item(i, "Test item " + i, "noimage.png",  100 * i, "Test description"));
				}
				
				return items;
			}else{
				return null;
			}			
		} catch (SQLException e) {
			e.printStackTrace();
			
			return null;
		}		
	}
}
