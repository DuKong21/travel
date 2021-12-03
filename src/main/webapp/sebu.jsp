<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8" import="Dto.Userinfo, Dao.LocalDao, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style-sebu.css?322">

</head>
<body>
		<div class="head">
	        <a href="#head" class="logo">logo</a>
	       
	        <div class="info-form">
	        <div class="info-form">
	        <a href="#!" class="member-info">	
	        <%
        		Userinfo userinfo = (Userinfo)request.getSession().getAttribute("userinfo");
	        	Map<String, String > result = new LocalDao().selectDate(userinfo.getId());
        	%>
        	<%= userinfo.getName() %>님 로그인중 </a>
	        <a href="#!" class="login" onclick = "location.href='main.html'" >로그아웃</a>
	        </div>
	        </div>
	    </div>
        <div class="wrap">
            <div class="form-wrap">
            	<div id="map" style="width:100%;height:350px;"></div>
            	<% Set<Map.Entry<String, String>> entry = result.entrySet();
            	Iterator data = entry.iterator();
            	while(data.hasNext()){ Map.Entry me = (Map.Entry)data.next();%>
            	<div class="sulmyung-form">
            		 <p class="add_name">이름 : 
            		 <%=
        			/* String name = (String)request.getAttribute("name"); */
        				me.getKey()
        			%></p>
        			<p class="add_name">주소 : 
        			<%=
        			/* String post = (String)request.getAttribute("post"); */
        				me.getValue()
        			%></p>
					<button onclick="location.href='a.html'">자세히</button>
        			
            	</div>
            	<%
            	}
            	%>
            </div>
        </div>
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=78a6dfaa2376dc8b3bb1bb01619d4f5b"></script>
            <script>
            
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
            
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                mapOption = { 
                    center: new kakao.maps.LatLng(37.29446688897772, 127.20233143261594), // 지도의 중심좌표
                    level: 10 // 지도의 확대 레벨
                };

            var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

            // 마커가 표시될 위치입니다 
            var markerPosition  = new kakao.maps.LatLng(37.29446688897772, 127.20233143261594); 
            var markerPosition1  = new kakao.maps.LatLng(37.78995699049337, 127.52577412300575); 
            var markerPosition2  = new kakao.maps.LatLng(37.795002167699224, 128.89646573660852); 
            var markerPosition3  = new kakao.maps.LatLng(37.579039793509814, 126.9864353556374); 
            var markerPosition4  = new kakao.maps.LatLng(37.41884627484072, 127.82300195378778); 
            var markerPosition5  = new kakao.maps.LatLng(37.57972751447619, 126.9769980826263); 
            var markerPosition6 = new kakao.maps.LatLng(35.81496258469706, 127.15264532676709); 
            var markerPosition7  = new kakao.maps.LatLng(35.81486688319453, 127.15260241142634); 
            var markerPosition8  = new kakao.maps.LatLng(37.28193329544825, 127.0138559197495); 
            var markerPosition9  = new kakao.maps.LatLng(36.78623526515974, 126.14187816133507); 
            var markerPosition10  = new kakao.maps.LatLng(37.74408800546717, 127.35262179981679); 
            var markerPosition11  = new kakao.maps.LatLng(37.060113323826926, 128.48909169611028); 
            var markerPosition12  = new kakao.maps.LatLng(37.79204039207099, 127.52531281407606); 

            // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
                position: markerPosition
            });
            new kakao.maps.Marker({
                position: markerPosition1
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition2
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition3
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition4
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition5
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition6
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition7
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition8
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition9
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition10
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition11
            }).setMap(map);
            new kakao.maps.Marker({
                position: markerPosition12
            }).setMap(map);
            
            

            // 마커가 지도 위에 표시되도록 설정합니다
            marker.setMap(map);

            // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
            // marker.setMap(null);    
            </script>
            </body>
            </html>