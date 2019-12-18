package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Pay;
import model.PayInf;
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
		Connection conn = null;
		try {
			conn = DbUtils.getConnection();
			String sql = "select * from phone where id= ?";
			PreparedStatement ps = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_UPDATABLE);
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
				int luotTruyCap = rss.getInt("luotTruyCap") + 1;
				rss.updateInt("luotTruyCap", luotTruyCap);
				rss.updateRow();
				conn.commit();
				phone.setLuotTruyCap(rss.getInt("luotTruyCap"));
			}
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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
				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
				phone.setTypeTel(rss.getString("typePhone"));
				phone.setPrice(rss.getDouble("price"));
				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
				phone.setUrl_img(rss.getString("img_url"));
				phone.setNgaySanXuat(rss.getDate("ngaySanXuat"));
				phone.setDescription(rss.getString("des"));
				phone.setLuotTruyCap(rss.getInt("luotTruyCap"));
				listPhone.add(phone);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listPhone;
	}

	public boolean savePhone(PhoneModel phone) {
		boolean bl = false;
		Connection conn = null;
		try {
			conn = DbUtils.getConnection();
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
			try {
				conn.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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

	public ArrayList<PhoneModel> sortByPrice(int limit) {
		ArrayList<PhoneModel> list = new ArrayList<>();
		String sql = "SELECT  DISTINCT * FROM phone ORDER BY price desc LIMIT ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, limit);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				PhoneModel phone = new PhoneModel();
				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
				phone.setPrice(rss.getDouble("price"));
				phone.setUrl_img(rss.getString("img_url"));
				list.add(phone);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public ArrayList<PhoneModel> sortByNgaySanXuat(int limit) {
		ArrayList<PhoneModel> list = new ArrayList<>();
		String sql = "SELECT  DISTINCT * FROM phone ORDER BY ngaySanXuat desc LIMIT ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, limit);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				PhoneModel phone = new PhoneModel();
				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
				phone.setPrice(rss.getDouble("price"));
				phone.setUrl_img(rss.getString("img_url"));
				list.add(phone);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public int getCountNhaSanXuat(String nhaSanXuat) {
		int total = 0;
		String sql = "select count(*) as total from phone where nhaSanXuat = ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, nhaSanXuat);
			ResultSet rss = ps.executeQuery();
			if (rss.next()) {
				total = rss.getInt("total");
			}
		} catch (SQLException e) {

		}
		return total;
	}

	public int getCountPhone() {
		int total = 0;
		String sql = "select count(*) as total from phone";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rss = ps.executeQuery();
			if (rss.next()) {
				total = rss.getInt("total");
			}
		} catch (SQLException e) {

		}
		return total;
	}

	public ArrayList<PhoneModel> sortByView(int limit) {
		ArrayList<PhoneModel> list = new ArrayList<>();
		String sql = "SELECT  DISTINCT * FROM phone ORDER BY luotTruyCap desc LIMIT ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, limit);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				PhoneModel phone = new PhoneModel();
				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
				phone.setPrice(rss.getDouble("price"));
				phone.setUrl_img(rss.getString("img_url"));
				phone.setLuotTruyCap(rss.getInt("luotTruyCap"));
				list.add(phone);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public ArrayList<PhoneModel> search(String text) {
		ArrayList<PhoneModel> list = new ArrayList<>();
		String sql = "SELECT * FROM phone WHERE phoneName LIKE ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + text + "%");
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				PhoneModel phone = new PhoneModel();
				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
				phone.setPrice(rss.getDouble("price"));
				phone.setUrl_img(rss.getString("img_url"));
//				phone.setLuotTruyCap(rss.getInt("luotTruyCap"));
				list.add(phone);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 *
	 * @param limit:  quantity of post list
	 * @param offset: starting index
	 * @return
	 */
	public ArrayList<PhoneModel> listPhone(int limit, int offset) {
		ArrayList<PhoneModel> list = new ArrayList<>();
		String sql = "SELECT * FROM phone LIMIT ? , ?";
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, offset);
			ps.setInt(2, limit);
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				PhoneModel phone = new PhoneModel();
				phone.setId(rss.getInt("id"));
				phone.setName(rss.getString("phoneName"));
				phone.setNhaSanXuat(rss.getString("nhaSanXuat"));
				phone.setPrice(rss.getDouble("price"));
				phone.setUrl_img(rss.getString("img_url"));
				phone.setLuotTruyCap(rss.getInt("luotTruyCap"));
				phone.setDescription(rss.getString("des"));
				phone.setTypeTel(rss.getString("typePhone"));
				phone.setNgaySanXuat(rss.getDate("ngaySanXuat"));
				list.add(phone);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public boolean thanhToan(Pay pay) {
		boolean result = false;
		Connection conn = null;
		try {
			conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement("insert into thanhtoan value (?,?,0,?)");
			ps.setInt(1, pay.getUser_id());
			ps.setDate(3, (java.sql.Date) pay.getDateCreate());
			for (PhoneModel phone : pay.getListPhone()) {
				ps.setInt(2, phone.getId());
				int kq = ps.executeUpdate();
				if (kq > 0) {
					result = true;
					conn.commit();
				}
			}

		} catch (SQLException ex) {
			try {
				conn.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return result;
	}
	
	
	public ArrayList<PayInf> listPay() {
		ArrayList<PayInf> list = new ArrayList<>();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT p.phoneName as PhoneName, u.user_name as UserName, ");
		sql.append("t.date_create as NgayLap, ");
		sql.append("p.nhaSanXuat as HangSanXuat, p.price as Gia, u.address as DiaChi, u.phone as SDT ");
		sql.append("FROM thanhtoan t INNER JOIN user_db u ON t.user_id  = u.user_id ");
		sql.append("INNER JOIN phone p ON t.phone_id = p.id ");
		sql.append("where t.trang_thai = 0");
		try {
			Connection conn = DbUtils.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql.toString());
			ResultSet rss = ps.executeQuery();
			while (rss.next()) {
				PayInf pay = new PayInf();
				pay.setPhoneName(rss.getString("PhoneName"));
				pay.setUserName(rss.getString("UserName"));
				pay.setDateCreate(rss.getDate("NgayLap"));
				pay.setNhaSanXuat(rss.getString("HangSanXuat"));
				pay.setPrice(rss.getDouble("Gia"));
				pay.setAddress(rss.getString("DiaChi"));
				pay.setPhone(rss.getString("SDT"));
				list.add(pay);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}


}
