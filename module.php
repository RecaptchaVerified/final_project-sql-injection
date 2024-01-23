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



$username = $_POST["username"];
$password = $_POST["password"];

//db connection
$conn = mysqli_connect("localhost", "root", "", "final_project2", "3306");




//Fixed solution 1 prepared statements
/*
$stmt = mysqli_stmt_init($conn);
$sql = "SELECT Username, Password FROM customers WHERE Username = ? AND Password = ?";
if (mysqli_stmt_prepare($stmt, $sql)) 
    mysqli_stmt_bind_param($stmt, "ss", $username, $password);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $count = mysqli_num_rows($result);
*/

/*
// Injectable code
$sql = "SELECT Username, Password FROM customers where Username = '$username' AND Password = '$password'";


$result = mysqli_query($conn, $sql);
$count = mysqli_num_rows($result);
*/


//$sql = "SELECT email, password FROM login where email = ? AND password = ?";
//$stmt = mysqli_stmt_init($conn);
//mysqli_stmt_prepare($stmt, $sql);
//mysqli_stmt_bind_param($stmt, "ss", $email, $password);
//mysqli_stmt_execute($stmt);
//$result = mysqli_stmt_get_result($stmt);
//$count = mysqli_num_rows($result);


//Fixed solution 2 stored procedures
//$sql = CALL 'get_login'('$email', '$password');";
//$stmt = mysqli_stmt_init($conn);
//mysqli_stmt_prepare($stmt, $sql);
//mysqli_stmt_execute($stmt);
//$result = mysqli_stmt_get_result($stmt);
//$count = mysqli_num_rows($result);


// Fixed solution 2 stored procedures
$stmt = mysqli_stmt_init($conn);
$sql = "CALL get_login('$username', '$password');";
if (mysqli_stmt_prepare($stmt, $sql)) 
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    $count = mysqli_num_rows($result);
   



//Fixed solution 3 prepared statements and stored procedures
//$sql = "CALL 'get_login'(?, ?);";
//$stmt = mysqli_stmt_init($conn);
//mysqli_stmt_prepare($stmt, $sql);
//mysqli_stmt_bind_param($stmt, "ss", $email, $password);
//mysqli_stmt_execute($stmt);
//$result = mysqli_stmt_get_result($stmt);
//$count = mysqli_num_rows($result);



if($count > 0)
{
  while($row = $result->fetch_assoc()) {
    echo "<h2>" . "<br>" . "Welcome " . $row["Username"]. "    " . "<br>" . "</h2>" . "<p>" . "</p>";
  }
}

else {
    header("Location: modulenosignin.html");
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
