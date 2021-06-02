package com.neelesh.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.neelesh.model.User;

public class UserDAOImpl implements UserDAO {

	@Override
	public void addUser(User user) throws Exception {
		
		Connection con = null;
		PreparedStatement ps = null;
		try {
			
			con = ConnectionFactory.getCon();
			ps = con.prepareStatement("insert users values(?,?,?,?,?,?)");
			ps.setString(1, user.getUserId());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getFirstName());
			ps.setString(4, user.getLastName());
			ps.setString(5, user.getAddress());
			ps.setString(6, user.getCity());
					
			ps.executeUpdate();
			
		}
		finally {
			close(null, ps, con);
		}
		
	}

	@Override
	public User getUser(String userId) throws Exception {
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;
		
		try {
			con = ConnectionFactory.getCon();
			ps = con.prepareStatement("select * from users where user_id =?");
			ps.setString(1, userId);
			rs = ps.executeQuery();
			if(rs.next()) {
				user = new User();
				user.setUserId(rs.getString(1));
				user.setPassword(rs.getString(2));
				user.setFirstName(rs.getString(3));
				user.setLastName(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setCity(rs.getString(6));
				
			}
			else {
				throw new Exception("Invalid user id");
			}
		}
		finally {
			close(rs, ps, con);
		}
		
		return user;
	}
	
	private void close(ResultSet rs, PreparedStatement ps, Connection con) {
		try {
			if(rs != null) {
				rs.close();
			}
			if( ps != null) {
				ps.close();
			}
			if(con != null) {
				con.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
