<jsp:include page="top.jsp" />
<body>
	<div class="container">
      <div class="header">
        <ul class="nav nav-pills pull-right">
         <li><a href="index.do">Build</a></li>
         <li class="active"><a href="import.do">Import</a></li>
        </ul>
        <h3 class="text-muted">Interactive Form Builder</h3>
      </div>
      <div class="content">
        <form role="form">
          <div class="form-group">
            <label for="exampleInputFile">File input</label>
            <input type="file" name="file">
            <p class="help-block">Select the JSON file</p>
          </div>
          <button type="submit" class="btn btn-default" onclick="form.action='upload.do';">Submit</button>
        </form>
      </div>
    </div>
</body>
</html>
