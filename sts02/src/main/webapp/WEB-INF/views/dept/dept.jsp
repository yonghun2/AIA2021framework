<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="styleSheet" href="../css/bootstrap.css"/>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript">
var del=false;
$(function(){
	
	$('form:eq(0)').one('submit',function(){
		$(this).prev().html('<h2>수정 페이지<span>(dept Table)</span></h2>');
		//$(this).find('input').filter('input:gt(0)').removeProp('readonly');
		//$(this).find('input').not('input:eq(0)').removeProp('readonly');
		$('[readonly=readonly]').not(':eq(0)').removeProp('readonly');
		return false;
	});
	$('form:eq(1)').submit(function(){
		del=window.confirm('삭제하시겠습니까?');
		return del;
	});
	
});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<ul>
					<li><a href="../">HOME</a></li>
					<li><a href="../intro">INTRO</a></li>
					<li><a href="../dept/list">DEPT</a></li>
					<li><a href="../emp/list">EMP</a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<h2>상세 페이지<span>(dept Table)</span></h2>
				<form method="post">
					<div class="form-group">
						<input type="text" value="${bean.deptno }" name="deptno" placeholder="deptno" class="form-control" readonly="readonly" />
					</div>
					<div class="form-group">
						<input type="text" value="${bean.dname }" name="dname" placeholder="dname" class="form-control" readonly="readonly" />
					</div>
					<div class="form-group">
						<input type="text" value="${bean.loc }" name="loc" placeholder="loc" class="form-control" readonly="readonly"/>
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-block">수 정</button>
					</div>
				</form>
				<form action="./dept/${bean.deptno }" method="post">
					<button class="btn btn-danger btn-block">삭제</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
			Copyright &copy; 비트캠프 All rights reserved.
			</div>
		</div>
	
	</div>
</body>
</html>