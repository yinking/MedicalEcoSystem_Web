<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<script src="${ctx }/static/js/jquery-1.8.3.min.js"
	type="text/javascript"></script>
<script src="${ctx }/static/plugins/layer/layer.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<script type="text/javascript">
	function mySubmit() {
		var btn = document.getElementById("btn");
		var username = $.trim($('#username').val());
		var password = $.trim($('#password').val());

		if (!username) {
			alert("please enter username.");
			return;
		}

		if (!password) {
			alert('please enter password.');
			return;
		}

		$('#mySubmit').attr("action", "${ctx }/login").submit();
	}

	$(function() {
		document.onkeydown = function(e) {
			var ev = document.all ? window.event : e;
			if (ev.keyCode == 13) {
				mySubmit();
			}
		}

	});
</script>

<body>
	<section>
	<div class="jumbotron">
		<div class="container">
			<h1>MedicalEcoSystem</h1>
		</div>
	</div>
 	</section>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please sign in</h3>
					</div>
					<div class="panel-body">

						<form method="post" id="mySubmit" onsubmit="return mySubmit()">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="User Name"
										name='username' id="username" type="text" value="Inka">
								</div>

								<div class="form-group">
									<input class="form-control" placeholder="Password"
										name='password' type="password" id="password" value="inka">
								</div>
								<div class="form-group">
									<label for="role" class="col-md-2 col-sm-2 control-label">Role</label>
									<div class="col-md-10 col-sm-10">
										<select name="role" id="role" class="form-control"
											ng-model="user.role" ng-change="role()">
											<option value="student">Druggist</option>
											<option value="teacher">Doctor</option>
											<option value="admin">Admin</option>
										</select>

									</div>
								</div>

								<input class="btn btn-lg btn-success btn-block" type="submit"
									value="Login">

							</fieldset>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>