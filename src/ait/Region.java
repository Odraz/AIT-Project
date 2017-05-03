package ait;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Region {
	
	String id;
	String title;
	Map<Integer, Integer> data;
	
	public Region(String id, String title, ArrayList<Integer> data){
		this.id = id;
		this.title = title;
		this.data = new HashMap<Integer, Integer>();
		
		/* 2001 - 2015 */
		for(int i = 0; i < 14; i++){
			this.data.put((2001 + i), data.get(i));
		}
	}
	
	public String getId(){
		return id;
	}
	
	public String getTitle(){
		return title;
	}
	
	public Map<Integer, Integer> getData(){
		return data;
	}
	
	public int getYear(int year){
		return data.get(year);
	}
}
