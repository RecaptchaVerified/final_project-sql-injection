<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="module.css" />
  </head>
  <body>
  <h1>Register successful<br></h1>
<?php

    $First_name = $_POST["First_name"];
    $Last_name = $_POST["Last_name"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    
    //db connection
    $conn = mysqli_connect("localhost", "root", "", "final_project2", "3306");
    
    $sql = "INSERT INTO `register`(`First_name`, `Last_name`, `email`, `password`) VALUES ('$First_name', '$Last_name', '$email', '$password')";
    
    $stmt = mysqli_stmt_init($conn);

    mysqli_stmt_prepare($stmt, $sql);

    mysqli_stmt_execute($stmt);

?>

<form method="post" action="inputvalidation.php">
  <input type="submit" value="Buy Mice" />
</form>
<form method="post" action="xssProduct.php">
  <input type="submit" value="Leave a comment" />
</form>
<form method="post" action="xss.php">
  <input type="submit" value="Date" />
</form>

</body>
</html>