package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Role;
import model.UserModel;
import utils.DbUtils;

public class UserDAO {

	
	public static void main(String[] args) {
		UserDAO s = new UserDAO();
		System.out.println(s.register("zxczxczx", "123123"));
	}
	public boolean register(String username, String password) {
		boolean bl = false;
		ArrayList<String> listUser =  getUser();
		for (String user : listUser) {
			if(user.equalsIgnoreCase(username)) {
				bl = false;
				break;
			} else {
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
						break;
					}
				} catch (SQLException ex) {
					try {
						conn.rollback();
					} catch (SQLException e) {
						bl = false;
					}

				}
			}
		}
		
		return bl;
	}

	public UserModel login(String username, String password) {
		UserModel user = new UserModel();
		ArrayList<Role> roles = new ArrayList<>();
		Connection conn = DbUtils.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append("select * ");
		sql.append("from user_db as u ");
		sql.append("inner join role_db as r ");
		sql.append("on u.role_id = r.role_id where user_name = ? and user_password = ?");
		try {
			PreparedStatement ps = conn.prepareStatement(sql.toString());
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				user.setUser_id(rss.getInt("user_id"));
				user.setUser_name(rss.getString("user_name"));
				user.setUser_password(rss.getString("user_password"));
				user.setAddress(rss.getString("address"));
				user.setEmail(rss.getString("email"));
				user.setPhone(rss.getString("phone"));
				user.setUser_fullname(rss.getString("user_fullname"));
				Role role = new Role();
				role.setRole_name(rss.getString("role_name"));
				roles.add(role);
				user.setRoles(roles);
			}
		} catch (SQLException ex) {

			ex.printStackTrace();

		}
		return user;

	}

	public boolean updateUser(UserModel user) {
		boolean result = false;
		Connection conn = null;
		try {
			conn = DbUtils.getConnection();
			String sql = "update user_db set user_fullname = ? , phone = ? , email = ? , address = ? where user_id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUser_fullname());
			ps.setString(2, user.getPhone());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getAddress());
			ps.setInt(5, user.getUser_id());
			if (ps.executeUpdate() > 0) {
				result = true;
				conn.commit();
			}
		} catch (SQLException ex) {
			try {
				conn.rollback();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}

		}
		return result;
	}

	private ArrayList<String> getUser() {
		Connection conn = null;
		ArrayList<String> listUser = new ArrayList<>();
		
		try {
			conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("select user_name from user_db");
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				String result = rss.getString("user_name");
				listUser.add(result);
			}
		} catch (SQLException ex) {

		}
		return listUser;
	}
	
	
}
