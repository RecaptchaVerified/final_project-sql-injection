<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="module.css" />
  </head>
  <body>
  <h1>Login is successful <br></h1>
  

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
  //Connection to DB
$conn = mysqli_connect("localhost", "root", "", "final_project2", "3308");

/*  
//To use whilst implementing Escaping solution  
$username = mysqli_real_escape_string($conn, $_POST["username"]);
$password = mysqli_real_escape_string($conn, $_POST["password"]);
*/
  
$username = $_POST["username"];
$password = $_POST["password"];


// Injectable code
$sql = "SELECT Username, Password FROM customers where Username = '$username' AND Password = '$password'";

$result = mysqli_query($conn, $sql);
$count = mysqli_num_rows($result);



/*  
//Fixed solution 2 Prepared Statements
$stmt = mysqli_stmt_init($conn);
$sql = "SELECT Username, Password FROM customers WHERE Username = ? AND Password = ?";
if (mysqli_stmt_prepare($stmt, $sql)) 
    mysqli_stmt_bind_param($stmt, "ss", $username, $password);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $count = mysqli_num_rows($result);
*/

  
  
/*
//Fixed solution 2 stored procedures
$stmt = mysqli_stmt_init($conn);
$sql = "CALL Get_User('$username', '$password');";
if (mysqli_stmt_prepare($stmt, $sql)) 
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $count = mysqli_num_rows($result);
*/  

/*
// Fixed solution 3 prepared statements and stored procedures
$stmt = mysqli_stmt_init($conn);
$sql = "CALL get_login(?, ?);";
if (mysqli_stmt_prepare($stmt, $sql)) {
    mysqli_stmt_bind_param($stmt, "ss", $username, $password);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $count = mysqli_num_rows($result);
}
*/

/*  
//Fixed solution 4 with escaped values
 $sql = "SELECT Username, Password FROM customers WHERE Username = '$username' AND Password = '$password'";
 $result = mysqli_query($conn, $sql);
 $count = mysqli_num_rows($result);
*/  

  
if($count > 0)
{
  while($row = $result->fetch_assoc()) {
    echo "<h2>" . "<br>" . "Welcome " . $row["Username"]. "    " . "<br>" . "</h2>" . "<p>" . "</p>";
  }
}

else {
    header("Location: modulenosignin.html");
}
mysqli_close($conn);
}

?>

<form method="post" action="inputvalidation.php">
  <input type="submit" value="Buy Mice" />
</form>

<form method="post" action="logout.php">
  <input type="submit" value="Logout" />
</form>

</body>
</html>
