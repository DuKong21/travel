<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Dto.Userinfo"%>
<!DOCTYPE html>
<html>
<head>
    	<meta charset="UTF-8">
    	<title>main</title>
    	<link rel="stylesheet" href="main_style.css?3123">
	</head>
	<body>
    	<div class="head">
    	<a href="#head" class="logo">logo</a>
	       
	        <div class="info-form">
	        <a href="#!" class="member-info">	
	        <%
        		Userinfo userinfo = (Userinfo)request.getSession().getAttribute("userinfo");	
        	%>
        	<%= userinfo.getName() %>님 로그인중 </a>
	        <a href="#!" class="login" onclick = "location.href='main.html'" >로그아웃</a>
	        </div>
	    </div>
    	<div class="back">     
        	<div class="center">
            	<div class="banner" onclick = "location.href='CategorySelect.jsp'">
                	<p>당신만의 특별한</p>
                	<p>여행지를 찾아보세요.</p>
            	</div>
        	</div>
        



        	<div class="leg">
            <div class="class_a">
            <!-- 클래스 통일 -->
            <!-- 1번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/서울.jpg" alt="she.jpg"></a>
                <div class="box_text">
                   <a href="../서울/서울.html" class="text">서울로 떠나보세요.</a>
                </div>
            </div>
            <!-- 2번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/경기.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="../경기도/경기도.html"class="text">경기도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 3번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/강원.jpg" alt="she.jpg"></a>
                <div class="box_text">
                   <a href="../강원도/강원도.html"class="text">강원도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 4번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/충남.jpg" alt="she.jpg"></a>
                <div class="box_text">
                   <a href="../충청남도/충청남도.html"class="text">충청남도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 5번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/충북.jpg" alt="she.jpg"></a>
                <div class="box_text">
                     <a href="../충청북도/충청북도.html"class="text">충청북도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 클래스 통일 -->
            </div>
            
            <div class="class_b">
            <!-- 클래스 통일 -->
            <!-- 1번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/전남.jpg" alt="she.jpg"></a>
                <div class="box_text">
                     <a href="../전남/전남.html"class="text">전라남도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 2번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/전북.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="../전북/전북.html" class="text">전라북도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 3번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/경남.jpg" alt="she.jpg"></a>
                <div class="box_text">
                   <a href="../경남/경남.html" class="text">경상남도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 4번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/경북.jpg" alt="she.jpg"></a>
                <div class="box_text">
                   <a href="../경북/경북.html" class="text">경상북도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 5번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/제주.jpg" alt="she.jpg"></a>
                <div class="box_text">
                  <a href="../제주/제주.html" class="text">제주도로 떠나보세요.</a>
                </div>
            </div>
            <!-- 클래스 통일 -->
            </div>
        </div>
    </div>
</body>
</html>