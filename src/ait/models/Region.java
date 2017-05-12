package ait.models;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javafx.util.Pair;

public class Region {
	
	String id;
	String title;
	Map<Integer, Integer> data;
	
	int total;
	Pair<Integer, Integer> highest;
	Pair<Integer, Integer> lowest;
	
	public Region(String id, String title, ArrayList<Integer> data){
		this.id = id;
		this.title = title;
		this.data = new HashMap<Integer, Integer>();
		
		/* 2001 - 2015 */
		total = 0;
		int high = Integer.MIN_VALUE;
		int low = Integer.MAX_VALUE;
		
		for(int i = 0; i < 15; i++){
			int value = data.get(i);
			int year = (2001 + i);
			total += value;
			
			if(value > high){
				high = value;
				highest = new Pair<Integer, Integer>(year, high);
			}
						
			if(value < low){
				low = value;
				lowest = new Pair<Integer, Integer>(year, low);
			}
						
			this.data.put(year, value);
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
	
	public int getTotal(){
		return total;
	}
	
	public Pair<Integer, Integer> getHighest(){
		return highest;
	}
	
	public Pair<Integer, Integer> getLowest(){
		return lowest;
	}
}
