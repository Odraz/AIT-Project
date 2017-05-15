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
	static ArrayList<Region> getData(){
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
				
				for(int i = 2; i < 17; ++i){					
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
				
				for(int i = 2; i < 17; ++i){					
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
	
	static String printData(ArrayList<Region> data, int year){
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		for(int i = 0; i < data.size(); i++) {
			sb.append("{id:\"" + data.get(i).getId() + "\",");
			sb.append("title:\"" + data.get(i).getTitle() + "\",");
			sb.append("highestYear:\"" + data.get(i).getHighest().getKey() + "\",");
			sb.append("highestValue:" + data.get(i).getHighest().getValue() + ",");
			sb.append("value:" + (year == 0 ? data.get(i).getTotal() : data.get(i).getYear(year)) + "}");
			
			sb.append((i + 1 < data.size()) ? "," : "");
		}				
		sb.append(']');
		return sb.toString();
	}
	
	static String printYears(int[] years){
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		for(int i = 0; i < years.length; i++) {
			sb.append("{date:\"" + (2001 + i) + "\",");
			sb.append("value:" + years[i] + "}");
			
			sb.append((i + 1 < years.length) ? "," : "");
		}				
		sb.append(']');
		return sb.toString();
	}
	
	public static String getDataAsc(){
		ArrayList<Region> data = getData();
		data.sort((o1, o2) -> o1.getTotal() - o2.getTotal());
		return printData(data, 0);
	}
	
	public static String getDataAsc(int year){
		ArrayList<Region> data = getData();
		data.sort((o1, o2) -> o1.getYear(year) - o2.getYear(year));
		return printData(data, 0);
	}
	
	public static String getDataDesc(){
		ArrayList<Region> data = getData();
		data.sort((o1, o2) -> o2.getTotal() - o1.getTotal());
		return printData(data, 0);
	}

	public static String getDataDesc(int year){
		ArrayList<Region> data = getData();
		data.sort((o1, o2) -> o2.getYear(year) - o1.getYear(year));
		return printData(data, 0);
	}
	
	public static String getYears(){
		ArrayList<Region> data = getData();
		int[] years = new int [15];
		for(Region region : data){
			for(int i = 0; i < 15; i++){
				years[i] += region.getYear(2001 + i);
			}
		}
		
		return printYears(years);
	}
	
	public static String getDataByYears(){
		ArrayList<Region> data = getData();
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		for(int i = 0; i < 15; i++){
			sb.append(printData(data, 2001 + i));
			sb.append((i + 1 < 15) ? "," : "");
		}
		
		sb.append(']');
		return sb.toString();
	}
	
	public static String getDataHighest(){
		ArrayList<Region> data = getData();
		data.sort((o1, o2) -> o2.getHighest().getValue() - o1.getHighest().getValue());
		return printData(data, 0);
	}
}
