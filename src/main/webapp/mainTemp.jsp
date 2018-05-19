<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blog.css">
<script src="${pageContext.request.contextPath}/static/bootstrap3/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap3/js/bootstrap.min.js"></script>
<title>${pageTitle}-Powered By LiJun</title>
<style type="text/css">
	body{
		padding-top: 10px;
		padding-bottom: 40px;
	}
	.data_list{
	border: 1px solid #E5E5E5;
	padding: 10px;
	background-color: #FDFDFD;
	margin-top: 0px;
	margin-bottom: 10px;
}

.data_list .data_list_title{
	font-size: 15px;
	font-weight: bold;
	border-bottom: 1px solid #E5E5E5;
	padding-bottom: 10px;
	padding-top: 5px;
}

.data_list .data_list_title img{
	margin-top: 1px;
	vertical-align: top;
}

.data_list .datas ul {
	list-style-type: none;
	padding-left: 15px;
}

.data_list .datas ul li {
	margin-top: 10px;
}

.data_list .data_list_title .datas{
	padding: 5px;
}

.datas .date ,.datas .title {
	display:block;
	line-height: 1.5;
	font-family: Verdana,Arial,Helvetica,sans-serif;
	padding-bottom: 5px;
	font-size: 14px;
}


.datas .date a{
	color: #935A32;
	font-weight: bold;
}

.datas .title a{
	  color: #333;
	  font-weight: bold;
}

.datas .summary{
	display:block;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	line-height: 19.5px;
	padding-top: 5px;
	font-size: 13px;
	color: rgb(0, 0, 0);
}

.datas .img{
	display:block;
	clear:both;
}

.datas img{
	padding:10px;
	padding-left:0px;
	max-height: 150px;
	max-width:300px;
}

.datas .info{
	display:block;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	line-height: 18px;
	float: right;
	font-size: 12px;
}

.data_list .user_image{
	text-align: center;
}

.data_list .user_image img{
	padding-top:10px;
	width: 200px;;
	height: 250px;;
}

.data_list .nickName , .data_list .userSign{
	text-align: center;
}

.data_list .blog_title{
	margin-top:20px;
	text-align: center;
}

.data_list .blog_info{
	text-align: center;
}

.data_list .blog_content{
	margin-top:20px;
	padding-bottom: 30px;
}

.data_list .blog_share{
	padding-left: 330px;
	padding-bottom: 20px;
	padding-top: 10px
}

.data_list .blog_keyWord{
	margin-top:20px;
	padding-bottom: 30px;
	padding-left: 30px;
}

.data_list .blog_keyWord a{
	color: black;
	font-style: italic;
}

.data_list .blog_lastAndNextPage{
	border-top:1px dotted black;
	padding: 10px;
}

.data_list .commentDatas{
	padding: 10px;
}

.data_list .commentDatas .comment{
	margin-top:10px;
	margin-bottom: 5px;
	padding-bottom:15px;
	border-bottom: 1px dotted gray;
}

.data_list .commentDatas .comment font ,.data_list .commentDatas .otherComment font{
	font-weight: bold;
}



.data_list .commentDatas .otherComment{
	display: none;
}

.data_list .publish_comment{
	padding-top: 10px;
	padding-bottom: 50px;
}

.data_list .publish_comment .publishButton{
	padding-top:10px;
	float: right;
}


.data_list .verCode{
	padding-top:10px;
	padding-left:10px;
	float: left;
}
</style>
</head>
<body>
<div class="container">
	<jsp:include page="/foreground/common/head.jsp"></jsp:include>
	<jsp:include page="/foreground/common/menu.jsp"></jsp:include>
	
	
	<div class="row">
	  <div class="col-md-9">
	  	<jsp:include page="${mainPage }"></jsp:include>
	  </div>
	  <div class="col-md-3">
	  		<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/user_icon.png"/>
					博主信息
				</div>
				<div class="user_image">
					<img src="${pageContext.request.contextPath}/static/userImages/${blogger.imageName}"/>
				</div>
				<div class="nickName">${blogger.nickName}</div>
				<div class="userSign">(${blogger.sign})</div>
			</div>
	  	
	  		<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/byType_icon.png"/>
					按日志类别
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="blogTypeCount" items="${blogTypeCountList }">
							<li><span><a href="${pageContext.request.contextPath}/index.html?typeId=${blogTypeCount.id}">${blogTypeCount.typeName }(${blogTypeCount.blogCount })</a></span></li>
						</c:forEach>
						
					</ul>
				</div>
			</div>
	  		
	  		
	  		
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/byDate_icon.png"/>
					按日志日期
				</div>
				<div class="datas">
					<ul>
						
							<c:forEach var="blogCount" items="${blogCountList }">
								<li><span><a href="${pageContext.request.contextPath}/index.html?releaseDateStr=${blogCount.releaseDateStr}">${blogCount.releaseDateStr }(${blogCount.blogCount })</a></span></li>
							</c:forEach>
						
					</ul>
				</div>
			</div>
			
			<div class="data_list">
				<div class="data_list_title">
					<img src="${pageContext.request.contextPath}/static/images/link_icon.png"/>
					友情链接
				</div>
				<div class="datas">
					<ul>
						<c:forEach var="link" items="${linkList }">
							<li><span><a href="${link.linkUrl }" target="_blank">${link.linkName }</a></span></li>
						</c:forEach>
						
						<!-- 	<li><span><a href="http://www.uugai.com/" target="_blank">免费logo在线制作</a></span></li> -->
						
					</ul>
				</div>
			</div>
	  		
	  </div>
	</div>

	<jsp:include page="/foreground/common/foot.jsp"></jsp:include>

	
</div>
</body>
</html>