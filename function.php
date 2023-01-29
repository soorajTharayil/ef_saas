<?php
//creating a function 
function createDB($dbname)
{

  $mysqli = new mysqli("localhost", "root", "", "");
  $sql = "CREATE DATABASE $dbname";
  $mysqli->query($sql);
  $mysqli->select_db($dbname);

  $insert = file_get_contents('addDB.sql');

  //$mysqli->multi_query($insert);

  if ($mysqli->multi_query($insert)) {
    do {
      // Store first result set
      if ($result = $mysqli->store_result()) {
        while ($row = $result->fetch_row()) {
          printf("%s\n", $row[0]);
        }
        $result->free_result();
      }
      // if there are more result-sets, the print a divider
      if ($mysqli->more_results()) {
        printf("-------------\n");
      }
      //Prepare next result set
    } while ($mysqli->next_result());
  }

  $mysqli->close();
}
