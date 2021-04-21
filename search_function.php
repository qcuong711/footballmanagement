<?php
function search($keyword){
  $conn = @new mysqli("localhost", "root", "", "hanoifc");
  if ($conn->connect_error){
    die("Connection failed: " .$conn->connect_error);
  }
  $keyword = trim($keyword);
  $new_kw = str_replace(" ", "%' OR player_name LIKE '%", $keyword);
  $new_kw1 = str_replace(" ", "%' OR kit_number LIKE '%", $keyword);
  $new_kw2 = str_replace(" ", "%' OR nationality LIKE '%", $keyword);
  $new_kw3 = str_replace(" ", "%' OR player_position LIKE '%", $keyword);
  $new_kw4 = str_replace(" ", "%' OR salary LIKE '%", $keyword);
  $new_kw5 = str_replace(" ", "%' OR new_signed_contract LIKE '%", $keyword);

  $query = "SELECT * FROM player WHERE player_name  LIKE '%$new_kw%' or
                                       kit_number LIKE '$new_kw1%' or
                                       nationality LIKE '$new_kw2' or
                                       player_position LIKE '$new_kw3'or
                                       salary LIKE '$new_kw4'or
                                       new_signed_contract LIKE '$new_kw5'";

  $result = $conn->query($query) or die ("Query failed: " . $conn->error);

  if ($result->num_rows > 0){
    while ($row = $result->fetch_assoc()){
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
                    "</tr>";
          }
      }

      echo   "</table>";
    }
  }
  else
    echo "No player found!";

}
?>
