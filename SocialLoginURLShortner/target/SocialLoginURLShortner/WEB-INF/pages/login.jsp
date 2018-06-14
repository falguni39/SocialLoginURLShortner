<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${title}</title>
<link href='http://fonts.googleapis.com/css?family=Rokkitt'
	rel='stylesheet' type='text/css'>
<style type="text/css">
table {
	border-collapse: collapse;
	border-spacing: 0;
}
/* start editing from here */
a {
	text-decoration: none;
}

.txt-rt {
	text-align: right;
} /* text align right */
.txt-lt {
	text-align: left;
} /* text align left */
.txt-center {
	text-align: center;
} /* text align center */
.float-rt {
	float: right;
} /* float right */
.float-lt {
	float: left;
} /* float left */
.clear {
	clear: both;
} /* clear float */
.pos-relative {
	position: relative;
} /* Position Relative */
.pos-absolute {
	position: absolute;
} /* Position Absolute */
.vertical-base {
	vertical-align: baseline;
} /* vertical align baseline */
.vertical-top {
	vertical-align: top;
} /* vertical align top */
.underline {
	padding-bottom: 5px;
	border-bottom: 1px solid #eee;
	margin: 0 0 20px 0;
} /* Add 5px bottom padding and a underline */
nav.vertical ul li {
	display: block;
} /* vertical menu */
nav.horizontal ul li {
	display: inline-block;
} /* horizontal menu */
img {
	max-width: 100%;
}
/*end normalize*/
body {
	font-family: 'Rokkitt', serif;
	font-size: 100%;
	background-color: rgb(13, 151, 214);
	background: url(images/linear_bg_2.png);
	background-repeat: repeat-x;
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(rgb(13, 151, 214)),
		to(#2F2727));
	background: -webkit-linear-gradient(top, #2F2727, rgb(13, 151, 214));
	background: -moz-linear-gradient(top, #2F2727, rgb(13, 151, 214));
	background: -ms-linear-gradient(top, #2F2727, rgb(13, 151, 214));
	background: -o-linear-gradient(top, #2F2727, rgb(13, 151, 214));
}

.wrap {
	width: 50%;
	margin: 0 auto;
}
/*start-login-form*/
.login_form {
	width: 55%; //
	background: url("../images/border.png") no-repeat 331px 77px;
	float: left;
	position: relative;
}

.login-form {
	background: #fff;
	padding: 7%;
	margin-top: 15%;
	position: relative;
	border-radius: 12px;
	-webkit-border-radius: 12px;
	-moz-border-radius: 12px;
	-o-border-radius: 12px;
}

.login-form h1 {
	font-size: 1.7em;
	color: #474646;
}

.login_form ul {
	list-style-type: none;
	list-style-position: outside;
	margin: 0px;
	padding: 0px;
}

.login_form li {
	position: relative;
}
/* form element visual styles */
.login_form li {
	float: left;
	outline: none;
	border: 1px solid #DDDDDD;
	font-size: 1.2em;
	color: #B6B6B6;
	width: 78.5%;
	font-weight: 600;
	margin-top: 8%;
	position: relative;
	height: 42px;
	border-radius: 2px;
}

.login_form li:hover {
	border: 1px solid #79B42B;
	color: #79B42B;
}

.login_form input {
	float: left;
	font-size: 1.1em;
	font-family: 'Rokkitt', serif;
	padding: 7px 14px;
	width: 75%;
	border: none;
	outline: none;
	color: #B6B6B6;
}

.login_form p {
	float: right;
	padding: 8px 7px;
	width: 9.3%;
	cursor: pointer;
}

.login_form input[type="submit"] {
	border: none;
	outline: none;
	cursor: pointer;
	color: #fff;
	background: #79B42B;
	width: 79%;
	padding: 12px;
	font-size: 1.3em;
	letter-spacing: 1px;
	margin: 28px 0 30px;
	transition: all 0.5s ease-out;
}

.login_form input[type="submit"]:hover {
	background: #88C470;
}

.login_form input[type="checkbox"] {
	width: 21px;
	vertical-align: middle;
	padding: 5px;
	float: left;
}

.login_form i {
	font-size: 1.2em;
	color: #B6B6B6;
	width: 40%;
	float: left;
}

.forgot {
	float: right;
	margin-right: 77px;
	width: 35%;
}

.forgot a {
	color: #B6B6B6;
	font-size: 1.1em;
	-webkit-transition: all 0.5s ease-out;
	-moz-transition: all 0.5s ease-out;
	-ms-transition: all 0.5s ease-out;
	-o-transition: all 0.5s ease-out;
}

.forgot a:hover {
	color: #79B42B;
}
/* === Form hints === */
.form_hint {
	color: #fff;
	text-align: center;
	background: #79B42B;
	border-radius: 3px 3px 3px 3px;
	font-size: 1.2em;
	margin-left: 8px;
	padding: 6px 23px;
	z-index: 999;
	position: absolute;
	right: -224px;
	bottom: 3px;
	font-weight: 100;
	display: none;
}

.form_hint::before {
	content: '';
	position: absolute;
	bottom: 9px;
	left: -9px;
	width: 0;
	height: 0;
	border-bottom: 10px solid transparent;
	border-right: 10px solid #79B42B;
	border-top: 10px solid transparent;
}

.login_form input:focus+.form_hint {
	display: inline;
}

.login_form input:required:valid+.form_hint {
	color: #000;
	background: #79B42B;
}

.login_form input:required:valid+.form_hint::before {
	color: #28921f;
}
/*end-login-form*/
/*start-account*/
.account {
	float: right;
	width: 45%;
}

.account h2 a {
	color: #71B8E4;
	display: block;
	font-size: 1.3em;
	font-weight: 400;
	text-align: right;
	margin-top: 3px;
	transition: all 0.5s ease-out;
}

.account h2 a:hover {
	color: #79B42B;
}

.account button {
	background: transparent;
	border: 0;
	padding: 3px 6px;
	font-family: inherit;
	font-size: inherit;
	cursor: pointer;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<div class="wrap">
		<div class="login-form">

			<form class="login_form" name='loginForm'
				action="<c:url value='../j_spring_security_check' />" method='POST'>
				<h1>Login Into Your Account</h1>
				<ul>
					<li><input type="text" class="textbox1" id="username"
						name="j_username" placeholder="Username" required="">
						<p>
							<img src="../images/contact.png" alt="">
						</p></li>
					<li><input type="password" id="password" name="j_password"
						class="textbox2" placeholder="Password">
						<p>
							<img src="../images/lock.png" alt="">
						</p></li>
				</ul>
				<input type="submit" name="Sign In" value="Sign In">
				<div class="clear"></div>
				<label class="checkbox"><input type="checkbox"
					name="checkbox" checked=""><i></i>Remember me</label>
				<div class="forgot">
					<a href="#">forgot password?</a>
				</div>
				<div class="clear"></div>
			</form>
			<c:url value="../services/signup" var="signupurl" />
			`
			<div class="account">
				<h3>
					<a href="${signupurl}">Don't have an account? Sign Up!</a>
				</h3>
				<div class="span3">
					<form name='GoogleSocialloginForm'
						action="<c:url value='../auth/google' />" method='POST'>
						<img src="../images/gmail2.png" alt="">
						<button type="submit">
							<i>Sign In with Google</i>
						</button>
						<input type="hidden" name="scope"
							value="https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo#email https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/tasks https://www-opensocial.googleusercontent.com/api/people https://www.googleapis.com/auth/plus.login" />
						<div class="clear"></div>
					</form>
				</div>
			
	<div class="clear"></div>
		</div>
		
	<div >   
	
	</div>
	<div class="wrap">
		<h3>
		<c:url value="../services/shortner" var="shortservice" />
					<a href="${shortservice}">URL Shortening Service</a>
		</h3>
			
    </div>	
	</div>
	</div> 

</body>
</html>
