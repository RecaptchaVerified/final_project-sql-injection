<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="module.css" />
  </head>
  <body>
    <h1>Payment successful</h1>
        </div>
    </form>

<?php
    //pattern="[a-z0-5]{8,}"
    $First_name = $_POST["First_name"];
    $Last_name = $_POST["Last_name"];
    $number = $_POST["number"];
    $date = $_POST["date"];
    $cvv = $_POST["cvv"];

    
    //db connection
    $conn = mysqli_connect("localhost", "root", "", "final_project2", "3306");
    //echo "SELECT `First_name`, `Last_name` FROM `customers` WHERE First_name = '$First_name' and Last_name = '$Last_name'";
    $sql = "SELECT `First_name`, `Last_name` FROM `customers` WHERE First_name = '$First_name' and Last_name = '$Last_name'";

    $result = mysqli_query($conn, $sql);
    $count = mysqli_num_rows($result);
    //echo"INSERT INTO `bank`(`first_name`, `card_number`, `date`, `cvv`) VALUES ('$First_name','$number','$date','$cvv')";

    if($count > 0) {
        $sqlTwo = "INSERT INTO `bank`(`first_name`, `card_number`, `date`, `cvv`) VALUES ('$First_name','$number','$date','$cvv')";
        $stmtTwo = mysqli_stmt_init($conn);
        mysqli_stmt_prepare($stmtTwo, $sqlTwo);
        mysqli_stmt_execute($stmtTwo);
    }

?>

    </body>
</html>