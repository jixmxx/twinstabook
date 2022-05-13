<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ include file="header.jsp"%>
<html>
<head>
<title>Twinstabook - 트위터와 인스타그램과 페이스북으로부터</title>
<link href="resources/css/font.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
$(function(){	
	$('#reply_input').keydown(function(event) {
		if (event.keyCode == 13) {
			event.preventDefault();
			$('#reply_submit').click();
		}
	});
});
	function chk() {
		alert("reply!");
		return false;
	}
</script>
<style type="text/css">
	body{font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Helvetica,Arial,sans-serif;}
	a{color:black;text-decoration:none;}
	a:hover{color:black;}
	.align-items-center{align-items: center!important}
	.fixed-width {width: 612px;}
	.img-circle {width: 42px;	height: 42px;	border-radius: 70%;	overflow: hidden;}
	.img-circle-small{width:14px;height:14px;margin-right:5px;}
	.img-circle img{width: 100%;height:100%;object-fit: cover;}
	.menu-icon{font-size:30px; margin-right:15px;-webkit-text-stroke: 2px} 
	.id-text{ color:blue;}
	.id-text:hover{color:blue;}
	.font-default-size{font-size:14px;}
	.margin-top{margin-top:72px;}
	.cursor{cursor:pointer;}
	.overflow{overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}
	.email-text{color:#828282;}
	.email-text:hover{color:#828282;}
	.submit-btn{border:0;background-color:white;color:#0095f6;}
	.reply_input{
		position:relative;
		background: 0 0;
	    border: 0;
	    color: #262626;
	    color: rgba(var(--i1d,38,38,38),1);
	    height: 18px;
	    max-height: 80px;
	    outline: 0;
	    padding: 0;
	    resize:none;
	    width:560px; 	
	}
</style>
</head>
<body>
	<!-- topNavbar -->
	<%@include file="public/topNavbar.jsp" %>
	<div class="container fixed-width margin-top" align="center">
		<div class="feed fixed-width">
			<div class="posts border">
				<div class="post_head p-2 d-flex justify-content-start border-bottom align-items-center">
					<a href="#" class="m-2 img-circle"><img alt="프사" src="${path}/resources/happysmile.jpg"></a>
					<div class="d-flex flex-column align-items-start">
					<a href="#" class="id-text font-default-size">${writer}</a>
					<a href="#" class="email-text font-default-size">${email}</a></div>
				</div>
				<!-- post_head -->
				<div class="post_content">
					<a href="#" class="post_pics_slide mb-1 border-bottom">
						<img class="fixed-width" alt="썸네일" src="${path}/resources/logo/logo-img-w.png">
						<!-- 슬라이드 뷰 -->
					</a>
					<!-- post_menu -->
					<div class="post_foot p-2">
						<div class="post_menu d-flex justify-content-start mb-2	">
							<a href="#"><i class="bi bi-heart menu-icon"></i></a>
							<a href="#"><i class="bi bi-chat-left menu-icon"></i></a>
							<a href="#"><i class="bi bi-send menu-icon"></i></a>
						</div>
						<div class="post_likes font-default-size d-flex flex-row align-items-center" align="left">
							<a href="#" class="img-circle img-circle-small">
								<img alt="프사" src="${path}/resources/happysmile.jpg"></a>
							<a href="#" class="id-text font-default-size">${firstLike}</a> 외
							<a href="#">${likes}</a>명
						</div>
						<div class="post_replys font-default-size" align="left">
							<table class="font-default-size">
								<colgroup><col width="50px"><col width="530px"><col width="20px"></colgroup>
								<tr><td><a href="#" class="id-text">${replyWrier}</a></td>
									<td>${replyContent }</td>
									<!-- 댓글 좋아요 버튼 -->
									<td><input type="checkbox" id="like1" class="likes" name="like1" hidden="hidden">
									<label class="cursor" onclick="likeReply()" for="like1"><i class="bi bi-heart"></i></label></td></tr>
							</table>
							<div class="post_reply_input d-flex align-items-center"> 
								<form action="replyInsert.html" onsubmit="return chk()" id="reply_form" name="reply_form" class="m-0 p-0 d-flex align-items-baseline">
									<textarea id="reply_input" class="reply_input" placeholder="댓글 달기..."></textarea>
									<input id="reply_submit" type="submit" name="reply_submit" class="submit-btn" value="게시">
								</form>
							</div>
							<!-- post_reply_input -->
						</div>
						<!-- post_replys -->
					</div>
					<!-- post_foot -->
				</div>
				<!-- post_content -->
			</div>
			<!-- posts -->
		</div>
		<!-- feed -->
	</div>
	<!-- container -->
</body>
</html>