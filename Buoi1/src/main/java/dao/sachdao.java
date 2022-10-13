package dao;
import java.util.ArrayList;

import bean.sachbean;
public class sachdao {
	public ArrayList<sachbean> getsach(){
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds.add(new sachbean("s1", "Co so du lieu", "Le Nam", 10, 1000, "b1.jpg", "tin"));
		ds.add(new sachbean("s2", "Toan roi rac", "Tran Thanh Cong", 100, 50000, "b2.jpg", "toan"));
		ds.add(new sachbean("s3", "Giai tich", "Ngoc Trinh", 200, 25000, "b3.jpg", "toan"));
		ds.add(new sachbean("s4", "Cau truc du lieu va Thuat toan", "Tram Anh", 50, 5000, "b4.jpg", "tin"));
		ds.add(new sachbean("s5", "Java co ban", "Le Nu", 100, 50000, "b5.jpg", "tin"));
		ds.add(new sachbean("s6", "Java nang cao", "Le Nu", 100, 50000, "b6.jpg", "tin"));
		return ds;
	}
}
