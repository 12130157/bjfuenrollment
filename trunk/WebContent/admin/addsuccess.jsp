<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品添加成功</title>
<link href="../css/uploadify.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="../js/swfobject.js"></script>
<script type="text/javascript" src="../js/jquery.uploadify.v2.1.0.min.js"></script>
</head>
<body>
<h2 class="admin_tips">商品<span class="emphasis"><%=request.getAttribute("uname")%>添加成功！</span></h2>
<div>
  <h2>上传商品图片</h2>
  <div class="demo">
    <input id="uploady" name="uploadpic" type="file" />
    <p><a href="javascript:$('#fileInput2').uploadifyUpload();">上传图片</a> | <a href="javascript:$('#fileInput2').uploadifyClearQueue();">清空队列</a>
    </p>
  </div>
</div>
<script type="text/javascript">
$("#uploady").uploadify({
	'uploader'       : '../js/upload/uploadify.swf',
	'script'         : '../js/upload/uploadify.php',
	'cancelImg'      : '../js/upload/cancel.png',
	'folder'         : '../admin/uploads',
	'multi'          : true
});
</script>
</body>
</html>