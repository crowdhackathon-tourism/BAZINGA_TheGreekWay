<?php

$username="user816";
$password="XI__Vctf";
$databaseName="user816_db3";
  $con=mysqli_connect("localhost",$username,$password,$databaseName);

  // Check connection
  if (mysqli_connect_errno())
  {
   echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  $query = "SELECT * FROM  UserProfile ";

  $result = mysqli_query($con,$query);

  $rows = array();
  while($r = mysqli_fetch_array($result)) {
    $rows[] = $r;
  }
  echo json_encode($rows);

  mysqli_close($con);
?>