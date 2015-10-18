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

$name=$_POST["name"];
$email=$_POST["email"];
$mobile=$_POST["mobile"];
$address=$_POST["address"];
$webpage=$_POST["webpage"];
$about=$_POST["about"];
$photourl=$_POST["photourl"];

$sql = "INSERT INTO CompanyProfile(name,email,mobile,address,webpage,about,photourl) VALUES ('".$name."','".$email."','".$mobile."','".$address."','".$webpage."','".$about."','".$photourl."')";

if ($con->query($sql) === TRUE) {
    echo "Dear ".$name."<br>Welcome to 'Greek Way' app by BAZINGA ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
  

  mysqli_close($con);
?>