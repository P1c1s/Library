<?php

   session_start();
   if(isset($_SESSION['library']))
      header('Location: index.php');

?>

<!DOCTYPE html>
<html lang="it">
<head>
        <title>Login - Library</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
        <link rel="icon" type="image/png" href="favicon.ico"/>
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/login1.css">
        <link rel="stylesheet" type="text/css" href="css/login2.css">
<!--===============================================================================================-->


<style>
.image_section img{
    display: block;
}

@media (max-width:640px){
    .image_section img:first-child{
        display:none;
    }
}
</style>



</head>

<body>
        <div class="limiter">
                <div class="container-login100">
                        <div class="wrap-login100 p-t-50 p-b-90">

                              <div class="col-md-9 image_section" style="padding: 0px;">
                                <center> <img src="favicon.svg" width="60%" /> </center>
                              </div>

                                <form class="login100-form validate-form flex-sb flex-w" method="POST" action="server.php">
                                        <span class="login100-form-title p-b-51">
                                                Ben Tornato!
                                        </span>

                                        
                                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
                                                <input class="input100" type="text" name="username" placeholder="Username">
                                                <span class="focus-input100"></span>
                                        </div>
                                        
                                        
                                        <div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
                                                <input class="input100" type="password" name="password" placeholder="Password">
                                                <span class="focus-input100"></span>
                                        </div>
                                        
<!-- Multiline Commment
                                      <div class="flex-sb-m w-full p-t-3 p-b-24">
                                                <div class="contact100-form-checkbox">
                                                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                                                        <label class="label-checkbox100" for="ckb1">
                                                                Remember me
                                                        </label>
                                                </div>

                                                <div>
                                                        <a href="#" class="txt1">
                                                                Forgot?
                                                        </a>
                                                </div>
                                        </div>

-->

                                        <div class="container-login100-form-btn m-t-17">
                                                <input type="submit" class="login100-form-btn">
                                        </div>

                                </form>
                        </div>
                </div>
        </div>
        

        <div id="dropDownSelect1"></div>
        
<!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
        <script src="js/main.js"></script>

</body>
</html>












