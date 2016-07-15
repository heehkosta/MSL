<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet"> -->
 
<style type="text/css">
.video-list-thumbs{}
.video-list-thumbs > li{
    margin-bottom:12px;
    width:150; height:120;
}
.video-list-thumbs > li:last-child{}
.video-list-thumbs > li > a{
   display:block;
   position:relative;
   background-color: #111;
   color: #fff;
   padding: 8px;
   border-radius:3px
    transition:all 500ms ease-in-out;
    border-radius:4px;
}
.video-list-thumbs > li > a:hover{
   box-shadow:0 2px 5px rgba(0,0,0,.3);
   text-decoration:none
}
.video-list-thumbs h2{
   bottom: 0;
   font-size: 14px;
   height: 33px;
   margin: 8px 0 0;
}
.video-list-thumbs .glyphicon-share-alt{
    font-size: 60px;
    opacity: 0.6;
    position: absolute;
    right: 39%;
    top: 20%;
    text-shadow: 0 1px 3px rgba(0,0,0,.5);
    transition:all 500ms ease-in-out;
}
.video-list-thumbs > li > a:hover .glyphicon-share-alt{
   color:#fff;
   opacity:1;
   text-shadow:0 1px 3px rgba(0,0,0,.8);
}
.video-list-thumbs .duration{
   background-color: rgba(0, 0, 0, 0.4);
   border-radius: 2px;
   color: #fff;
   font-size: 11px;
   font-weight: bold;
   left: 12px;
   line-height: 13px;
   padding: 2px 3px 1px;
   position: absolute;
   top: 12px;
    transition:all 500ms ease;
}
.video-list-thumbs > li > a:hover .duration{
   background-color:#000;
}
@media (min-width:320px) and (max-width: 480px) { 
   .video-list-thumbs .glyphicon-share-alt{
    font-size: 35px;
    right: 36%;
    top: 27%;
   }
   .video-list-thumbs h2{
      bottom: 0;
      font-size: 12px;
      height: 22px;
      margin: 8px 0 0;
   }
}
</style>


<script src="//ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js"></script>
<script type="text/javascript">
  WebFont.load({
 
    // For google fonts
    google: {
      families: ['Droid Sans', 'Droid Serif']
    }
    // For early access or custom font
    custom: {
        families: ['Nanum Gothic'],
        urls: ['http://fonts.googleapis.com/earlyaccess/nanumgothic.css']
    }
 
  });
</script>



</head>
<body>
<ul class="list-unstyled video-list-thumbs row">
	<div id="pbList-tab" >
	</div>
</ul>
</body>
</html>