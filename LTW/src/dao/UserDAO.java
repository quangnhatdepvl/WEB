package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.UserModel;
import utils.DbUtils;

public class UserDAO {

	public boolean register(String username, String password) {
		boolean bl = false;
		Connection conn = DbUtils.getConnection();
		try {
			String sql = "insert into user (username, password) values (?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
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

	public boolean login(String username, String password) {
		boolean bl = false;
		Connection conn = DbUtils.getConnection();
		try {
			PreparedStatement ps = conn
					.prepareStatement("select username, password from user where username = ? and password = ?");
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
