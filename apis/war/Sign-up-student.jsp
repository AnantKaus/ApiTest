<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

	<title>Sign in </title>

	<link rel="shortcut icon" href="http://www.gettemplate.com/demo/progressus-pro/assets/images/gt_favicon.png">

	<link rel="stylesheet" href="./scripts/css">
	<link rel="stylesheet" href="./scripts/bootstrap.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="./scripts/styles.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
var request;
function login() {
	var email=document.getElementById("email").value;
	var pass=document.getElementById("pass").value;
	
	var url = "https://myapitrial.appspot.com/_ah/api/loginapi/v1/add/"+email+"/"+pass;

	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}

	try {
		request.onreadystatechange = getInfo2;
		request.open("POST", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server to update details");
	}
}

function getInfo2() {
	if (request.readyState == 4 && request.status == 200) {
		var val = request.responseText;
		
	
	    obj = JSON.parse(val);
		
		document.getElementById('result').innerHTML =obj.msg;//+" "+obj.valid;
		
	}
}</script>
</head>

<body class="page-signin">

	<section class="section section-signin">

		<p class="text-center"><a href="./index.html"><img src="./scripts/logo.png" alt="Progressus HTML5 template"></a></p>

		<div class="panel panel-default">
			<div class="panel-body" role="tabpanel">

				<!-- forms container -->
				<div class="tab-content">

					

					<!-- sign up -->
					<div role="tabpanel" >
						<h3 class="text-center">Registration</h3>
						<p class="text-center">
							<br>
							A very simple registration form.
							<br>
						</p>
						<form method="post" >
							
							<div class="form-group">
								<label class="sr-only">Email <span class="text-danger">*</span></label>
								<input type="text" name = "email" class="form-control" placeholder="Email">
							</div>
							
							<div class="form-group">
								<label class="sr-only">Password <span class="text-danger">*</span></label>
								<input type="password" name = "pass" class="form-control" placeholder="Password">
							</div>
							<div id="result"></div>
						</form>
					</div>
					<!-- end of sign in -->
					
					
				</div>
				<!-- end of forms container -->

				<!-- the switcher between forms -->
				<ul class="toggler text-center small list-unstyled" role="tablist">
					<li role="presentation" >Changed your mind? <a href="/Sign-in.jsp" >Back to sign in form</a></li>
				</ul>

			</div>
		</div>
		<!-- /panel -->

	</section>


	<script async="" src="./scripts/analytics.js"></script><script>
	  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	  ga('create', 'UA-48366846-1', 'gettemplate.com');
	  ga('send', 'pageview');
	</script>

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="./scripts/jquery.min.js"></script>
	<script src="./scripts/bootstrap.min.js"></script>


</body></html>