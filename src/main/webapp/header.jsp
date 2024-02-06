<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--
		* ----------------------------------------
		 *  Description : 헤더.
		 *  Date        : 2024.02.02(Fri)
		 *  Author      : sujin
		 * ----------------------------------------
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
</head>
<body>

    <!-- inc header s -->
    <div id="header">
    <script>
        /*<![CDATA[*/
        var memberVO = true;
        /*]]*/
    </script>
    <div class="content">
        <h1 class="logo"><a href="/">SUBWAY</a></h1>
        <!-- gnb -->
        <nav id="gnb">
            <ul>
                <li>
                    <a class="dp1" href="#none">메뉴소개</a>
                    <div class="dp2">
                        <ul>
                            <li>
                                <a href="/menuList/sandwich.do">샌드위치</a>
                            </li>
                            <li>
                                <a href="/menuList/unit.do">랩ㆍ기타</a>
                            </li>
                            <li>
                                <a href="/menuList/salad.do">샐러드</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#none" class="dp1">이용방법</a>
                    <div class="dp2">
                        <ul>
                            <li><a href="/utilizationSubway">써브웨이 이용방법</a></li><!-- 20180201 -->
                            <li><a href="/freshInfo">신선한 재료 소개</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#none" class="dp1">새소식</a>
                    <div class="dp2">
                        <ul>
                            <li><a href="/eventList">이벤트ㆍ프로모션</a></li>
                            <li><a href="/newsList">뉴스ㆍ공지사항</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#none" class="dp1">써브웨이</a>
                    <div class="dp2">
                        <ul>
                            <li><a href="/storeSearch">매장찾기</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a class="dp1" href="javascript:void(0);">온라인 주문</a>
                    <div class="dp2">
                        <ul>
                            <li><a href="/order/view/fast/near/store">FAST-SUB</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </nav>
        <!--// gnb -->

        <!-- util menu -->
        <div class="util_menu">
            <ul>
                
                
                    <li class="after_sign"><a href="/logout">로그아웃</a></li>
                    <li class="after_sign"><a href="/mypage">MY-SUB</a></li>
                    <li class="icon_menu cart on"><!-- 장바구니담았을때 class="on"추가 -->
                        <a href="/cart/fastsub">
                            <span class="blind">장바구니</span>
                            <strong>1</strong>
                        </a>
                    </li>
                
                <li class="icon_menu global_subway">
                    <a href="http://www.subway.com/en-us/exploreourworld" target="_blank" title="Global Subway"><span class="blind">Global Subway</span></a>
                </li>
            </ul>
        </div>
        <!--// util menu -->
    </div>
</div>
            <!--// inc header e -->
</body>
</html>