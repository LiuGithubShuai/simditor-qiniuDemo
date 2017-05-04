<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/static/js/simditor/styles/simditor.css" />
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-12">		
			<form action="/send" method="post">
				<textarea name="message" placeholder="请输入内容" autofocus id="editor" cols="30" rows="10"></textarea>
				<button class="btn btn-primary">发布</button>
			</form>
		</div>
	</div>
</div>

<script src="/static/js/jquery-1.11.3.min.js"></script>
<script src="/static/js/simditor/scripts/module.js"></script>
<script src="/static/js/simditor/scripts/hotkeys.js"></script>
<script src="/static/js/simditor/scripts/uploader.js"></script>
<script src="/static/js/simditor/scripts/simditor.js"></script>

<script>

$(function(){
	var editor = new Simditor({
		textarea: $('#editor'),
		toolbar:true,
		toolbarFloat:true,
		tabIndent:true,
		upload:{
			url:"http://up-z1.qiniu.com",
			fileKey:"file",
			params:'{"token","${token}"}'
		}
	});
});


</script>


</body>
</html>