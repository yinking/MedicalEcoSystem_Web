<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html data-ng-app="app">
<head>
<title></title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<script src="${ctx }/static/test/script/script.js"></script>


</head>
<body>


	<div ui-view style="margin-top: 33px"></div>


	<div class="col col-md-3">
		<div class="list-group">
			<a ui-sref="app.admin" class="list-group-item"
				style="text-align: center; background-color: slategray; color: whitesmoke">{{app.name}}</a>
			<a  class="list-group-item" href="${ctx }/hello" target="contents">院系管理</a>
			<a ui-sref=".class" class="list-group-item" ui-sref-active="active">班级管理</a>
			<a ui-sref=".course" class="list-group-item" ui-sref-active="active">课程管理</a>
			<a ui-sref=".teacher" class="list-group-item" ui-sref-active="active">教师管理</a>
			<a ui-sref=".student" class="list-group-item" ui-sref-active="active">学生管理</a>
			<a ui-sref=".password" class="list-group-item"
				ui-sref-active="active">修改密码</a> <a ui-sref="signin"
				class="list-group-item" ng-click="logout()"
				style="text-align: center; background-color: lightcoral; color: whitesmoke; margin-top: 10px">注销登录</a>
		</div>
	</div>
	<div class="col col-md-9">
		<div class="alert alert-info" ng-show="curState()=='app.admin'">欢迎使用{{app.name}}——管理员端</div>
		<div name="contents">
			<div  ng-app="myModule" ng-controller="myController">{{ message }}</div>
		</div>
	</div>
</body>
</html>