<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />


<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<c:set var="ctx" value="${pageContext.request.contextPath}" />

		<c:if test="${saved == true}">
		<script type="text/javascript">
/* 			alert('lol, books added successfully!');
 */
				$.alert({
					title : 'Oh Yeah!',
					type : 'red',
					content : 'The Compound has been successfully saved',
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
			</script>
		</c:if>

		<div class="body">

			<div style="height: 600px; overflow: auto; margin-right: 30px;">

				<form:form action="${ctx}/saveCompound" commandName="compound"
					method="post">


					<table
						class="table table-striped table-bordered table-hover table-condensed"
						style="text-align: center; vertical-align: middle;">

						<tbody>

							<tr>
								<td class="tb_label">Compound Name:</td>

								<td class="tb_input"><form:input path="name" type="text"
										class="form-control rounded" value="${compound.name}" /></td>

								<td class="tb_input"><font color="red"><form:errors
											path="name" /></font></td>

							</tr>
							<tr>
								<td class="tb_label">Structure:</td>
								<td class="tb_input"><form:input path="molecularStructure"
										type="text" class="form-control rounded"
										value="${compound.molecularStructure}" /></td>
								<td class="tb_input"><font color="red"><form:errors
											path="molecularStructure" /></font></td>

							</tr>
							<tr>
								<td class="tb_label">Description:</td>
								<td class="tb_input"><form:input path="description"
										type="text" class="form-control rounded"
										value="${compound.description}" /></td>
								<td class="tb_input"><font color="red"><form:errors
											path="description" /></font></td>

							</tr>
							<tr>
								<td class="tb_label">Catalog:</td>
								<td class="tb_input" style="text-align: left;"><form:select
										path="idCompoundCatalog" name="col-md-4 control-label">
										<c:forEach var="categ" items="${categories}">
											<option value="${categ.idCompoundCatalog}"
												${categ.idCompoundCatalog == selectedCateg ? 'selected="selected"' : ''}>${categ.name}</option>
										</c:forEach>
									</form:select></td>
								<td class="tb_input"><font color="red"><form:errors
											path="" /></font></td>

							</tr>
							<tr>
								<td class="tb_label">Molecular Formula:</td>
								<td class="tb_input"><form:input path="molecularFormula"
										type="text" class="form-control rounded"
										value="${compound.molecularFormula}" /></td>
								<td class="tb_input"><font color="red"><form:errors
											path="" /></font></td>

							</tr>
							<tr>
								<td class="tb_label">Molecular Weight:</td>
								<td class="tb_input"><form:input path="molecularWeight"
										type="text" class="form-control rounded"
										value="${compound.molecularWeight}" /></td>
								<td class="tb_input"><font color="red"><form:errors
											path="" /></font></td>

							</tr>
							<tr>

								<td><form:input path="idCompound" type="hidden"
										class="form-control rounded" value="${compound.idCompound}" /></td>

								<td class="tb_label"><input class="btn btn-primary"
									type="submit" name="submit" value="save" /></td>


							</tr>

						</tbody>
					</table>

				</form:form>
			</div>







		</div>



	</tiles:putAttribute>
</tiles:insertDefinition>