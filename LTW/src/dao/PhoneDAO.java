package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.PhoneModel;
import utils.DbUtils;

public class PhoneDAO {

	public ArrayList<PhoneModel> getAll() {
		ArrayList<PhoneModel> listPhone = new ArrayList<>();
		try {
			Connection conn = DbUtils.getConnection();
			String sql = "select * from phone";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				PhoneModel phone = new PhoneModel();
				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
				phone.setTypeTel(rss.getString("typePhone"));
				phone.setPrice(rss.getDouble("price"));
				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
				phone.setUrl_img(rss.getString("img_url"));
				phone.setNgaySanXuat(rss.getDate("ngaySanXuat"));
				phone.setDescription(rss.getString("des"));
				phone.setId(rss.getInt("luotTruyCap"));
				listPhone.add(phone);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listPhone;
	}

	
	
	public PhoneModel getPhone(int id) {
		PhoneModel phone = new PhoneModel();
		try {
			Connection conn = DbUtils.getConnection();
			String sql = "select * from phone where id= ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rss = ps.executeQuery();
			if (rss.next()) {
				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
				phone.setTypeTel(rss.getString("typePhone"));
				phone.setPrice(rss.getDouble("price"));
				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
				phone.setUrl_img(rss.getString("img_url"));
				phone.setNgaySanXuat(rss.getDate("ngaySanXuat"));
				phone.setDescription(rss.getString("des"));
				phone.setId(rss.getInt("luotTruyCap"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return phone;
	}

	public ArrayList<PhoneModel> getAll(String nhaSanXuat) {
		ArrayList<PhoneModel> listPhone = new ArrayList<>();
		try {
			Connection conn = DbUtils.getConnection();
			String sql = "select * from phone where nhaSanXuat= ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, nhaSanXuat);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				PhoneModel phone = new PhoneModel();
//				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
//				phone.setTypeTel(rss.getString("typePhone"));
				phone.setPrice(rss.getDouble("price"));
//				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
//				phone.setUrl_img(rss.getString("img_url"));
//				phone.setNgaySanXuat(rss.getDate("ngaySanXuat"));
//				phone.setDescription(rss.getString("des"));
//				phone.setId(rss.getInt("luotTruyCap"));
				listPhone.add(phone);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listPhone;
	}

	public boolean savePhone(PhoneModel phone) {
		boolean bl = false;
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into phone value (?,?,?,?,?,?,?,?) ");
			ps.setInt(1, phone.getId());
			ps.setString(2, phone.getName());
			ps.setString(3, phone.getTypeTel());
			ps.setDouble(4, phone.getPrice());
			ps.setString(5, phone.getNhaSanXuat());
			ps.setString(6, phone.getUrl_img());
			ps.setDate(7, phone.getNgaySanXuat());
			int kq = ps.executeUpdate();
			if (kq > 0) {
				bl = true;
				conn.commit();
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return bl;
	}
	
	public boolean deletePhone(PhoneModel phone) {
		boolean bl = false;
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("delete from phone where id = ?");
			ps.setInt(1, phone.getId());
			int kq = ps.executeUpdate();
			if (kq > 0) {
				bl = true;
				conn.commit();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return bl;
	}

}
