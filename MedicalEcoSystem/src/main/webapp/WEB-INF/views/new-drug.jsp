<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
		<div class="body">
			<div style="height: 600px; overflow: auto; margin-right: 30px;">



				<table
					class="table table-striped table-bordered table-hover table-condensed"
					style="text-align: center; vertical-align: middle;">

					<tbody>

						<tr>
							<td class="tb_label">Drug Number:</td>
							<td class="tb_input"><input type="text"
								class="form-control rounded" value="${drug.drugNumber}" /><font
								color="red"><form:errors path="title" /></font></td>
							<td class="tb_input"><font color="red"><form:errors
										path="title" /></font></td>

						</tr>
						<tr>
							<td class="tb_label">Drug Name:</td>
							<td class="tb_input"><input type="text"
								class="form-control rounded" value="${drug.name}" /><font
								color="red"><form:errors path="title" /></font></td>
							<td class="tb_input"><font color="red"><form:errors
										path="title" /></font></td>

						</tr>
						<tr>
							<td class="tb_label">Formula:</td>
							<td class="tb_input"><input type="text"
								class="form-control rounded" value="${drug.formula}" /><font
								color="red"><form:errors path="title" /></font></td>
							<td class="tb_input"><font color="red"><form:errors
										path="title" /></font></td>

						</tr>




						<tr>
							<td class="tb_label">Usage:</td>
							<td class="tb_input"><input type="text"
								class="form-control rounded" value="${drug.uses}" /><font
								color="red"><form:errors path="title" /></font></td>
							<td class="tb_input"><font color="red"><form:errors
										path="title" /></font></td>

						</tr>
						<tr>
							<td class="tb_label">Indication:</td>
							<td class="tb_input"><input type="text"
								class="form-control rounded" value="${drug.indication}" /><font
								color="red"><form:errors path="title" /></font></td>
							<td class="tb_input"><font color="red"><form:errors
										path="title" /></font></td>

						</tr>
						<tr>
							<td class="tb_label">Manufacture:</td>
							<td class="tb_input"><input type="text"
								class="form-control rounded" value="${drug.manufature}" /><font
								color="red"><form:errors path="title" /></font></td>
							<td class="tb_input"><font color="red"><form:errors
										path="title" /></font></td>

						</tr>
						<tr>
							<td class="tb_label">Route:</td>
							<td class="tb_input"><input type="text"
								class="form-control rounded" value="${drug.route}" /><font
								color="red"><form:errors path="title" /></font></td>
							<td class="tb_input"><font color="red"><form:errors
										path="title" /></font></td>

						</tr>

						<tr>
							<td class="tb_label">Catalog:</td>
							<td class="tb_input" style="text-align: left;">
								<div class="form-group">

									<select name="col-md-4 control-label">
										<c:forEach var="categ" items="${categories}">
											<option value="${categ.idDrugCatalog}"
												${categ.idDrugCatalog == selectedCateg ? 'selected="selected"' : ''}>${categ.name}</option>
										</c:forEach>
									</select>

								</div>
							</td>
							<td class="tb_input"><font color="red"><form:errors
										path="title" /></font></td>

						</tr>

					</tbody>
				</table>

				<div>
					<!-- custom widget -->
					<table class="tlb_fontSize"
						style="height: 80px; background-color: #f2f2f2;">

						<tr>
							<td style="width: 400px;">
								<div class="form-group" class="form-group" style="height: 20px;">
									Find Compound By Category: <select
										name="col-md-4 control-label">
										<c:forEach var="compoundCateg" items="${compoundCategories}">
											<option value="${compoundCateg.idCompoundCatalog}">${compoundCateg.name}</option>
										</c:forEach>
									</select>


								</div>
								<table class="tlb_Select" id="table">
									<thead>
										<tr>
											<th style="width: 400px;">Compound Name:</th>
											<th style="width: 400px;">Molecular Form:</th>


										</tr>
									</thead>
									<tbody>

										<c:forEach var="compound" items="${compoundList}">
											<tr>
												<td>${compound.name}</td>
												<td>${compound.molecularFormula}</td>


											</tr>
										</c:forEach>
									</tbody>
								</table>


							</td>
							<!-- center controller  -->
							<td style="width: 50px;">
								<table class="tlb_fontSize">
									<tr>
										<td><input type="submit" name="submit"
											class="btn btn-primary" value="add" onclick="fnselect()"></td>
									</tr>
									<tr>
										<td>Quantity(gram)</td>
									</tr>
									<tr>
										<td><input id="weight" type="number"
											class="form-control rounded"
											value="" /></td>
									</tr>
									<tr>
										<td><input type="submit" name="submit"
											class="btn btn-primary" value="delete" /></td>
									</tr>

								</table>
							</td>


							<td class="tb_fontSize" style="width: 400px;">
								<div class="form-group" style="height: 20px;"></div>
								<table class="tlb_Select" id="tlbTwo">

									<tr>
										<td style="width: 400px;">Compound Name:</td>
										<td style="width: 400px;">Molecular Form:</td>
										<td style="width: 400px;">Weight:</td>


									</tr>
								</table>

							</td>


						</tr>
					</table>



				</div>
			</div>








		</div>

		<script type="text/javascript">
			var table = document.getElementById('table'), selected = table
					.getElementsByClassName('selected');
			table.onclick = highlight;
			function highlight(e) {
				if (selected[0])
					selected[0].className = '';
				e.target.parentNode.className = 'selected';
			}
			function fnselect() {


				$("#tlbTwo").find('tbody').append('<tr>').append(
						$("#table tr.selected ").html()).append('</tr>');
			}
		</script>

	</tiles:putAttribute>
</tiles:insertDefinition>