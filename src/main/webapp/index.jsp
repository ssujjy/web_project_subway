<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<%--
		* ----------------------------------------
		 *  Description : 메인페이지
		 *  Date        : 2024.02.02(Fri)
		 *  Author      : sujin
		 * ----------------------------------------
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Subway</title>
	<link rel="stylesheet" type="text/css" href="./css/ui.common.css?v=2023051202" />
	<link rel="stylesheet" type="text/css" href="./css/ui.main.css?v=2023051202" />
	<link rel="stylesheet" type="text/css" href="./css/ui.menu.css?v=2023051202" />
	<link rel="stylesheet" type="text/css" href="./css/ui.order.css?v=2023051202" />
	<link rel="stylesheet" type="text/css" href="./css/jquery.mCustomScrollbar.min.css?v=2023051202" />

    <script type="text/javascript" src="./js/jquery/jquery-1.12.4.min.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/jquery/jquery-ui-1.12.0.min.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/jquery/jquery.easing.1.3.min.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/jquery/jquery.bxslider.min.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/jquery/jquery.mCustomScrollbar.concat.min.js?v=2023051202"></script>
    <!-- block ui -->
    <script type="text/javascript" src="./js/jquery/jquery.blockUI.min.js?v=2023051202"></script>

    <script type="text/javascript" src="./js/jquery/TweenMax.min.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/jquery/jquery.cookie.js?v=2023051202"></script>
    <!--<script type="text/javascript" th:src="'/js/lottie.js?v=' + ${cacheParam}"></script>-->
    <script type="text/javascript" src="./js/ui.common.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/subway.common.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/util/jsrender.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/jquery/jquery.tmpl.min.js?v=2023051202"></script>
    <script type="text/javascript" src="./js/waffle/waffle.utils.js?v=2023051202"></script>
</head>
<body>
<header>
<c:import url="./header.jsp" />
</header>
<article>
<c:import url="./content.jsp"/>
</article>
<footer>
<c:import url="./footer.jsp" />
</footer>
</body>
</html>