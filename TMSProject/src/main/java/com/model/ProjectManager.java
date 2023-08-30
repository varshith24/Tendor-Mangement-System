package com.model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class ProjectManager {
	public Registration isLogin(Login s)
	{
		Registration r = new Registration();
		if(s.isAdmin())
		{
			if((s.getEmail().equals("varshith")) && (s.getPassword().equals("1188")))
			{
				r.setEmail("varshi1188@gmail.com");
				r.setUsername("varshith");
				r.setPassword("1188");
				r.setPhno("9502945989");
				return r;
			}
			else
			{
				return null;
			}
		}
		else
		{
			try {
			    Class.forName("com.mysql.cj.jdbc.Driver");
			    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");
			    PreparedStatement ps = conn.prepareStatement("SELECT * FROM logindata WHERE email=? AND password=?");
			    
			    ps.setString(1, s.getEmail());
			    ps.setString(2, s.getPassword());
			    Registration r1 = new Registration();
			    ResultSet rs = ps.executeQuery();
			    	int c=0;
			    	String ans="a";
			        while (rs.next()) {
			            c+=1;
			        	System.out.println(rs.getString(1) + " " + rs.getBigDecimal(3)+" "+rs.getString(2));
			        	ans = rs.getString(2);
			        	r1.setEmail(rs.getString(1));
			        	r1.setUsername(rs.getString(2));
			        	r1.setPhno("9502945989");
			        	return r1;
			        }
			        if(c==0)
			        {
			        	return null;
			        }
			        else
			        {
			        	return r1;
			        }
			} catch (Exception e) {
			    // TODO Auto-generated catch block
			    e.printStackTrace();
			}
			return null;

		}
	}
	public String isRegistration(Registration r)
	{
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");
//		    Statement stmt = conn.createStatement();
//		    stmt.execute("CREATE TABLE logindata(email VARCHAR(30) PRIMARY KEY, username VARCHAR(30), password VARCHAR(30), phoneno BIGINT)");

		    PreparedStatement ps = conn.prepareStatement("INSERT INTO logindata(email, username, password, phoneno) VALUES (?, ?, ?, ?)");

		    ps.setString(1, r.getEmail());
		    ps.setString(2, r.getUsername());
		    ps.setString(3, r.getPassword());
		    ps.setString(4, r.getPhno());
		    ps.execute();
		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}

		return "Registration Succesfull";
	}
	public String isTender(Tender t)
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");
		    PreparedStatement ps = conn.prepareStatement( "INSERT INTO tenderdata (tenderuser, tendertitle, tenderimage, tenderorg, tenderdate, tenderdescription, tendercontactperson , tenderemail,tenderphone) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)");
		    ps.setString(1, t.tenderuser);
		    ps.setString(2, t.getTendertitle());
		    ps.setString(3, t.getTenderimage());
		    ps.setString(4, t.getOrg());
		    ps.setString(5, t.getDate());
		    ps.setString(6, t.getDescription());
		    ps.setString(7, t.getContactPerson());
		    ps.setString(9, t.getPhone());
		    ps.setString(8, t.getContactemail());
		    System.out.println(t.getContactemail()+t.getDescription()+" "+t.getDate()+" "+t.tenderuser);
		    ps.execute();
		    return "Insertion Done Successfully";
		    
		    
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}

		return "unsuccessfull";
	}
	public List<Tender> gettingTenderData()
	{
		
	    
	        List<Tender> tenderList = new ArrayList<>();

	        // SQL query to retrieve data
	        String sql = "SELECT * FROM tenderdata";

	        try {
	        		try {
						Class.forName("com.mysql.cj.jdbc.Driver");
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	    		    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","admin");
	    		    
	             Statement statement = conn.createStatement();
	             ResultSet resultSet = statement.executeQuery(sql); 

	            // Loop through the result set and create Tender objects
	            while (resultSet.next()) {
	                int tenderid = resultSet.getInt("tenderid");
	                String tenderuser = resultSet.getString("tenderuser");
	                String tendertitle = resultSet.getString("tendertitle");
	                String tenderimage = resultSet.getString("tenderimage");
	                String tenderorg = resultSet.getString("tenderorg");
	                String tenderdate = resultSet.getString("tenderdate");
	                String tenderdescription = resultSet.getString("tenderdescription");
	                String tendercontactuser = resultSet.getString("tendercontactperson");
	                String tenderphone = resultSet.getString("tenderphone");
	                String tenderemail = resultSet.getString("tenderemail");
	                // Create a Tender object and add it to the list
	                Tender tender = new Tender(tenderid, tenderuser, tendertitle, tenderimage, tenderorg, tenderdate, tenderdescription,tendercontactuser, tenderemail,tenderphone);
	                tenderList.add(tender);
	            }

	            // Now, the tenderList contains all the retrieved Tender objects
	            // You can use the list for further processing

	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return tenderList;
		
	}
}
