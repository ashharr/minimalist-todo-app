<%--/META-INF/resources/webjars/bootstrap/5.2.3/js/bootstrap.min.js
/META-INF/resources/webjars/bootstrap/5.2.3/css/bootstrap.min.css
/META-INF/resources/webjars/jquery/3.6.4/jquery.min.js--%>
<%@ include file="common/navbar.jspf" %>
<%@ include file="common/header.jspf" %>

		<div class ="container">
			<h1>Your Todos</h1>
			<table class="table">
				<thead>
					<tr>
						<th>Description</th>
						<th>Target Date</th>
						<th>Is Done?</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>		
					<c:forEach items="${todos}" var="todo">
						<tr>
							<td>${todo.description}</td>
							<td>${todo.targetDate}</td>
							<td>${todo.done}</td>
							<td> <a href="delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a></td>
							<td> <a href="update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>		
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<a href="add-todo" class="btn btn-success">Add Todo</a>
		</div>
<%@ include file="common/footer.jspf" %>
