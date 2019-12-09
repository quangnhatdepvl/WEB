package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Role;
import model.UserModel;
import utils.DbUtils;

public class UserDAO {

	public boolean register(String username, String password) {
		boolean bl = false;
		Connection conn = DbUtils.getConnection();
		try {
			String sql = "insert into user_db (user_name, user_password,role_id) values (?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setInt(3, 2);
			if (ps.executeUpdate() > 0) {
				bl = true;
				conn.commit();
			}
		} catch (SQLException ex) {
			try {
				conn.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return bl;
	}

	public UserModel login(String username, String password) {
		UserModel user = new UserModel();

		Connection conn = DbUtils.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append("select user_name,user_password,role_name ");
		sql.append("from user_db as u ");
		sql.append("inner join role_db as r ");
		sql.append("on u.role_id = r.role_id where user_name = ? and user_password = ?");
		try {
			PreparedStatement ps = conn.prepareStatement(sql.toString());
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rss = ps.executeQuery();
			if (rss.next()) {
			
				user.setUser_name(rss.getString("user_name"));
				user.setUser_password(rss.getString("user_password"));
				Role role = new Role();
				role.setRole_name(rss.getString("role_name"));
				user.setRole(role);
			}
		} catch (SQLException ex) {

			ex.printStackTrace();

		}
		return user;

	}
}
