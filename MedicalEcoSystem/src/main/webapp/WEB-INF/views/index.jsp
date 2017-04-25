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
	<a class=t_link href="javascript:myDelete('1');">Edit</a>
	<!-- 	<a class=t_link href="javascript:myEdit('1');">Edit</a> -->

	<div class="DialogContent">
		<form action="${ctx }/user/ajax/save" id="editForm" method="post">

		</form>
	</div>


</body>
<script type="text/javascript">
	function myClick(id) {

		$.alert({
			title : 'Background dismiss',
			type : 'blue',
			content : 'Click outside the modal to close it.',
			animation : 'top',
			closeAnimation : 'bottom',
			backgroundDismiss : true,
			buttons : {
				okay : {
					text : 'okay',
					btnClass : 'btn-blue',
					action : function() {
						// do nothing
					}
				}
			}
		});
	}
</script>
<script type="text/javascript">
	function myDelete(id) {

		// confirmation
		$
				.confirm({
					title : 'Delete Compound',
					content : 'Are you sure you want to delete Compound '+id,
					icon : 'fa fa-question-circle',
					animation : 'scale',
					closeAnimation : 'scale',
					opacity : 0.5,
					buttons : {
						'confirm' : {
							text : 'Proceed',
							btnClass : 'btn-blue',
							action : function() {
								
							}
						},
						cancel : function() {
						},
						
					}
				});

	}
</script>
<script type="text/javascript">
	function myEdit(id) {

		$
				.post(
						'${ctx}/testIndex',
						{},
						function(str) {

							$
									.confirm({
										title : 'A simple form',
										content : 'url:${ctx }/static/test/form.html',
										buttons : {
											sayMyName : {
												text : 'Say my name',
												btnClass : 'btn-orange',
												action : function() {
													var input = this.$content
															.find('input#input-name');
													var errorText = this.$content
															.find('.text-danger');
													if (input.val() == '') {
														errorText
																.html(
																		'Please don\'t keep the name field empty!')
																.slideDown(200);
														return false;
													} else {
														$
																.alert('Hello '
																		+ input
																				.val()
																		+ ', i hope you have a great day!');
													}
												}
											},
											later : function() {
												// do nothing.
											}
										}
									});

						});
	}
</script>
</html>
