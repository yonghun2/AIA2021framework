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
				<h2>입력 페이지<span>(dept Table)</span></h2>
				<form method="post">
					<div class="form-group">
						<input type="text" name="deptno" placeholder="deptno" class="form-control" />
					</div>
					<div class="form-group">
						<input type="text" name="dname" placeholder="dname" class="form-control" />
					</div>
					<div class="form-group">
						<input type="text" name="loc" placeholder="loc" class="form-control" />
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-block">입 력</button>
					</div>
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