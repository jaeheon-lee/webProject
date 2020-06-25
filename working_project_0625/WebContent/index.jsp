<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Dashtreme Admin - Free Dashboard for Bootstrap 4 by Codervent</title>
  <!-- loader-->
  <link href="assets/css/pace.min.css" rel="stylesheet"/>
  <script src="assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="assets/icon" href="images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="assets/css/app-style.css" rel="stylesheet"/>
  
    <style>
body{
  background-color: #6820a3;
  opacity: 0.9;
}
#myVideo {
 position: fixed; 
  right: 0;
  bottom: 0;
  min-width: 100%;
  min-height: 100%;

opacity: 0.6;
}
.card-authentication1{
	border-radius: 0, 10%;
}

.card-body{
  background-color: #6820a3;
  border-radius: 0, 10%;
  opacity: 0.9;

}
.text-center #logo{
  background-color: #afabab;
  
}
h2{
  text-align: center;
  margin-top: 1em;
}



    </style>
</head>
<body>
 
    <video autoplay muted loop id="myVideo">
        <source src="ours/video/intro.mp4" type="video/mp4">
      </video>
     <!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">
 <div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>
	<div class="card card-authentication1 mx-auto my-5" style="
    width: 341px;
">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		<img width="200" id = "logo" src="ours/img/logo.png" alt="logo icon">
		 	</div>
		  <div class="card-title text-uppercase text-center py-3"><b>로그인</b></div>
		    <form>
			  <div class="form-group">
			  <label for="exampleInputUsername" class="sr-only">Username</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="exampleInputUsername" class="form-control input-shadow" placeholder="아이디를 입력해주세요.">
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="exampleInputPassword" class="sr-only">Password</label>
			   <div class="position-relative has-icon-right">
				  <input type="password" id="exampleInputPassword" class="form-control input-shadow" placeholder="비밀번호를 입력해주세요.">
				  <div class="form-control-position">
					  <i class="icon-lock"></i>
				  </div>
			   </div>
			  </div>
			<div class="form-row">
			 <div class="form-group col-6">
			   <div class="icheck-material-white">
                <input type="checkbox" id="user-checkbox" checked="" />
                <label for="user-checkbox">Remember me</label>
			  </div>
			 </div>
			 <div class="form-group col-6 text-right">
			  <a href="reset-password.html">Reset Password</a>
			 </div>
			</div>
			 <button type="button" class="btn btn-light btn-block"><a href="login.jsp"></a>로그인</button>
				 </form>
		   </div>
		  </div>
		  <div class="card-footer text-center py-3">
		    <p class="text-warning mb-0">Do not have an account? <a href="join.jsp"> Sign Up here</a></p>
		  </div>
	     </div>
     <!--Start Back To Top Button-->
    <!--End Back To Top Button-->
	</div>
</body>
</html>
