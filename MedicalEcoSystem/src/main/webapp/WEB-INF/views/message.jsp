<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<c:set var="ctx" value="${pageContext.request.contextPath}" />


		<div style="height: 600px; overflow: auto; margin-right: 30px;">


			<table
				class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<tr>
						<th>Message ID</th>
						<th>Message Tilte</th>
						<th>Content</th>
						<th>Sender</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="message" items="${messages}">
						<tr>
							<td>${message.idMessage}</td>
							<td>${message.title}</td>
							<td>${message.content}</td>
							<td>${message.sender}</td>


						</tr>
					</c:forEach>
				</tbody>
			</table>



			<div class="J_toolsBar clearfix">
				<div>
					<form id="msgForm" name="msgForm">

						<select name="user">
							<c:forEach var="user" items="${users}">
								<option value="${user.idUser}">${user.username}</option>
							</c:forEach>
						</select> <input placeholder="Title" type="text" name="title" id="userName" />
						<input placeholder="Content" type="text" name="content"
							id="userName" /> 


						<button class="btn btn-primary example-p-7-1" type="button"
							id="btnSend">Send</button>
					</form>

				</div>
			</div>
		</div>
		<script type="text/javascript">
			// prompt
			$('.example-p-7-1')
					.on(
							'click',
							function() {
								$
										.ajax({
											type : "GET",
											url : "${ctx}/sendMsg",
											data : $("#msgForm").serialize(),
											context : this, //<-----
											success : function(msg) {
												$
														.alert({
															title : 'Oh Yeah!',
															type : 'red',

															content : 'The Message has been successfully sent!',
															animation : 'top',
															closeAnimation : 'bottom',
															backgroundDismiss : false,
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
											},
											complete : function() {
												$(this).data('requestRunning',
														false);
											}
										});

							});
		</script>

	</tiles:putAttribute>
</tiles:insertDefinition>