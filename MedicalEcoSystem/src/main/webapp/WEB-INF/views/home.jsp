<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">
<c:set var="ctx" value="${pageContext.request.contextPath}" />



		<div class="body">


			<div class="modal-body">
				<div class="line line-dashed b-b line-lg pull-in"></div>
				<form class="form-horizontal" action="${ctx}/about" method="get">
					<div class="form-group {{!student.sno&&check?'has-error':''}}">
						<label for="sno" class="col-md-2 control-label">a</label>
						<div class="col-md-8">
							<div class="form-group">
								<input id="sno" type="text" ng-model="student.sno"
									class="form-control rounded"  >
							</div>
						</div>
					</div>
					<div class="form-group {{!student.name&&check?'has-error':''}}">
						<label for="name" class="col-md-2 control-label">b</label>
						<div class="col-md-8">
							<div class="form-group">
								<input id="name" type="text" ng-model="student.name"
									class="form-control rounded"  >
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-md-2 control-label">p</label>
						<div class="col-md-8">
							<div class="form-group">
								<input id="password" type="password"
									placeholder="{{student.id?'':'不填写则默认密码为111111'}}"
									ng-model="student.password" class="form-control rounded"
									 >
							</div>
						</div>
					</div>
					<div
						class="form-group {{student.password!=repwd&&check?'has-error':''}}">
						<label for="repwd" class="col-md-2 control-label">c</label>
						<div class="col-md-8">
							<div class="form-group">
								<input id="repwd" type="password" ng-model="repwd"
									class="form-control rounded"  >
							</div>
						</div>
					</div>
					<div
						class="form-group {{!student.id&&!student.gender&&check?'has-error':''}}">
						<label for="gender" class="col-md-2 control-label">d</label>
						<div class="col-md-8">
							<div class="form-group">
								<select id="gender" class="form-control rounded"
									ng-model="student.gender">
									<option value="0">m</option>
									<option value="1">f</option>
								</select>
							</div>
						</div>
					</div>
					<div
						class="form-group {{!student.id&&!student.deptId&&check?'has-error':''}}">
						<label for="dept" class="col-md-2 control-label">e</label>
						<div class="col-md-8">
							<div class="form-group">
								<select id="dept" class="form-control rounded"
									ng-model="student.deptId" ng-change="changeDept()">
									<option value="{{d.id}}" ng-repeat="d in depts"
										ng-selected="student.deptId==d.id">{{d.name}}</option>
								</select>
							</div>
						</div>
					</div>
					<div
						class="form-group {{!student.id&&!student.classId&&check?'has-error':''}}">
						<label for="class" class="col-md-2 control-label">f</label>
						<div class="col-md-8">
							<div class="form-group">
								<select id="class" class="form-control rounded"
									ng-model="student.classId">
									<option value="{{c.id}}"
										ng-repeat="c in classMap[student.deptId]"
										ng-selected="student.classId==c.id">{{c.name}}</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label" for="notes">d</label>
						<div class="col-md-8">
							<div class="form-group">
								<textarea id="notes" ng-model="student.notes" maxlength="255"
									class="form-control rounded" rows="5"></textarea>
							</div>
						</div>
					</div>

					<input type="submit" name="submit" class="button" value="save">



				</form>
			</div>
		</div>
		
		
		
	</tiles:putAttribute>
</tiles:insertDefinition>