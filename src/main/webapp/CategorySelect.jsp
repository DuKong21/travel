<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Dto.Userinfo"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카테고리 선택</title>
    <link rel="stylesheet" href="style-cate.css?12312">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    <script>
					$(document).ready(function() {
						$("input[type='checkbox']").on("click",function(){
							let count=$("input:checked[type='checkbox']").length;
							
							if(count > 3) {
								$(this).prop("checked",false);
								//this.checked=false;
								
								alert("3개까지만 선택할 수 있습니다.");
								
							}
							
						});
					});
					function go(param){
						
						if(param == 'skip'){
							document.f.action='./강원도/강원도.html';	
						}else{
							document.f.action='../travel/Category';	
						}
						document.f.submit();
						
						
					}
					</script>
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
        <div class="wrap">
            <div class="form">
            <form action=""  method = "post" name=f>
                <div class="button-wrap2">
                    <div id="btn"></div>
                    <button type="button" class="catebtn" onclick="login()">CATEGORY</button>
                </div>
                <div>
	                 <label><input type="checkbox" class="cate-check2" name='CATE'value=1 onclick='checkOnlyThree(this)'/><spam3>활동적인</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=2 onclick='checkOnlyThree(this)'/><spam3>휴양지</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=3 onclick='checkOnlyThree(this)'/><spam3>여유롭게</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=4 onclick='checkOnlyThree(this)'/><spam3>산</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=5 onclick='checkOnlyThree(this)'/><spam3>바다</spam3></label>
				</div>	
				<div>
	                 <label><input type="checkbox" class="cate-check2" name='CATE' value=6 onclick='checkOnlyThree(this)'/><spam3>섬</spam3></label>
	                 <label><input type="checkbox" class="cate-check" name='CATE' value=7 onclick='checkOnlyThree(this)'/><spam3>전통적인</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=8 onclick='checkOnlyThree(this)'/><spam3>관광</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=9 onclick='checkOnlyThree(this)'/><spam3>체험</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=10 onclick='checkOnlyThree(this)'/><spam3>숲</spam3></label>
				</div>
				<div>
	                 <label><input type="checkbox" class="cate-check2" name='CATE' value=11 onclick='checkOnlyThree(this)'/><spam3>호수</spam3></label>
	                 <label><input type="checkbox" class="cate-check" name='CATE' value=12 onclick='checkOnlyThree(this)'/><spam3>청소년</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=13 onclick='checkOnlyThree(this)'/><spam3>어린이</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=14 onclick='checkOnlyThree(this)'/><spam3>청년</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=15 onclick='checkOnlyThree(this)'/><spam3>중년</spam3></label>
				</div>
				<div>
	                 <label><input type="checkbox" class="cate-check2" name='CATE' value=16 onclick='checkOnlyThree(this)'/><spam3>노인</spam3></label>
	                 <label><input type="checkbox" class="cate-check" name='CATE' value=17 onclick='checkOnlyThree(this)'/><spam3>가족</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=18 onclick='checkOnlyThree(this)'/><spam3>친구</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=19 onclick='checkOnlyThree(this)'/><spam3>연인</spam3></label>
					 <label><input type="checkbox" class="cate-check" name='CATE' value=20 onclick='checkOnlyThree(this)'/><spam3>배낭</spam3></label>
				</div>
				<div>
	                 <label><input type="checkbox" class="cate-check2" name='CATE' value=21 onclick='checkOnlyThree(this)'/><spam3>전연령</spam3>
				</div>
				<div class="aa">
			<!-- 	<div class="next-form"> -->
				<!-- <form action="./sebu.jsp" class="input-group2"  > -->
                    <button class="skip" id="button" onclick="go('skip')">Skip</button>
                <!-- </form> -->
                
                	<button class="next" id="button" onclick="go('next')">Next</button>
				<!-- </div> -->
				</div>
                </form>
            </div>
        </div>
    </body>
</html>