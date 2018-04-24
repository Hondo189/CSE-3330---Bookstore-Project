<html>
<head>
<title>3.6 6th Transaction: Find Item Sums</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="main">
<h1>3.6 6th Transaction: Find Item Sums</h1>
<div id="login">
<h2>Sum Form</h2>
<hr/>
<form action="" method="post">
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

$sql = "CREATE OR REPLACE VIEW temp AS
SELECT orders.item_id, orders.Quantity, items.price, (orders.Quantity * items.Price) AS Total
FROM orders
LEFT JOIN items ON items.Item_ID
WHERE orders.order_date = '".$_POST["date"]."'
GROUP BY orders.item_id";



if ($conn->query($sql) === TRUE) {
	$sql = "SELECT SUM(Total) FROM temp
WHERE item_id IN (SELECT item_id FROM books);";
	$resource = $conn->query($sql);
	echo "Book Price Total on ".$_POST["date"].": ";
	echo "<br/>";
	while ( $rows = $resource->fetch_assoc() ) {
		print_r($rows);
		echo "<br/>";
	}
	echo "<br/>";
	
	$sql = "SELECT SUM(Total) FROM temp
WHERE item_id IN (SELECT item_id FROM movies);";
	$resource = $conn->query($sql);
	echo "Movie Price Total on ".$_POST["date"].": ";
	echo "<br/>";
	while ( $rows = $resource->fetch_assoc() ) {
		print_r($rows);
		echo "<br/>";
	}
	echo "<br/>";
	
	$sql = "SELECT SUM(Total) FROM temp
WHERE item_id IN (SELECT item_id FROM periodicals);";
	$resource = $conn->query($sql);
	echo "Periodical Price Total on ".$_POST["date"].": ";
	echo "<br/>";
	while ( $rows = $resource->fetch_assoc() ) {
		print_r($rows);
		echo "<br/>";
	}
} else {
echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";
}

$conn->close();
}
?>
</body>
</html>