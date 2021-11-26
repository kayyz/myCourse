<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.crawler.CrawlerCourse"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<title>课程爬虫系统</title>
</head>
<body>
	<div class="i-title">欢迎使用课程爬虫系统</div>
	
	<div class="i-line">
		<button class="i-button" id ="kb">爬取课表</button>
		<button class="i-button" id ="cj">爬取成绩</button>
		<button class="i-button" id ="kxjs">爬取空闲教室</button>
	</div>
</body>

<script>
	$(document).ready(function(){
	  $("#kb").click(function(){
		  window.location.href = "kb.jsp";
	  });
	  $("#cj").click(function(){
		  window.location.href = "cj.jsp";
	  });
	  $("#kxjs").click(function(){
		  window.location.href = "kxjs.jsp";
	  });
	});
</script>

<style>
	.i-title {
		text-align: center;
		line-height: 60px;
		font-size: 30px;
	}
	.i-line {
		text-align: center;
		margin-top: 100px;
		font-size: 24px;
	}
	.i-button {
		font-size: 16px;
		margin: 50px;
		padding: 5;
	}
</style>
</html>