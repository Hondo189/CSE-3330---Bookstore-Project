<html>
<head>
<title>3.2 2nd Transaction: Add New Movie</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div id="main">
<h1>3.2 2nd Transaction: Add New Movie</h1>
<div id="login">
<h2>Movie Form</h2>
<hr/>
<form action="" method="post">
<label>Title :</label>
<input type="text" name="item_name" id="name" required="required" placeholder="Please Enter Title"/><br /><br />
<label>Price :</label>
<input type="text" name="item_price" id="price" required="required" placeholder="9.99"/><br/><br />
<label>Description :</label>
<input type="text" name="item_desc" id="description" placeholder="Please Enter Description"/><br/><br />
<label>Genre :</label>
<input type="text" name="item_genre" id="genre" required="required" placeholder="Please Enter Genre"/><br/><br />
<label>Runtime (in minutes) :</label>
<input type="text" name="item_length" id="length" placeholder="120"/><br/><br />
<label>Year Released :</label>
<input type="text" name="item_year" id="release_year" required="required" placeholder="1995"/><br/><br />
<label>Director Name :</label>
<input type="text" name="item_director" id="director" required="required" placeholder="Please Enter Director Name"/><br/><br />
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
	$link = mysqli_connect($servername, $username, $password, $dbname);
	// Check connection
	if (!$link) {
		printf("Connect failed: %s\n", mysqli_connect_error());
		exit();
	}

	//transaction begin
	mysqli_autocommit($link, FALSE);
	$sql = "INSERT INTO Items (Name, Price, Description, Genre)
	VALUES ('".$_POST["item_name"]."','".$_POST["item_price"]."','".$_POST["item_desc"]."','".$_POST["item_genre"]."');";
	if (mysqli_query($link, $sql) === TRUE) {
		$last_id = mysqli_insert_id($link);
		$sql1 = "INSERT INTO movies (item_id, length, release_year, director)
	VALUES ('".$last_id."','".$_POST["item_length"]."','".$_POST["item_year"]."','".$_POST["item_director"]."');";
		mysqli_query($link, $sql1);
	}

	if (!mysqli_commit($link)) {//commit transaction
		print("Table saving failed");
		exit();
	} else {
		echo "<script type= 'text/javascript'>alert('New movie record created successfully');</script>";
	}
	//transaction end

	mysqli_close($link);
}
?>
</body>
</html>