<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<script src="script/angular.js"></script>
<script src="script/script.js"></script>
<script src="script/angular-route.min.js"></script>
<script src="script/angular-ui-router.js"></script>



<link href="css/styles.css" rel="stylesheet" />



</head>
<body ng-app="Demo">
	<div ng-controller="myController">
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Likes</th>
					<th>Dislikes</th>
					<th>Like/Dislike</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="technology in technologies">
					<td>{{ technology.name }}</td>
					<td style="text-align: center">{{ technology.likes }}</td>
					<td style="text-align: center">{{ technology.dislikes }}</td>
					<td><input type="button" ng-click="incrementLikes(technology)"
						value="Like" /> <input type="button"
						ng-click="incrementDislikes(technology)" value="Dislike" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<table style="font-family: Arial">
		<tr>
			<td colspan="2" class="header">
				<h1>WebSite Header</h1>
			</td>
		</tr>
		<tr>
			<td class="leftMenu"><a href="#/home">Home</a> <a
				href="#/courses">Courses</a> <a href="#/students">Students</a></td>

			<td class="mainContent"><ng-view></ng-view></td>


		</tr>
		<tr>
			<td colspan="2" class="footer"><b>Website Footer</b></td>
		</tr>
	</table>

</body>
</html>