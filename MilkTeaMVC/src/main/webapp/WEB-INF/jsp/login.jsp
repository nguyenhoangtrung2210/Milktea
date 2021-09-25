


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/login" var="action" />

<c:if test="${param.error != null}">
    <div>
        Đã có lỗi xảy ra, vui lòng quay lại sau!
    </div>
</c:if>

<c:if test="${param.accessDenied != null}"> 
    <div>
        Bạn không có quyền truy cập vào trang quản trị!
    </div>
</c:if>



<c:url value="/login" var="action" />

<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/loginpage.css" type="text/css">
<title>Loginpage</title>
</head>
	
<body>
    
	<div class="bg">
            <form action="${action}" method="POST">
		<div class="form-box">
			<div class="button-box">
				<div id="btn"></div>
				<button type="button" class="toggle-btn" onclick="login()">Login</button>
				<button type="button" class="toggle-btn" onclick="register()">Register</button>
			</div>
			<div class="icons">
				<img src="images/fb.png">
				<img src="images/tw.png">
				<img src="images/gg.png">
			</div>
                        <form id="login" class="input-gr">
                                <input type="text" id="username" name="username" class="input-field" placeholder="User ID" required>
				<input type="password" id="password" name="password" class="input-field" placeholder="Enter Password" required>
				<input type="checkbox" class="check-box"><span>Remember Password</span>
				<button type="submit" class="submit-btn">Log in</button>
			</form>
			<form id="register" class="input-gr">
				<input type="text" class="input-field" placeholder="User ID" required>
				<input type="Email" class="input-field" placeholder="Email ID" required>
				<input type="password" class="input-field" placeholder="Password" required>
				<input type="checkbox" class="check-box"><span>I agree to terms & conditions</span>
				<button type="submit" class="submit-btn">Register</button>
			</form>
		</div>
            </form>
	</div>
	
	<script>
		var x = document.getElementById("login");	
		var y = document.getElementById("register");
		var z = document.getElementById("btn");
		
			function register(){
				x.style.left = "-450px";
				y.style.left = "50px";
				z.style.left = "110px";
			}
			function login(){
				x.style.left = "50px";
				y.style.left = "450px";
				z.style.left = "0";
			}
	</script>
	
</body>-->



