<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加课程</title>
</head>
<body>
	<form action="course/UpdateCourse.action" method="post">
		课程id：<input type="text" name="id" value="6" readonly="readonly"/>
		课程名称：<input type="text" name="name"/>
		课程详情：<input type="text" name="profile">
		课程类别:<select name="typeId">
    		<c:forEach items="${typeListSession }" var="t">
	      	<option value="${t.id }">${t.name }</option>
	      </c:forEach>
          </select>
		课程开始时间：<input type="text" name="starttime"/>
		课程结束时间：<input type="text" name="endttime"/>
		课程价钱:<input type="text" name="price"/>
		课程课时:<input type="text" name="period"/>
		授课老师:<select name="teacherId">
    		<c:forEach items="${teacherListSession }" var="teacher">
	      	<option value="${teacher.id }">${teacher.username }</option>
	      </c:forEach>
          </select>
	           细分类别:<select name="detailId">
	    		<c:forEach items="${detailListSession }" var="detail">
		      	<option value="${detail.id }">${detail.name }</option>
		      </c:forEach>
	          </select>
	          <input type="submit" value="修改">
	</form>
</body>
</html>