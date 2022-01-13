package com.poscoict.guestbook.dao.test;

import java.util.List;
import com.poscoict.guestbook.dao.GuestbookDao;
import com.poscoict.guestbook.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
		testInsert();
		testselectAll();

	}
	
	private static void testInsert() {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("김지혜");
		vo.setPassword("1234");
		vo.setMessage("하이!");
		
		boolean result = new GuestbookDao().insert(vo);
		System.out.println(result ? "success" : "fail");
		
	}
	
	private static void testselectAll() {
		List<GuestbookVo> list = new GuestbookDao().selectAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
		
	}

}
