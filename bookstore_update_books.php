<html>
<head>
<title>3.7 7th Transaction: Update Book Prices</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="main">
<h1>3.7 7th Transaction: Update Book Prices</h1>
<div id="login">
<h2>Update Price Form</h2>
<hr/>
<form action="" method="post">
<label>Price Percentage (50% Off = .5, increase by 10% = 1.1):</label>
<input type="text" name="percent" id="percent" required="required" placeholder=".5"/><br /><br />
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

$sql = "UPDATE items
SET Price = price * '".$_POST["percent"]."'
WHERE Item_ID IN (SELECT Item_ID FROM books)";

if ($conn->query($sql) === TRUE) {
echo "<script type= 'text/javascript'>alert('Book Prices updated successfully');</script>";
} else {
echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";
}

$conn->close();
}
?>
</body>
</html>