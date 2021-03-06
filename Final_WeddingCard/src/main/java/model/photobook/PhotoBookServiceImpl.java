package model.photobook;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PhotoBookServiceImpl implements PhotoBookService{
	private PhotoBookDao photoBookDao;

	public void setPhotoBookDao(PhotoBookDao photoBookDao) {
		this.photoBookDao = photoBookDao;
	}

	public List<PhotoBookVO> getPhotoBookList(String memberId) {
		return photoBookDao.getPhotoBookList(memberId);
	}

	public PhotoBookVO getPhotoBookByNo(String bookNo) {
		return photoBookDao.getPhotoBookByNo(bookNo);
	}

	public void createPhotoBook(PhotoBookVO pbvo) {
		photoBookDao.createPhotoBook(pbvo);
	}

	public void modifyPhotoBook(PhotoBookVO pbvo) {
		photoBookDao.modifyPhotoBook(pbvo);
	}

	public void deletePhotoBook(String bookNo) {
		photoBookDao.deletePhotoBook(bookNo);
	}

	
	public List<String[]> imgList(String url, String comment) {
		String[] urlArr = url.split("`");
		String[] comArr = comment.split("`END`");
		
		List<String[]> list = new ArrayList<String[]>();
		
		for(int i=0; i <urlArr.length; i++) {
			String[] str = new String[2];
			
			str[0] = urlArr[i];
			
			if(comArr[i].equals("EMPTY"))
	            str[1] = "";
	         else
	            str[1] = comArr[i];
			
			list.add(str);
	
		}
		
		return list;
	}

}
