
<?php
    $username=$_POST['username'];
    $password=$_POST['password'];
    echo $username;
    
    if($username=="123" && $password=="123"){
      session_start();
      $_SESSION['library']='ok';
      header('Location: index.php');
   }else
    header('Location: login.php');

?>
