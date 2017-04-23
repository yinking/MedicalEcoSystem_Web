<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<script src="${ctx }/static/js/jquery-1.8.3.min.js"
	type="text/javascript"></script>
<script src="${ctx }/static/js/jquery-confirm.min.js"
	type="text/javascript"></script>

<link href="${ctx }/static/js/jquery-confirm.min.css" rel="stylesheet" />

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />





<title></title>



</head>
<body>
	<div class="col-md-3">
		<button class="btn btn-primary btn-block example-p-2">Confirmation</button>
		<p class="text-success">Stacked Confirmations</p>
	</div>
	<a class=t_link href="javascript:myEdit('1');">Edit</a>
</body>
<script type="text/javascript">
	$('.example-p-2')
			.on(
					'click',
					function() {
						$
								.confirm({
									title : 'A secure action',
									content : 'Its smooth to do multiple confirms at a time. <br> Click confirm or cancel for another modal',
									icon : 'fa fa-question-circle',
									animation : 'scale',
									closeAnimation : 'scale',
									opacity : 0.5,
									buttons : {
										'confirm' : {
											text : 'Proceed',
											btnClass : 'btn-blue',
											action : function() {
												$
														.confirm({
															title : 'This maybe critical',
															content : 'Critical actions can have multiple confirmations like this one.',
															icon : 'fa fa-warning',
															animation : 'zoom',
															closeAnimation : 'zoom',
															buttons : {
																confirm : {
																	text : 'Yes, sure!',
																	btnClass : 'btn-orange',
																	action : function() {
																		$
																				.alert('A very critical action <strong>triggered!</strong>');
																	}
																},
																cancel : function() {
																	
																}
															}
														});
											}
										},
										cancel : function() {
											$
													.alert('you clicked on <strong>cancel</strong>');
										},
										moreButtons : {
											text : 'something else',
											action : function() {
												$
														.alert('you clicked on <strong>something else</strong>');
											}
										},
									}
								});
					});
</script>
</html>
