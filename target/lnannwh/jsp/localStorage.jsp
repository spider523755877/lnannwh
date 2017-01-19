<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 此方法在ajax跨页面传值的时候特别实用，只是ie8不兼容! -->
<title>localStorage页面访问量统计</title>
</head>
<body>

</body>
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
	if (localStorage.pagecount) {
		localStorage.pagecount = Number(localStorage.pagecount) + 1;
	} else {
		localStorage.pagecount = 1;
	}
	document.write("Visits " + localStorage.pagecount + " time(s).");
	/* localStorage.removeItem(pagecount);
	document.write("Visits " + localStorage.pagecount + " time(s)."); */
</script>
</html>