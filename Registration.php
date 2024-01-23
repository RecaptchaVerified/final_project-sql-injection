<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="module.css" />
  </head>
  <body>
  <h1>Register was successful<br></h1>

  <form method="post" action="inputvalidation.php">
  <input type="submit" value="Buy Mice" />

  <form method="post" action="index.html">
  <input type="submit" value="Go Back to Login Page" />
</form>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
$First_name = $_POST["First_name"];
$Last_name = $_POST["Last_name"];
$email = $_POST["email"];
$password = $_POST["password"];
$number = $_POST["number"];
$username = $_POST["username"];

    
    //db connection
    $conn = mysqli_connect("localhost", "root", "", "final_project2", "3306");
    
    
      $sqlTwo = "INSERT INTO `customers`(`First_name`, `Last_name`, `Email_ID`, `Password`, `Contact_Number`, `Username`) 
      VALUES ('$First_name','$Last_name','$email','$password','$number','$username')";
      mysqli_query($conn, $sqlTwo);
    }

?>




</body>
</html>