package models;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

public class User {
	private String username;
	private String password;
	public User(String username, String password){
		this.setUsername(username);
		this.setPassword(password);
	}
	
	public enum VALIDATE {VALID, INVALID, NOTFOUND;}
	
	public boolean addUser(String propFilePath)
	{
		Properties prop = new Properties();
		FileInputStream fis = null;
		try{
			fis = new FileInputStream(propFilePath);

		    prop.load(fis); 
		    
		    boolean exists = nameExists(propFilePath);
			if (!exists){
			    prop.setProperty(this.username, this.password);
			    prop.store(new FileOutputStream(propFilePath), null);
				return true;
			}else{
				return false;
			}
		} catch (FileNotFoundException e) {

		    System.out.println("FileNotFound");

		} catch (IOException e) {

		    System.out.println("IOEXCeption");

		} finally {

		    if (fis != null) {
		        try {
		            fis.close();
		        }
		        catch (Exception e) {

		            e.printStackTrace();
		        }
		    }
		}
		return false;
		
	}
	
	 private boolean nameExists(String propFilePath) {
		 Properties p = new Properties();

			FileInputStream fis = null;

			try {

			    fis = new FileInputStream(propFilePath);

			    p.load(fis);
			    String password = p.getProperty(this.username);  
			    
			    if (password == null){
			    	return false;
			    }else {
			    	return true;
			    }
				
	   
			} catch (FileNotFoundException e) {

			    System.out.println("FileNotFound");

			} catch (IOException e) {

			    System.out.println("IOEXCeption");

			} finally {

			    if (fis != null) {
			        try {
			            fis.close();
			        }
			        catch (Exception e) {

			            e.printStackTrace();
			        }
			    }
			}
			return false;
	 }
	 
	 public VALIDATE validateUser(String propFilePath){
			Properties p = new Properties();

			FileInputStream fis = null;

			try {

			    fis = new FileInputStream(propFilePath);

			    p.load(fis);
			    String password = p.getProperty(this.username);  
			    
			    if (password != null){
			    	if ( password.equals(this.password)){
			    		return VALIDATE.VALID;
			    	}else {
			    		return VALIDATE.INVALID;
			    	}
			    }else{
			    	return VALIDATE.NOTFOUND;
			    }
				
	   
			} catch (FileNotFoundException e) {

			    System.out.println("FileNotFound");

			} catch (IOException e) {

			    System.out.println("IOEXCeption");

			} finally {

			    if (fis != null) {
			        try {
			            fis.close();
			        }
			        catch (Exception e) {

			            e.printStackTrace();
			        }
			    }
			}
			return VALIDATE.NOTFOUND;
	 }

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
