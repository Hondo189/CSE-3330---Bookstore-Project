<html>
<head>
<title>3.4 4th Transaction: Find Ordered Item</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="main">
<h1>3.4 4th Transaction: Find Ordered Item</h1>
<div id="login">
<h2>Ordered Item Form</h2>
<hr/>
<form action="" method="post">
<label>Order ID Number :</label>
<input type="text" name="order_id" id="order_id" required="required" placeholder="5"/><br /><br />
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

$sql = "SELECT * FROM items
LEFT JOIN books ON items.Item_ID=books.Item_ID
WHERE items.Item_ID = (SELECT Item_ID FROM orders
                       WHERE Order_ID='".$_POST["order_id"]."')";
$resource = $conn->query($sql);
while ( $rows = $resource->fetch_assoc() ) {
    print_r($rows);//echo "{$row['field']}";
}
$resource->free();
/*
if ($conn->query($sql) === TRUE) {
echo "<script type= 'text/javascript'>alert('New order record created successfully');</script>";
} else {
echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";
}
*/
$conn->close();
}
?>
</body>
</html>