<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />


<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div style="height: 600px; overflow: auto;">

			<div class="J_toolsBar clearfix">

				<form action="${ctx}/compoundSearch">
					<div>
						<select name="type">
							<option value="Name">Name</option>
							<option value="CompoundId">CompoundId</option>
							<option value="Formula">Formula</option>
						</select> <input placeholder="Enter Keyword" type="text" name="queryStr"
							id="userName" />
						<button type="submit" class="btn btn-primary">Query</button>
					</div>
				</form>

			</div>

			<table
				class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<tr>
						<th>CompoundId</th>
						<th>Name</th>
						<th>Molecular Form</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="compound" items="${compounds}">
						<tr>
							<td>${compound.idCompound}</td>
							<td>${compound.name}</td>
							<td>${compound.molecularFormula}</td>
							<td><div>
									<a class=t_link
										href="${ctx}/editCompound?id=${compound.idCompound }">Edit</a>
									<a class=t_link
										href="javascript:myEdit('${compound.idCompound }');">Delete</a>
								</div></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>


		<script type="text/javascript">
			function myEdit(id) {

				$.confirm({
					title : 'Delete Compound',
					type : 'red',
					content : 'Are you sure you want to delete Compound ' + id
							+ '?',
					icon : 'fa fa-question-circle',
					animation : 'scale',
					closeAnimation : 'scale',
					opacity : 0.5,
					buttons : {
						'confirm' : {
							text : 'Proceed',
							btnClass : 'btn-blue',
							action : function() {

								$.post("${ctx}/deleteCompound?id=" + id);

								/* $.ajax({
									url : "${ctx}/deleteCompound",
									type : "post",
									success : function(d) {
										alert(d);
									}
								}); */

							}
						},
						cancel : function() {
						},

					}
				});

			}
		</script>
	</tiles:putAttribute>

</tiles:insertDefinition>












