<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="main.jsp">
<title>HS STATIONERY</title>
<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">
<script src="${context}/js/bootstrap.min.js"></script>
<script src="${context}/js/jquery-1.9.1.js"></script>
<script src="${context}/js/common.js"></script>
</head>

<c:set var="loginUrl">${context}/user/login.jsp</c:set>

<c:set var="officeUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[0].PRODUCT_CATEGORY_CD}</c:set>
<c:set var="penUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[1].PRODUCT_CATEGORY_CD}</c:set>
<c:set var="binderUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[2].PRODUCT_CATEGORY_CD}</c:set>
<c:set var="designUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[3].PRODUCT_CATEGORY_CD}</c:set>
<c:set var="storageUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[4].PRODUCT_CATEGORY_CD}</c:set>

<c:set var="productManageUrl">${context}/work/product/retrieveProductListForManage.do</c:set>
<c:set var="statisticsForProductUrl">${context}/work/sell/retrieveStatisticsForProduct.do</c:set>
<c:set var="statisticsForStockUrl">${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=P</c:set>

<script type="text/javascript"></script>
<body>
<jsp:include page="../common/top.jsp"></jsp:include>
			<c:if test="${sessionScope.grade != 'A'}">
			
		<div class="mainveg" style="background-color:#ffffff; height:500px">
			<p>메인 베가스 영역입니다</p>
		</div>
		
		<div class="container" style="background-color:#ffffff; height:200px">
			<p>회사소개 내용 영역입니다</p>
		</div>
	 
	 	<div class="container" style="background-color:#ffffff; height:200px">
			<p>story 이미지 삽입 영역입니다.</p>
		</div>
		
	 	<div class="container" style="background-color:#ffffff; height:200px">
			<p>회사소개 내용 영역입니다</p>
		</div>
			
		<div class="container" style="background-color:#ffffff; height:200px">
			<p>color 이미지 삽입 영역입니다.</p>
		</div>

		<div class="container" style="background-color:#ffffff; height:200px">
			<p>6분할 텍스트 영역입니다</p>
		</div>
		
		<div class="container" style="background-color:#ffffff; height:200px">
			<p>찾아오시는 길 내용 영역입니다</p>
		</div>
		</c:if>
		
		<!-- 관리자 페이지 -->
		<c:if test="${sessionScope.grade == 'A'}">
		<div class="container" style="margin-top: 10%; margin-bottom: 10%">
			<div class="row">
				<div class="col-md-4">
				    <a href="${productManageUrl}" class="btn btn-primary" style="width: 100%; height: 250px;" role="button">
						<h1><span class="glyphicon glyphicon-list-alt" style="font-size: 80px; margin-top: 5%;"></span> <br/>재고관리</h1>
					</a>
				</div>
				<div class="col-md-4">
				    <a href="${statisticsForProductUrl}" class="btn btn-danger" style="width: 100%; height: 250px;" role="button">
						<h1><span class="glyphicon glyphicon-signal" style="font-size: 80px; margin-top: 5%;"></span> <br/>매출통계</h1>
				    </a>
				</div>
				<div class="col-md-4">
				    <a href="${statisticsForStockUrl}" class="btn btn-info" style="width: 100%; height: 250px;" role="button">
						<h1><span class="glyphicon glyphicon-eye-open" style="font-size: 80px; margin-top: 5%;"></span> <br/>재고현황</h1>
	    		    </a>
				</div>
			</div>
		</div>
		</c:if>

	<jsp:include page="../common/foot.jsp"></jsp:include>
</body>
</html>