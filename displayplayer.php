<html>
<body>
<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "hanoifc";
$conn = new mysqli($hostname, $username, $password, $database);

$sql = "SELECT kit_number, player_name, nationality, player_position, salary, new_signed_contract FROM player";

$result = $conn->query($sql);
function del(){
if(isset($_POST['delete']) && isset($_POST['kit_number'])){
  $kit_number = $_POST['kit_number'];
  $query = "DELETE FROM player WHERE kit_number='$kit_number'";

  if (!$conn->query($query)){
    echo $conn->error();
  }
  else {
        echo "Player has been deleted<br>";
  }
}
}

echo "<table style='border: 1px solid black; color: red'>
        <tr>
          <th>
            So ao
          </th>
          <th>
            Ten
          </th>
          <th>
            Quoc tich
          </th>
          <th>
            Vi tri
          </th>
          <th>
            Luong
          </th>
          <th>
            Hop dong
          </th>
          <th>
            Edit
          </th>
          <th>
            Delete
          </th>
        </tr>";

if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc()) {
        echo "<tr>".
                "<td>".
                  "$row[kit_number]".
                "</td>".
                "<td>".
                  "$row[player_name]".
                "</td>".
                "<td>".
                  "$row[nationality]".
                "</td>".
                "<td>".
                  "$row[player_position]".
                "</td>".
                "<td>".
                  "$row[salary]".
                "</td>".
                "<td>".
                  "$row[new_signed_contract]".
                "</td>".
                "<td>".
                  "<a href='#'> Edit</a>".
                "</td>".
                "<td>".
                  "<input type='submit' value='Delete' onclick='del()'>".
                  "<input type='hidden' name='delete' value='yes'>".
                  "<input type='hidden' name='kit_number' value='$row[kit_number]'>".
                "</td>".
              "</tr>";
    }
}

echo   "</table>";

$conn->close();

?>
</body>
</html>
