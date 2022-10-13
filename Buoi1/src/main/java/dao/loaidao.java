package dao;

import java.util.ArrayList;

import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai(){
		//Tao 1 mang luu all loai
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		ds.add(new loaibean("tin", "Cong nghe thong tin"));
		ds.add(new loaibean("toan", "Cong nghe toan"));
		return ds;
		
	}
}
