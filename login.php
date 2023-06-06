<?php

include_once 'connect.php'; 


if(isset($_POST['login'])){
	
	$Email = $_POST['email'];
	$Password = $_POST['pass'];
	
	$query="select UserID,Email,Password from register where Email='$Email' and Password='$Password';";
    $result = mysqli_query($conn, $query);
	$row = mysqli_num_rows($result);
	if($row > 0)
    { 
		 session_start();
		$result2 = mysqli_fetch_assoc($result);
        $UserID=$result2['UserID'];
		$Email=$result2['Email'];
		$Password=$result2['Password'];
		$_SESSION['UserID'] = $UserID;
	echo "<script> alert('You are now logged in.'); location.href = 'browse.html'; </script>";		
    }
	else {
		echo "<script>alert('Invalid Email or Password, please try again.'); location.href='login.html';</script>";
	}
	
}

?>
