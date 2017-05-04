package ait.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
				
				Region region = new Region(rs.getString(1), rs.getString(1), data);
				regions.add(region);
			}
					
			return regions;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}		
	}
}
