<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login .My Sweet Love</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Nuptials Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!-- <script src="js/jquery-ddorai.js"></script> -->
<link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap_index.css">
<link href="css/style_login.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8">

		<!--light-box-files-->
	<script type="text/javascript" charset="utf-8">
	/* 	$(function() {
			$('.portfolio-grids a').Chocolat();
		});
		 */
		function logout() {
			var f = confirm("로그아웃 하시겠습니까?");
			if (f)
				location.href = "member.do?command=logout"; //Controller에서 기능으로 연결..
		}
		
	</script>

<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

<style type="text/css">
*, *:before, *:after 
  box-sizing: border-box;
}

html {
  overflow-y: scroll;
}

body {
  background: #c1bdba;
  display :block;
 background-image: url("${initParam.root}img/login_bg.jpg");
  font-family: 'Titillium Web', sans-serif;
}

.from{
	background-color:rgba(255, 224, 224, 0.68);
}

a {
  text-decoration: none;
 color: #1ab188; 
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
a:hover {
  /* color: #179b77; */
}

.form {
  padding: 40px;
  max-width: 500px;
  max-height: 565px;
  margin: 10px auto;
  border-radius: 10px;
  box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
}

.tab-group {
  list-style: none;
  padding: 0;
  margin: 0 0 10px 0;
}
.tab-group:after {
  content: "";
  display: table;
  clear: both;
}
.tab-group li a {
  display: block;
  text-decoration: none;
  padding: 10px;
  background: rgba(160, 179, 176, 0.25);
 /*  color: #a0b3b0; */
 color: #000;
  font-size: 20px;
  float: left;
  width: 50%;
  text-align: center;
  cursor: pointer;
  -webkit-transition: .5s ease;
  transition: .5s ease;
  height: 50px;
}
.tab-group li a:hover {
 /*  background: #179b77; */
 background: #8b7979;
  color: #ffffff;
}
.tab-group .active a {
 /*  background: #1ab188; */
 background: #8b7979;
  color: #fff;
}

.tab-content > div:last-child {
  display: none;
}

h1 {
  text-align: center;
  color: #ffffff;
  font-weight: 300;
  margin: 0 0 20px;
}

label {
  position: absolute;
  -webkit-transform: translateY(6px);
          transform: translateY(6px);
  left: 13px;
  color: rgb(155, 155, 155);
  -webkit-transition: all 0.25s ease;
  transition: all 0.25s ease;
  -webkit-backface-visibility: hidden;
  pointer-events: none;
  font-size: 22px;
}
label .req {
  margin: 2px;
  color: #1ab188;
}

label.active {
  -webkit-transform: translateY(50px);
          transform: translateY(50px);
  left: 2px;
  font-size: 14px;
}
label.active .req {
  opacity: 0;
}

label.highlight {
  color: rgb(155, 155, 155);
}

input, textarea {
  font-size: 22px;
  display: block;
  width: 100%;
  height: 100%;
  padding: 5px 10px;
  background: none;
  background-image: none;
  /* border: 1px solid #a0b3b0; */
  
  border: 1px solid #ccc;
  border-radius: 4px;
  color: #000;
  border-radius: 0;
  -webkit-transition: border-color .25s ease, box-shadow .25s ease;
  transition: border-color .25s ease, box-shadow .25s ease;
}
input:focus, textarea:focus {
  outline: 0;
  border-color: #1ab188;
}

textarea {
  border: 2px solid #a0b3b0;
  resize: vertical;
}

.field-wrap {
  position: relative;
  margin-bottom: 40px;
}

.top-row:after {
  content: "";
  display: table;
  clear: both;
}
.top-row > div {
  float: left;
   width: 100%; 
  margin-right: 4%;
}
.top-row > div:last-child {
  margin: 0;
}

.button {
 border: 0;
    outline: none;
    border-radius: 0;
    padding: 10px 0;
    font-size: 1.8em;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: .1em;
    /* background: #1ab188; */
    background: #475b55;
    color: #ffffff;
    -webkit-transition: all 0.5s ease;
    transition: all 0.5s ease;
    -webkit-appearance: none;
    height: 60px;
}
.button:hover, .button:focus {
  background: #179b77;
}

.button-block {
  display: block;
  width: 100%;
}

.forgot {
  margin-top: -20px;
  text-align: right;
}

/* 추가 */
.test {
	background-color: white	;
}

.navbar-inverse .navbar-nav > li:hover{		
	background-color: #000;		
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
   $('.form').find('input, textarea').on('keyup blur focus', function (e) {
        
        var $this = $(this),
            label = $this.prev('label');
   
           if (e.type === 'keyup') {
               if ($this.val() === '') {
                label.removeClass('active highlight');
              } else {
                label.addClass('active highlight');
              }
          } else if (e.type === 'blur') {
             if( $this.val() === '' ) {
                label.removeClass('active highlight'); 
               } else {
                label.removeClass('highlight');   
               }   
          } else if (e.type === 'focus') {
            
            if( $this.val() === '' ) {
                label.removeClass('highlight'); 
               } 
            else if( $this.val() !== '' ) {
                label.addClass('highlight');
               }
          }
   
      });
   
      $('.tab a').on('click', function (e) {
        
        e.preventDefault();
        
        $(this).parent().addClass('active');
        $(this).parent().siblings().removeClass('active');
        
        target = $(this).attr('href');
   
        $('.tab-content > div').not(target).hide();
        
        $(target).fadeIn(600);
        
      });
});
</script>


</head>

<body>
<!-- 메뉴바 -->		
	<jsp:include page="loginNav.jsp"></jsp:include>
<!-- //메뉴바 -->


<div class="form test">
      <ul class="tab-group">
        <li class="tab active"><a href="#login">Log In</a></li>
        <li class="tab"><a href="#signup">Sign Up</a></li>
      </ul>
      
      <div class="tab-content">
      
      
        <div id="login">   
          <h1 style="color: black;">Welcome Back!</h1>
          
          <form method="post" action="${initParam.root }member.do?flag=url="+${param.url }>
          <input type="hidden" name="command" value="login">
          <input type="hidden" name="location" value="${param.location }">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="text" name="memberId" id="inputEmail" class="form-control" required autocomplete="on" autofocus="autofocus"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" id="inputPassword" class="form-control" required autocomplete="off"/>
          </div>
          
          <div class="forgot">
             <a href="find.jsp">Forgot Id?</a> &nbsp;
             <a href="find.jsp">Forgot Password?</a></p>
          </div>
         
          
          <button class="button button-block" type="submit">Log In</button>
          
          </form>
		</div>
		 <div id="signup">   		
          <h1 style="color: black;">Sign Up for Free</h1>		
          		
          <form action="${initParam.root }member.do" method="post">		
          <input type="hidden" name="command" value="register">		
          		
          <!-- <div class="top-row"> -->		
            <!-- <div class="field-wrap">		
              <label>		
                First Name<span class="req">*</span>		
              </label>		
              <input type="text" required autocomplete="off" />		
            </div> -->		
        		
            <!-- <div class="field-wrap">		
              <label>		
                Name<span class="req">*</span>		
              </label>		
              <input type="text" name="name" required autocomplete="off"/>		
            </div> -->		
         <!--  </div> -->		
         <!-- <br> -->		
          <div class="field-wrap">		
            <label>		
              Email Address<span class="req">*</span>		
            </label>		
            <input type="email" name="memberId" required autocomplete="off"/>		
          </div>		
          		
          <div class="field-wrap">		
            <label>		
              Set A Password<span class="req">*</span>		
            </label>		
            <input type="password" name="password" autocomplete="off"/>		
          </div>		
          		
          <div class="field-wrap">		
              <label>		
                Name<span class="req">*</span>		
              </label>		
              <input type="text" name="name" required autocomplete="off"/>		
           </div>		
           		
           <div class="field-wrap">		
              <label>		
                Phone Number<span class="req">*</span>		
              </label>		
              <input type="text" name="phoneNumber" required autocomplete="off"/>		
            </div>		
          <button type="submit" class="button button-block">Get Started</button>		
          		
          </form>		
        </div>
        
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->


</body>
</html>
