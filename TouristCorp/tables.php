<?php
include_once 'connect.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title> Users </title>
</head>
	<body>
	<h1> Users </h1>
	<table border="1">
	<tr><th>UserID</th><th>FirstName</th><th>LastName</th><th>Email</th><th> Password </th></tr>
	
	<?php
	$query="select * from register";
	$result = mysqli_query($conn,$query);

	echo"<br>";
	while($element=mysqli_fetch_array($result)) { ?>
		<tr>
		<td><?php echo $element['UserID'];?></td>
		<td><?php echo $element['FirstName'];?></td>
		<td><?php echo $element['LastName'];?></td>
		<td><?php echo $element['Email'];?></td>
		<td><?php echo $element['Password'];?></td>
		</tr>
		<?php
	}
	?>
	
	</table>
	<p> ------------------------------------------------------------------------------------------------------------------------------- </p>
	
	<h1> Reservations </h1>
		<table border="1">
	<tr><th>UserID</th><th>Destination</th><th>CheckIn</th><th>CheckOut</th><th>PeopleNo</th></tr>
	
	<?php
	$query="select * from reserve";
	$result = mysqli_query($conn,$query);

	echo"<br>";
	while($element=mysqli_fetch_array($result)) { ?>
		<tr>
		<td><?php echo $element['UserID'];?></td>
		<td><?php echo $element['destination'];?></td>
		<td><?php echo $element['checkIn'];?></td>
		<td><?php echo $element['checkOut'];?></td>
		<td><?php echo $element['peopleNo'];?></td>
		</tr>
		<?php
	}
	?>
	
	
	</table>

</html>