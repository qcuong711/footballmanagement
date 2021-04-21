<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "hanoifc";
$conn = new mysqli($hostname, $username, $password, $database);

if (isset($_POST["add"])){
  $kit_number = $_POST["kit_number"];
  $player_name = $_POST["player_name"];
  $nationality = $_POST["nationality"];
  $player_position = $_POST["player_position"];
  $salary = $_POST["salary"];
  $new_sign_contract = $_POST["new_signed_contract"];

  $query = "INSERT INTO player VALUES ('$kit_number', '$player_name', '$nationality', '$player_position', '$salary', '$new_sign_contract')";

  if(!$conn->query($query))
    echo "<h3>$conn->error()</h3>";
  else
    echo "*Player '$player_name' has been added<br>";
}
?>

<!DOCTYPE html>
<html>
<head>

</head>
<body>
  <form action="add_player_window.php" method="POST">
    <pre>
             Kit number <input type="text" name="kit_number"/>
            Player name <input type="text" name="player_name"/>
            Nationality <input type="text" name="nationality"/>
        Player Position <input type="text" name="player_position"/>
                 Salary <input type="text" name="salary"/>
      New sign contract <input type="text" name="new_signed_contract"/>

                        <input type="submit" value="Add">
    </pre>
    <input type="hidden" name="add" value="yes">
  </form>

</body>
</html>
