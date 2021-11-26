package com.crawler;

import java.io.IOException;

import cn.hutool.core.util.StrUtil;

public class MyCrawler {
	
	public static String cookie = "";
	//学号
	String account = "518300284144";
	//密码
	String password = "dfrr1255688";
	
	String xm = "甄聪";
	
	String path = "D:/myCourse/";
	
	{
		if (StrUtil.isBlank(cookie)) {
			//登录系统，获取cookie
			Login login = new Login();
			cookie = login.toLogin(account, password);
		}
	}

	public String exportCoursePdf() {
		//爬取课表
		CrawlerCourse crawlerCourse = new CrawlerCourse();
		return crawlerCourse.exportCoursePdf(cookie, account, "2020", "3", "2020-2021", "1", xm, path);
	}
	
	public String exportGradeExcel() throws IOException {
		//爬取成绩
		CrawlerGrade crawlerGrade = new CrawlerGrade();
		return crawlerGrade.exportGradeExcel(cookie, account, "2020", "3", xm, path);
	}
	
	public String exportFreeClassroomExcel() throws IOException {
		//爬取空闲教室
		CrawlerFreeClassroom crawlerFreeClassroom = new CrawlerFreeClassroom();
		return crawlerFreeClassroom.exportFreeClassroomExcel(cookie, "2021", "3", "13", "3,4", "7,8,9", path);
	}
}
