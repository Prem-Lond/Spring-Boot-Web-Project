<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* Animated Wave Background Style  */
html, body {
	width: 100%;
	height: 100%;
}

body {
	background: radial-gradient(ellipse at center, rgba(255, 254, 234, 1) 0%,
		rgba(255, 254, 234, 1) 35%, #B7E8EB 100%);
	overflow: hidden;
}

.ocean {
	height: 5%;
	width: 100%;
	position: absolute;
	bottom: 0;
	left: 0;
	background: #015871;
}

.wave {
	background:
		url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/85486/wave.svg)
		repeat-x;
	position: absolute;
	top: -198px;
	width: 6400px;
	height: 198px;
	animation: wave 5s cubic-bezier(0.36, 0.45, 0.63, 0.53) infinite;
	transform: translate3d(0, 0, 0);
}

.wave:nth-of-type(2) {
	top: -175px;
	animation: wave 7s cubic-bezier(0.36, 0.45, 0.63, 0.53) -.125s infinite,
		swell 7s ease -1.25s infinite;
	opacity: 1;
}

@
keyframes wave { 0% {
	margin-left: 0;
}

100
%
{
margin-left
:
-1600px;
}
}
@
keyframes swell { 0%, 100% {
	transform: translate3d(0, -25px, 0);
}

50
%
{
transform
:
translate3d(
0
,
5px
,
0
);
}
}

/* Login Section Style */
* {
	box-sizing: border-box;
}

body {
	font-family: 'Montserrat', sans-serif;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: -20px 0 50px;
	margin-top: 20px;
}

h1 {
	font-weight: bold;
	margin: 0;
}
h5{
color:red;
}
h4{
color: green;}
p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: .5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

a {
	color: #0e263d;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
}

.container {
	background: #fff;
	border-radius: 90px;
	box-shadow: 30px 14px 28px rgba(0, 0, 5, .2), 0 10px 10px
		rgba(0, 0, 0, .2);
	position: relative;
	overflow: hidden;
	opacity: 85%;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
	transition: 333ms;
}

.form-container form {
	background: #fff;
	display: flex;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	justify-content: center;
	align-items: center;
	text-align: center;
}

.social-container {
	margin: 20px 0;
	display: block;
}

.social-container a {
	border: 1px solid #008ecf;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
	transition: 333ms;
}

.social-container a:hover {
	transform: rotateZ(13deg);
	border: 1px solid #0e263d;
}

.form-container input {
	background: #eee;
	border: none;
	border-radius: 50px;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.form-container input:hover {
	transform: scale(101%);
}

button {
	border-radius: 50px;
	box-shadow: 0 1px 1px;
	border: 1px solid #008ecf;
	background: #008ecf;
	color: #fff;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

button:active {
	transform: scale(.95);
}

button:focus {
	outline: none;
}

button.ghost {
	background: transparent;
	border-color: #fff;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
	transition: all .6s ease-in-out;
}

.sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.sign-up-container {
	left: 0;
	width: 50%;
	z-index: 1;
	opacity: 0;
}

.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform .6s ease-in-out;
	z-index: 100;
}

.overlay {
	background: #ff416c;
	background: linear-gradient(to right, #008ecf, #008ecf) no-repeat 0 0/cover;
	color: #fff;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
	transform: translateY(0);
	transition: transform .6s ease-in-out;
}

.overlay-panel {
	position: absolute;
	top: 0;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding: 0 40px;
	height: 100%;
	width: 50%;
	text-align: center;
	transform: translateY(0);
	transition: transform .6s ease-in-out;
}

.overlay-right {
	right: 0;
	transform: translateY(0);
}

.overlay-left {
	transform: translateY(-20%);
}

/* Move signin to right */
.container.right-panel-active .sign-in-container {
	transform: translateY(100%);
}

/* Move overlay to left */
.container.right-panel-active .overlay-container {
	transform: translateX(-100%);
}

/* Bring signup over signin */
.container.right-panel-active .sign-up-container {
	transform: translateX(100%);
	opacity: 1;
	z-index: 5;
}

/* Move overlay back to right */
.container.right-panel-active .overlay {
	transform: translateX(50%);
}

/* Bring back the text to center */
.container.right-panel-active .overlay-left {
	transform: translateY(0);
}

/* Same effect for right */
.container.right-panel-active .overlay-right {
	transform: translateY(20%);
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<!-- Animated Wave Background  -->
	<div class="ocean">
		<div class="wave"></div>
		<div class="wave"></div>
	</div>
	<!-- Log In Form Section -->
	<section>
		<center>
			<%
			String msg2 = (String) request.getAttribute("msg2");
			%>
			<h5>
				<%
				if (msg2 != null && msg2.equals("Password Should be greate than or equal 8 digit")) {
					out.print(msg2);
				}
				%>
			</h5>

			<h4>
				<%
				if (msg2 != null && msg2.equals("Successfully Registration")) {
					out.print(msg2);
				}
				%>
			</h4>
			<h4>
				<%
				if (msg2 != null && msg2.equals("You have allready registered")) {
					out.print(msg2);
				}
				%>
				
			</h4>
		</center>

		<div class="container" id="container">
			<div class="form-container sign-up-container">
				<form action="register" method="post">

					<h1>Sign Up</h1>
					<div class="social-container">
						<a href="https://github.com/Prem-Lond" target="_blank"
							class="social"><i class="fab fa-github"></i></a>
							
						 <a href="https://www.linkedin.com/in/prem-lond-1933a9251/"
							target="_blank" class="social"><i
							class="fa-brands fa-linkedin"></i></a>

					</div>
					<span>Or use your Email for registration</span> <label> <input
						type="text" placeholder="Name" name="name" required="required" />
					</label> <label> <input type="email" placeholder="Email"
						name="email" required="required" />
					</label> <label> <input type="password" placeholder="Password"
						name="password" required="required" />
					</label>
					<button style="margin-top: 9px" type="submit">Sign Up</button>
				</form>
			</div>
			<div class="form-container sign-in-container">
				<form action="login" method="post">
					<%
					String msg1 = (String) request.getAttribute("msg1");
					%>
					<h5>
						<%
						if (msg1 != null) {
							out.print(msg1);
						}
						%>

					</h5>
					<h1>Sign in</h1>
					<div class="social-container">
						<a href="https://github.com/Prem-Lond" target="_blank" class="social"><i
							class="fab fa-github"></i></a> <a href="https://www.linkedin.com/in/prem-lond-1933a9251/" target="_blank"
							class="social"><i class="fa-brands fa-linkedin"></i></a> 
					</div>
					<span> Or sign in using E-Mail Address</span> <label> <input
						type="email" placeholder="Email" name="email" required="required" />
					</label> <label> <input type="password" placeholder="Password"
						name="password" required="required" />
					</label> <a href="#">Forgot your password?</a>
					<button type="submit">Sign In</button>
				</form>
			</div>
			<div class="overlay-container">
				<div class="overlay">
					<div class="overlay-panel overlay-left">
						<h1>Log in</h1>
						<p>Sign in here if you already have an account</p>
						<button class="ghost mt-5" id="signIn">Sign In</button>
					</div>
					<div class="overlay-panel overlay-right">
						<h1>Create, Account!</h1>
						<p>Sign up if you still don't have an account ...</p>
						<button class="ghost" id="signUp">Sign Up</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script>const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () =>
    container.classList.add('right-panel-active'));

signInButton.addEventListener('click', () =>
    container.classList.remove('right-panel-active'));

 </script>
</body>


</html>