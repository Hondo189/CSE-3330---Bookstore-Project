<html>
<head>
<title>3.1 1st Transaction: Add New Customer</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="main">
<h1>3.1 1st Transaction: Add New Customer</h1>
<div id="login">
<h2>Customer Form</h2>
<hr/>
<form action="" method="post">
<label>Name :</label>
<input type="text" name="cust_name" id="name" required="required" placeholder="Please Enter Name"/><br /><br />
<label>Email :</label>
<input type="text" name="cust_email" id="email" required="required" placeholder="john123@gmail.com"/><br/><br />
<label>Password (12 Character Max):</label>
<input type="text" name="cust_pw" id="password" required="required" placeholder="Please Enter Password"/><br/><br />
<label>Phone Number :</label>
<input type="text" name="cust_phone_no" id="phone_no" required="required" placeholder="555-555-5555"/><br/><br />
<label>Street Address :</label>
<input type="text" name="cust_address" id="address" required="required" placeholder="123 1st St., City, TX 12345"/><br/><br />
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

$sql = "INSERT INTO person (name, email, phone_no, pass_word, address)
VALUES ('".$_POST["cust_name"]."','".$_POST["cust_email"]."','".$_POST["cust_phone_no"]."','".$_POST["cust_pw"]."','".$_POST["cust_address"]."')";

if ($conn->query($sql) === TRUE) {
echo "<script type= 'text/javascript'>alert('New customer record created successfully');</script>";
} else {
echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";
}

$conn->close();
}
?>
</body>
</html>