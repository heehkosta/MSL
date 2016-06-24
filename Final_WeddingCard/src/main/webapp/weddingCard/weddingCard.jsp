<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="keywords"
	content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective" />
<meta name="author" content="MSL" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Wedding Card</title>

<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- <link href="css/bootstrap-responsive.css" rel="stylesheet"> -->

<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/jquery-ui.css" />
<link rel="stylesheet" href="css/uploadifive.css" />
<link rel="stylesheet" href="css/jquery.cropbox.custom.css" />
<link rel="stylesheet" href="css/builder.css" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<link href="css/bootstrap_index.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style_index.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="screen" charset="utf-8">

<!-- 우리꺼 -->
<link rel="stylesheet" type="text/css" href="./css/weddingCard.css">


<!-- ================================== -->
<script type="text/javascript" src="./js/jquery-1.12.3.js"></script>
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<script src="js/modernizr.custom.js"></script>
<!-- <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
 -->
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/hammer.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script src="js/jquery.datepicker.regional.kr.js"></script>
<script src="js/jquery.scrollTo.min.js"></script>

<!-- 이미지 업로드 -->
<!-- <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>  -->
<script src="./js/jquery.form.js"></script>

<!-- 우리꺼 -->
<script src="./js/weddingCard.js"></script>

</head>
<body>
	<c:if test="${sessionScope.mvo == NULL }">
		<c:redirect url="../login/loginregister.jsp" />
	</c:if>

	<!-- 메뉴바 -->
	<nav class="navbar navbar-inverse"
		style="background-color: #f8f8f8; border-color: #e7e7e7;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="../index.jsp" style="color: #777;">Home</a>
			</div>
			<ul class="nav navbar-nav" style="margin-left: 82%;">
				<li
					style="padding-bottom: 17px; padding-right: 8px; padding-left: 8px;"><a
					href="../card.do?command=getAllCards"
					style="padding: 0px; width: 100%; margin: 10px 0px 0px 0px; padding-top: 3px;"><span
						style="padding: 5px 12px 12px 10px;">청첩장보기</span></a></li>
				<li
					style="padding-top: 3px; padding-bottom: 12px; padding-right: 8px; padding-left: 8px;"
					class="lnb_icon5"><a href="javascript:logout()"
					style="padding: 0px; width: 100%; margin: 10px 0px 0px 0px; padding-bottom: 5px; padding: 0px 5px 5px 0px;"><span
						class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
			</ul>
		</div>
	</nav>

	<!-- //메뉴바 -->

	<form name="frmWeddingCard" id="frmWeddingCard" method="post" >
		
		<div class="ui-grid-a contents" >
			<div class="ui-block-a">
				<div class="cont_look">
					<div class="look_bg">
						<img src="images/preview_mobile2.png" alt="미리보기화면"><span
							class="blind">미리보기영역</span>
					</div>
					<div class="look_input">
					<!-- 왼쪽 미리보기 부분 -->
						<iframe src="${initParam.root}/weddingCard/preview_Fall In Love/preview.jsp"
							name="left_skin_preview" id="left_skin_preview" width="40%"
							height="100%" scrolling="auto"> </iframe>
					</div>
					<!--  ============== 모바일 ============== -->
					<div class="md-modal md-effect-1" id="modal-1">
						<div class="md-content">
							<div class="cont_preview mobile" id="cont_preview">

								<div class="look_bg">
									<img src="images/preview_mobile2.png" alt="미리보기화면"
										style="width: 370px; height: 740px; margin-left: 40%; margin-top: 5%;">
								</div>
								<div class="look_input"
									style="margin-left: 40.5%; margin-top: 5%;">

									<iframe src="preview_Fall In Love/preview.jsp"
										name="left_skin_preview_mobile" id="left_skin_preview_mobile"
										style="width: 320px; height: 570px;" scrolling="auto">
									</iframe>
								</div>
								<button class="md-close"
									style="margin-top: 2%; background-color: #ff752f;">Close
									me!</button>
							</div>
						</div>
					</div>

					<div class="column"
						style="padding: 0px 0px 0px 0px; margin-left: 25%; margin-top: 2%; width: 30%;">
						<button class="md-trigger mobile" id="md-mobile"
							data-modal="modal-1"
							style="margin-left: 0px; background-color: #ff752f; font-color: #fff; border-radius: 10px;">PHONE</button>
					</div>

					<!--  ============== PC ============== -->
					<div class="md-modal md-effect-2" id="modal-2">
						<div class="md-content">
							<div data-role="page" id="skin_page" data-url="skin_page"
								tabindex="0" class="ui-page ui-page-theme-a ui-page-active">
								<div class="look_input"
									style="width: 90%; height: 80%; margin-left: 4%;">
									<iframe src="preview_Fall In Love/preview.jsp" name="left_skin_preview_pc"
										id="left_skin_preview_pc" style="" scrolling="auto">
									</iframe>
								</div>
								<button class="md-close"
									style="margin-top: 880px; background-color: #ff752f;">Close
									me!</button>
							</div>

						</div>
					</div>

					<div class="column"
						style="padding: 0px 0px 0px 0px; margin-top: 2%; width: 30%;">
						<button class="md-trigger" id="md-pc" data-modal="modal-2"
							style="margin-left: 0px; background-color: /* #ff7f00 */ #ff752f; font-color: #fff; border-radius: 10px;">PC</button>
					</div>

				</div>
			</div>
		</div>

		<div class="md-overlay"></div>
		<!-- the overlay element -->
		<!-- classie.js by @desandro: https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
		<script src="js/modalEffects.js"></script>

		<!-- for the blur effect -->
		<!-- by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/js/';
		</script>
		<script src="js/cssParser.js"></script>
		<script src="js/css-filters-polyfill.js"></script>


		<!-- Tab 영역 include  -->


		<div id="tabs" style="width: 30%; margin-left: 70%; height: 800px;">
			<ul style="width: 80%; margin-left: 10%; padding-left: 2%;">

				<li><a href="#tabs-1"> <span> <i
							class="fa fa-calendar-check-o"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">스킨선택</font>
				</a></li>

				<li><a href="#tabs-2"> <span> <i class="fa fa-list"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">신랑신부</font>
				</a></li>

				<li><a href="#tabs-3" onclick="photoBookAjax()"> <span>
							<i class="fa fa-list" style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">&nbsp;포토북&nbsp;</font>
				</a></li>

				<li><a href="#tabs-4"> <span> <i class="fa fa-bars"
							style="font-size: 36px; margin-left: 20%;"></i>
					</span><br> <font size="3">&nbsp;예식장&nbsp;</font>
				</a></li>

			</ul>

			<!-- style="position: relative;background: rgba(0,0,0,0.5);" -->
			<div id="tabs-1">
				<input type="hidden" name="templateType" value="" id="templateType">
				<table>
					<tr align="center">
						<td>
							 <img src="./preview_Fall In Love/images/Fall In Love.jpg"
							class="img-rounded" width="150" height="120">
							<input type="radio" name="template" id="template"
							value="Fall In Love" required="required">
						</td>
						<td>
							 <img src="./preview_Innocent Bride/images/Innocent Bride.jpg"
							class="img-rounded" width="150" height="120">
							<input type="radio" name="template" id="template2"
							value="Innocent Bride" required="required">
						</td>
						<td><img src="images/222.jpg" class="img-rounded"
							alt="Cinque Terre" width="150" height="120"> <input
							type="radio" name="template" id="template3" value="basicSkin"
							disabled="disabled"></td>
					</tr>
					
				</table><p>
				상단 이미지 :<input style="margin: 2%;" type="file" name="imgFile"
							id="imgFile" >
							<input type="hidden" name="imgSrc" value="">
							<input type="submit" value="이미지 업로드 " id="sendImage">
			</div>



			<div id="tabs-2">
				<img alt="" src="images/111.png"
					style="width: 100%; margin-bottom: 10%; margin-top: 5%; height: 290px;">

				신랑이름 : <input style="margin: 2%;" type="text" id="groomName"
					name="groomName" ><br> 
					
					신랑번호 : <input
					style="margin: 2%;" type="text" id="groomTel" name="groomTel"
					 onkeydown='return onlyNumber(event)'
					onkeyup='removeChar(event)' style='ime-mode:disabled;'><br>
					
				신부이름 : <input style="margin: 2%;" type="text" name="brideName"
					id="brideName"><br> 
					
					신부번호 : <input
					style="margin: 2%;" type="text" name="brideTel" id="brideTel"
					 onkeydown='return onlyNumber(event)'
					onkeyup='removeChar(event)' style='ime-mode:disabled;'><br>
				&nbsp;&nbsp;&nbsp;url&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;
				<input type="text" name="url" id="url" onkeyup="urlCheck()"
					> <span id="checkResult"></span> <br>
			</div>

			<!-- ###################### photobook ####################### -->
			<input type="hidden" id="photoBookImg" name="photoBookImg" value="">
			<input type="hidden" id="photoBookNo" name="photoBookNo" value="">
			<input type="hidden" id="photoBookComment" name="photoBookComment"
				value="">

			<div id="tabs-3">
				<jsp:include page="weddingCard_pbList.jsp" />
			</div>

			<div id="tabs-4">

				<div class="ui-grid-f section">
					<div class="ui-block-a">
						<div class="ui-block-b">
							예식일:<input type="text" id="datepicker" class="input_box_type1"
								name="cardDate" required="required">
						</div>
						<br>
						<div class="ui-block-c">
							<input type="hidden" id="dDay" name="dDay" value=""> <select
								name="ampm" id="ampm" class="input_box_type1"
								required="required">
								<option value="AM" selected="selected">오전</option>
								<option value="PM">오후</option>
							</select>
						</div>
						<div class="ui-block-d">
							<select name="hour" id="hour" class="input_box_type1"
								required="required">
								<option value="1">01</option>
								<option value="2">02</option>
								<option value="3">03</option>
								<option value="4">04</option>
								<option value="5">05</option>
								<option value="6">06</option>
								<option value="7">07</option>
								<option value="8">08</option>
								<option value="9">09</option>
								<option value="10" selected="selected">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
						</div>
						<div class="ui-block-e">
							<select name="min" id="min" class="input_box_type1"
								required="required">
								<!--<option value="" selected="selected">분</option>-->
								<option value="00" selected="selected">00</option>
								<option value="05">05</option>
								<option value="10">10</option>
								<option value="15">15</option>
								<option value="20">20</option>
								<option value="25">25</option>
								<option value="30">30</option>
								<option value="35">35</option>
								<option value="40">40</option>
								<option value="45">45</option>
								<option value="50">50</option>
								<option value="55">55</option>
							</select>
						</div>
					</div>
				</div>
				초대글<br>
				<div class="section">
					<textarea name="cardContext" id="cardContext"
						class="input_box_type2" rel="tooltip"
						title="<span class='tooltip_title'>초대글</span>
					<br>- 초대(모시는)글을 입력 해주십시요"
						placeholder="초대글" required="required"></textarea>
				</div>
				<div class="section">
					&nbsp;&nbsp;예식장&nbsp;&nbsp; : <input style="margin: 2%;"
						type="text" id="hallName" name="hallName" required="required"><br>
					예식 장소 :<input style="margin: 2%;" type="text" id="hallLocation"
						name="hallLocation" required="required"><br> 
					지도
					<div id="map" style="width: 100%; height: 200px;">
					
						
					</div><!-- map  -->
					
				</div><!-- 예식장 section -->
			</div>


			<div>
				<input style="background: #f96; width: 100%; height: 50px;"
					type="button" value="초대장 생성" id="createCardBtn">
			</div>

		</div>
		<!-- tabs -->
	</form>
	
</body>
</html>