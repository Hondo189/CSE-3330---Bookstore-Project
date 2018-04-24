<html>
<head>
<title>3.3 3rd Transaction: Add New Order</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="main">
<h1>3.3 3rd Transaction: Add New Order</h1>
<div id="login">
<h2>Order Form</h2>
<hr/>
<form action="" method="post">
<label>User ID Number :</label>
<input type="text" name="user_id" id="user_id" required="required" placeholder="5"/><br /><br />
<label>Item ID Number :</label>
<input type="text" name="item_id" id="item_id" required="required" placeholder="12"/><br/><br />
<label>Quantity of Item :</label>
<input type="text" name="quantity" id="quantity" required="required" placeholder="3"/><br/><br />
<label>Date (YYYY-MM-DD) :</label>
<input type="text" name="date" id="date" required="required" placeholder="YYYY-MM-DD"/><br/><br />
<input type="submit" value=" Submit " name="submit"/><br />
<a href="menu.php">BookStore Main Menu</a><br>
</form>
</div>
</div>
<?php
if(isset($_POST["submit"])){
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bookstore";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO orders (user_id, item_id, quantity, order_date)
VALUES ('".$_POST["user_id"]."','".$_POST["item_id"]."','".$_POST["quantity"]."','".$_POST["date"]."')";

if ($conn->query($sql) === TRUE) {
echo "<script type= 'text/javascript'>alert('New order record created successfully');</script>";
} else {
echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";
}

$conn->close();
}
?>
</body>
</html>