package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	
	public void Them(String maSach, String tenSach, long gia, long soLuong) {
		for(giohangbean h : ds) {
			if(h.getMaSach().equals(maSach)) {
				h.setSoLuong(h.getSoLuong() + soLuong);
				return;
			}
		}
		ds.add(new giohangbean(maSach, tenSach, gia, soLuong));
	}
	
	public long TongTien() {
    	long s=0;
    	for(giohangbean h: ds)
    		s=s+h.getThanhTien();
    	return s;
    }
	
	public void XoaSach(String maSach){
		for(giohangbean s : ds) {
			if(s.getMaSach().equals(maSach)) {
				ds.remove(s);
				break;
			}
		}
	}
	
	public void XoaHetSach() {
		ds.clear();
	}
	
	public void TangSoLuong(String maSach, long soluong) {
		for(giohangbean s : ds) {
			if(s.getMaSach().equals(maSach)) {
				s.setSoLuong(soluong);
			}
		}
	}
}
