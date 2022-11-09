package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.loaibean;
import bean.sachbean;
public class sachdao {
	public ArrayList<sachbean> getsach(){
		
		try {
			ArrayList<sachbean> ds = new ArrayList<sachbean>();
			// b1: Ket noi vao csdl
			KetNoi kn = new KetNoi();
			kn.KetNoi();
			//b2: Lay du lieu ve
			String sql = "select * from sach";
			PreparedStatement cmd = kn.cn.prepareStatement(sql);
			ResultSet rs = cmd.executeQuery();
			// b3
			while(rs.next()) {
				String masach = rs.getString("masach");
				String tensach = rs.getString("tensach");
				String tacgia = rs.getString("tacgia");
				int soluong = Integer.parseInt(rs.getString("soluong"));
				int gia = Integer.parseInt(rs.getString("gia"));
				String anh = rs.getString("anh");
				String maloai = rs.getString("maloai");
				
				ds.add(new sachbean(masach, tensach, tacgia, soluong, gia, anh, maloai));
				
			}
			//b4: dong ket noi
			rs.close();
			kn.cn.close();
			return ds;
			
		} catch (Exception e) {
			// TODO: handle exception

			return null;
		}
		
	}
}
