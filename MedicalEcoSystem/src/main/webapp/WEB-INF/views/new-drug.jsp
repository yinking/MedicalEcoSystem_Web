<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<div style="height: 600px; overflow: auto; margin-right: 30px;">



			<table
				class="table table-striped table-bordered table-hover table-condensed"
				style="text-align: center; vertical-align: middle;">

				<tbody>

					<tr>
						<td class="tb_label">Drug Number:</td>
						<td class="tb_input"><input type="text"
							class="form-control rounded" value="${compound.name}" /><font
							color="red"><form:errors path="title" /></font></td>
						<td class="tb_input"><font color="red"><form:errors
									path="title" /></font></td>

					</tr>
					<tr>
						<td class="tb_label">Drug Name:</td>
						<td class="tb_input"><input type="text"
							class="form-control rounded" value="${compound.name}" /><font
							color="red"><form:errors path="title" /></font></td>
						<td class="tb_input"><font color="red"><form:errors
									path="title" /></font></td>

					</tr>
					<tr>
						<td class="tb_label">Formula:</td>
						<td class="tb_input"><input type="text"
							class="form-control rounded" value="${compound.name}" /><font
							color="red"><form:errors path="title" /></font></td>
						<td class="tb_input"><font color="red"><form:errors
									path="title" /></font></td>

					</tr>
					<tr>
						<td class="tb_label">Catalog:</td>
						<td class="tb_input"><input type="text"
							class="form-control rounded" value="${compound.name}" /><font
							color="red"><form:errors path="title" /></font></td>
						<td class="tb_input"><font color="red"><form:errors
									path="title" /></font></td>

					</tr>
					<tr>
						<td class="tb_label">Usage:</td>
						<td class="tb_input"><input type="text"
							class="form-control rounded" value="${compound.name}" /><font
							color="red"><form:errors path="title" /></font></td>
						<td class="tb_input"><font color="red"><form:errors
									path="title" /></font></td>

					</tr>
					<tr>
						<td class="tb_label">Indication:</td>
						<td class="tb_input"><input type="text"
							class="form-control rounded" value="${compound.name}" /><font
							color="red"><form:errors path="title" /></font></td>
						<td class="tb_input"><font color="red"><form:errors
									path="title" /></font></td>

					</tr>
					<tr>
						<td class="tb_label">Manufacture:</td>
						<td class="tb_input"><input type="text"
							class="form-control rounded" value="${compound.name}" /><font
							color="red"><form:errors path="title" /></font></td>
						<td class="tb_input"><font color="red"><form:errors
									path="title" /></font></td>

					</tr>
					<tr>
						<td class="tb_label">Route:</td>
						<td class="tb_input"><input type="text"
							class="form-control rounded" value="${compound.name}" /><font
							color="red"><form:errors path="title" /></font></td>
						<td class="tb_input"><font color="red"><form:errors
									path="title" /></font></td>

					</tr>







				</tbody>
			</table>

		</div>












	</tiles:putAttribute>
</tiles:insertDefinition>