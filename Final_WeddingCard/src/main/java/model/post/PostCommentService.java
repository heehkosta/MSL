package model.post;

import java.util.List;

public interface PostCommentService {
	void writeComment(PostCommentVO pcvo);
	void modifyComment(PostCommentVO pcvo);
	void deleteComment(String commentNo);
	void deleteCommentListByPostNo(String postNo);
	PostCommentVO getCommentByNo(String commentNo);
	List<PostCommentVO> getCommentList(String postNo);
}
