package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.User;
import utils.DbUtils;

public class UserDAO {

	public boolean register(String username, String password) {
		boolean bl = false;
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into user (username, password) values (?,?)");
			ps.setString(1, username);
			ps.setString(2, password);
		   if( ps.executeUpdate() >0) {
			bl = true;
			conn.commit();
		   }
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return bl;
	}

	public boolean login(String username, String password) {
		boolean bl = false;
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("select username, password from user where username = ? and password = ?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rss = ps.executeQuery();
			
			if (rss.next()) {
				bl = true;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return bl;

	}
}
