<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

<title>My Sweet Love . Wedding Card</title>
<style type="text/css">
.postInfoPanel {
	background-color: #f5f5f5;
	padding: 10px 15px;
	border: 1px solid;
	border-color: #ddd;
	margin-bottom: 20px;
	font-size: 12px;
	margin-left: 13%;
	margin-right: 13%;
	margin-top: 3%;
}

.postContentView {
	padding: 0px 15px 20px;
	margin-left: 13%;
	margin-right: 13%;
	margin-top: 3%;
}

.postCommentView {
	margin: 0px 0px 10px;
	padding: 0px 0px 5px;
}

.postButtonView {
	margin: 5px 0px 30px;
	text-align: right;
	margin-left: 13%;
	margin-right: 13%;
	margin-top: 3%;
}

.list-write-btn {
	font-family: "Roboto", sans-serif;
    border-radius: 2px;
    border: 1px solid transparent;
    font-weight: normal;
    vertical-align: middle;
    white-space: nowrap;
    cursor: pointer;
    -ms-user-select: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -o-user-select: none;
    user-select: none;
    
    display: inline-block;
    text-align: center;

	padding: 5px 10px;
	font-size: 12px;
	line-height: 1.5;
}

.list-write-btn-color {
	border: 1px solid #D7D7D7;
	color: #000;
	background-color: #FFF;
}

.list-write-btn-color:hover {
	border-color: rgb(213, 7, 15);
	color: rgb(255, 255, 255);
	background-color: rgb(213, 7, 15);
}
textarea{
	width: 100%;
}
</style>

<script type="text/javascript">
	function checkIsDelete() {
		if("${pvo == null}" == "true") {
			alert("삭제된 게시물입니다.");
			location.href="${initParam.root}post.do?command=getAllQnAs";
		}
	}

	function deleteQnA() {

		if(confirm("정말 삭제하시겠습니까?")){
			location.href="${initParam.root }post.do?command=deleteQnA&&postNo=${pvo.postNo}";
		}
	}
	
</script>

</head>
<body style="margin: 0px;" onLoad="checkIsDelete()">

<jsp:include page="postQnaNav.jsp"></jsp:include>

<div class="postInfoPanel" >
		제목 : ${requestScope.pvo.title}
		&nbsp;
		
		<c:choose>
			<c:when test="${pvo.memberVO.memberId == 'pcp8282' }">
				작성자 : 관리자
				&nbsp;
			</c:when>
			<c:otherwise>
				작성자 : ${pvo.memberVO.name }
				&nbsp;
				<span style=" color: #5D5D5D;">
					<i class="fa fa-comment"></i>
					${fn:length(commentList) }
				</span>
				&nbsp;
			</c:otherwise>
		</c:choose>
		
		<span style="float:right; color: #5D5D5D;">
			<i class="fa fa-clock-o" aria-hidden="true"></i>
			<c:set var="writeDate" value="${fn:split(pvo.writeDate, ' ') }"/>
			<c:set var="writeTime" value="${fn:split(writeDate[1], ':') }"/>
			${writeDate[0] } ${writeTime[0] }:${writeTime[1] }
		</span>
</div>

<div class="postContentView">
	${requestScope.pvo.content}
</div>

<!-- ===================== Comment Start ================= -->
<c:if test="${pvo.memberVO.memberId != 'pcp8282' }">
	<div  style="margin-left: 13%; margin-right: 13%; margin-top: 3%">
		<jsp:include page="postQnaComment.jsp"/>
	</div>
</c:if>
<!-- ===================== Comment End ================= -->

<div class="postButtonView">
	<c:if test="${pvo.memberVO.memberId == mvo.memberId || mvo.memberId == 'pcp8282' }">
		<button class="list-write-btn list-write-btn-color" onclick="deleteQnA()">          
			<i class="fa fa-times"></i> 
			<b>삭제</b>
		</button>
		<c:if test="${pvo.memberVO.memberId == mvo.memberId }">
			<button class="list-write-btn list-write-btn-color" onclick="javascript:location.href='${initParam.root }post.do?command=modifyViewQnA&&postNo=${pvo.postNo}&&page=${param.page}'">             
				<i class="fa fa-plus"></i>
				<b>수정</b>
			</button>
		</c:if>
	</c:if>

	<button class="list-write-btn list-write-btn-color" onclick="javascript:location.href='${initParam.root }post.do?command=getAllQnAs&&page=${param.page }'">          
		<i class="fa fa-bars"></i> 
		<b>목록</b>
	</button>

</div>
	
</body>
</html>