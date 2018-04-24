<html>
<head>
<title>3.8 8th Transaction: Delete Customer</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="main">
<h1>3.8 8th Transaction: Delete Customer</h1>
<div id="login">
<h2>Delete Customer Form</h2>
<hr/>
<form action="" method="post">
<label>Customer ID Number :</label>
<input type="text" name="cust_id" id="cust_id" required="required" placeholder="5"/><br /><br />
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

$sql = "DELETE FROM Person WHERE user_id = '".$_POST["cust_id"]."'";

if ($conn->query($sql) === TRUE) {
echo "<script type= 'text/javascript'>alert('Customer record deleted successfully');</script>";
} else {
echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";
}

$conn->close();
}
?>
</body>
</html>