<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="top.jsp" />

<body>
	<div class="container">
		<div class="header">
			<ul class="nav nav-pills pull-right">
				<li class="active"><a href="index.do">Build</a></li>
				<li><a href="import.do">Import</a></li>
			</ul>
			<h3 class="text-muted">Interactive Form Builder</h3>
		</div>
		
		<div class="content">
			
			<iframe name="myframe" src="${requestScope.previewUrl}" frameborder="0" width="100%" height="500" ></iframe> 
			<br>
			<br>
			<a href="${requestScope.previewUrl}">Click here to view it in browser</a>
			<br>
			<br>
			<button type="submit" class="btn btn-default">Back to edit</button>
			<button type="submit" class="btn btn-default">Download</button>
		</div>
	</div>

</body>
</html>
