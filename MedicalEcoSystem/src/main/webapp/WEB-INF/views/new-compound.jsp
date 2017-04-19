<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">



		<div class="body">


			<div class="modal-body">
				<div class="line line-dashed b-b line-lg pull-in"></div>
				<form class="form-horizontal" action="${ctx}/about" method="get">

					<div class="form-group ">
						<label for="sno" class="col-md-4 control-label">Compound
							Name: </label>
						<div class="col-md-4">
							<div class="form-group">
								<input id="sno" type="text" class="form-control rounded">
							</div>
						</div>
					</div>

					<div class="form-group ">
						<label for="sno" class="col-md-4 control-label">Structure:
						</label>
						<div class="col-md-4">
							<div class="form-group">
								<input id="sno" type="text" class="form-control rounded">
							</div>
						</div>
					</div>

					<div class="form-group ">
						<label for="sno" class="col-md-4 control-label">Description:
						</label>
						<div class="col-md-4">
							<div class="form-group">
								<input id="sno" type="text" class="form-control rounded">
							</div>
						</div>
					</div>

					<div class="form-group ">
						<label for="sno" class="col-md-4 control-label">Catalog: </label>
						<div class="form-group">

							<select id="class" class="col-md-4 control-label">
								<c:forEach var="categ" items="${categories}">
									<option value="${categ.name}">${categ.name}</option>
								</c:forEach>
							</select>

						</div>
					</div>

					<div class="form-group ">
						<label for="sno" class="col-md-4 control-label">Molecular
							Formula: </label>
						<div class="col-md-4">
							<div class="form-group">
								<input id="sno" type="text" class="form-control rounded">
							</div>
						</div>
					</div>

					<div class="form-group ">
						<label for="sno" class="col-md-4 control-label">Molecular
							Weight: </label>
						<div class="col-md-4">
							<div class="form-group">
								<input id="sno" type="text" class="form-control rounded">
							</div>
						</div>
					</div>





					<input class="list-group-item"
				style="text-align: center; background-color: lightcoral;color: whitesmoke; margin-top: 10px"  type="submit" name="submit" class="button" value="save">



				</form>
			</div>
		</div>



	</tiles:putAttribute>
</tiles:insertDefinition>