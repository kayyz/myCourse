<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.crawler.MyCrawler"
    pageEncoding="UTF-8"%>
    <%
    MyCrawler c = new MyCrawler();
	  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
<title>课程爬虫系统</title>
</head>
<body>
	<%
	out.print(c.exportFreeClassroomExcel());
	  %>
</body>
</html>