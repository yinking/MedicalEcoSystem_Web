<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="jstl.jsp"%>

<div class="col col-md-3">
	<div class="list-group">
		<a href="hello" target="J_content">Add Category</a><br>
        <a href="advert/add.htm" target="contents">Post Advert</a><br>
        <a href="advert/list.htm" target="contents">List Adverts</a><br>
	</div>
</div>
<div class="col col-md-9">
	<div class="alert alert-info" ng-show="curState()=='app.admin'">欢迎使用{{app.name}}——管理员端</div>
	<div ui-view></div>
</div>


