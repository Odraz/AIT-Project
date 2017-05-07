package ait.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.postgresql.util.PSQLException;

import ait.models.Region;

public class DataController extends Controller {	
	public static ArrayList<Region> getData(){
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		try {
			Connection con = DriverManager.getConnection(dbname, "postgres", "postgres");
			Statement statement = con.createStatement();
			
			String sql = "select * from \"ait-project\".\"accidents\"";
			
			ResultSet rs = statement.executeQuery(sql);
			
			ArrayList<Region> regions = new ArrayList<Region>();
			ArrayList<Integer> data;
			while (rs.next()){				
				data = new ArrayList<Integer>();
				
				for(int i = 2; i < 16; ++i){					
					data.add(Integer.parseInt(rs.getString(i)));
				}
				
				Region region = new Region(rs.getString(17), rs.getString(1), data);
				regions.add(region);
			}
					
			return regions;
		} catch (PSQLException e) {
			e.printStackTrace();
			if(e.getMessage().contains("does not exist"))
			{
				ArrayList<Region> regions = new ArrayList<Region>();
				ArrayList<Integer> data = new ArrayList<Integer>();
				
				for(int i = 2; i < 16; ++i){					
					data.add(i);
				}
				
				regions.add(new Region("IT_65", "Abruzzo", data));
				regions.add(new Region("IT_77", "Basilicata", data));
				regions.add(new Region("IT_78", "Calabria", data));
				
				return regions;
			}else{
				return null;
			}			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}		
	}
}
