<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="module.css" />
  </head>
  <body>
    <h1>Payment</h1>
<form method="post" action='payed.php'>
      <fieldset>
        <label for="First_name"></label>
        <input id="First_name" name="First_name" type="text" placeholder="First_name*" />
        <label for="Last_name"></label>
        <input id="Last_name" name="Last_name" type="text" placeholder="Last_name*" required />
        <label for="number"></label>
        <input id="number" name="number" type="text" placeholder="Card number*" required />
        <label for="date"></label>
        <input id="date" name="date" type="date" placeholder="YYYY-MM-DD*" required />
        <label for="cvv"></label>
        <input id="cvv" name="cvv" type="number" placeholder="CVV/CVC*" required />
      </fieldset>
      <input type="submit" value="Pay" />
    </form>

<?php

$mickey = $_GET['mickey'];
$jerry = $_GET['jerry'];
$minnie = $_GET['minnie'];

//faulty code not checking if the input is negative
if($mickey != "") {
$mickeyPrice = 24 * $mickey;
} else {
    $mickeyPrice = 0;
}

if($jerry != "") {
    $jerryPrice = 3 * $jerry;
} else {
    $jerryPrice = 0;
}

if($minnie != "") {
    $minniePrice = 52 * $minnie;
} else {
    $minniePrice = 0;
}

//fixed code
//if($mickey > 0) {
  //$mickeyPrice = 24 * $mickey;
  //} else {
      //$mickeyPrice = 0;
  //}
  

$total = $mickeyPrice + $jerryPrice + $minniePrice;

echo "<h2>" . "Your account will be debited:  " . $total . "$" . "</h2>";

?>

</body>
</html>