<%--/META-INF/resources/webjars/bootstrap/5.2.3/js/bootstrap.min.js
/META-INF/resources/webjars/bootstrap/5.2.3/css/bootstrap.min.css
/META-INF/resources/webjars/jquery/3.6.4/jquery.min.js--%>
<%@ include file="common/navbar.jspf" %>
<%@ include file="common/header.jspf" %>
		
		<div class ="container">
			
			<h1>Enter Todo Details:</h1>
			<form:form method="post" modelAttribute="todo">
			
				<fieldset class="mb-3">
					<form:label path="description">Description</form:label>	
					<form:input type="text" path="description" required="required"/>
					<form:errors path="description" cssClass="text-warning"/>
				</fieldset>
				
				<fieldset class="mb-3">
					<form:label path="targetDate">Target Date</form:label>	
					<form:input type="text" path="targetDate" required="required"/>
					<form:errors path="targetDate" cssClass="text-warning"/>
				</fieldset>
				<!-- condition to check if the current page is add -->		
				<c:choose>
				    <c:when test="${todo.id==0 && todo.description==''}">
				        Do Nothing
				    </c:when>
				    <c:otherwise>
				        <fieldset class="mb-3">
							<form:label path="done">Done?</form:label>	
							<form:checkbox class="mx-2" style="width: 22px; height:22px;" path="done" value="false"/>
							<form:errors path="done" cssClass="text-warning"/>
						</fieldset>
				    </c:otherwise>
				</c:choose>
				
				<form:input type="hidden" path="id" required="required"/>
				<form:input type="hidden" path="done" required="required"/>
				<input type="submit" class="btn btn-success">
			</form:form>
		</div>
	
<%@include file="common/footer.jspf" %>
	<script type="text/javascript">
				$('#targetDate').datepicker({
				    format: 'yyyy-mm-dd',
				});
	</script>