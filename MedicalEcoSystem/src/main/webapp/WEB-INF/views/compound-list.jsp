<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<script src="${ctx }/static/js/jquery-1.8.3.min.js"
	type="text/javascript"></script>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div style="height: 600px; overflow: auto;">

			<div class="J_toolsBar clearfix">
				<input placeholder="Enter CompoundId" type="text" name="userName"
					id="userName" value="${userQueryDTO.userName }" />
				<button class="btn btn-primary" type="button">Query</button>
				<button class="btn btn-primary" type="button">New Compound</button>
			</div>

			<table
				class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<tr>
						<th></th>
						<th>CompoundId</th>
						<th>Name</th>
						<th>Molecular Form</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="compound" items="${compounds}">
						<tr>
							<td>${compound.idCompound}</td>
							<td>${compound.idCompound}</td>
							<td>${compound.name}</td>
							<td>${compound.molecularFormula}</td>
							<td><div>
									<a class=t_link
										href="${ctx}/editCompound?id=${compound.idCompound }"  >Edit</a>
									<a class=t_link href="javascript:myEdit('${u.id }');">Delete</a>
								</div></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

	</tiles:putAttribute>

</tiles:insertDefinition>


<script type="text/javascript">
	function myEdit(id) {
		
		layer.alert("please enter username."+id);
		
	}
</script>








