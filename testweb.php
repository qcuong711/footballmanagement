<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="mainweb.css">
  <title> HNFC </title>
  <?php
      $conn = @new mysqli($hostname = "localhost", $username = "root", $password = "", $dbname = "hanoifc");
      if($conn->connect_error){
          die("connection failed: ". $conn->connect_error);
      }
  ?>
</head>
<body>
  <?php
    require "add_player_window.php";
  ?>
<div>
  <a href="mainweb.php">
    <img src="image/hnfc.jpg" alt="HNFC" style="width:1000px;height:200px;border:0;">
  </a>
</div>
<div>
  <?php
  $conn->close();
  ?>
</div>
</body>
</html>
