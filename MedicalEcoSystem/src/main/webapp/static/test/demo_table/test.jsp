<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<script src="script/angular.js"></script>
<script src="script/script.js"></script>


<link href="css/styles.css" rel="stylesheet" />

<c:set var="ctx" value="${pageContext.request.contextPath}" />
</head>
<body ng-app="myModule">
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
</body>
</html>