<?php include_once 'connect.php';

if(isset($_POST['register'])) {

$FirstName = $_POST['fn'];
$LastName = $_POST['ln'];
$Email = $_POST['email'];
$Password = $_POST['pass'];
$query = "insert into register(FirstName,LastName,Email,Password) values('$FirstName','$LastName','$Email', '$Password')";
$result = mysqli_query($conn, $query);

if ($result) {
			echo "<script> alert('Registration successful.'); location.href = 'login.html'; </script>";	   
} else {
	echo"<script> alert('Unsuccessful, please try again.');</script>";	
} 
}

?>