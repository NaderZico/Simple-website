<?php session_start(); ?>
<?php
include_once 'connect.php'; 


		$UserID = $_SESSION['UserID'];
	
if(isset($_POST['reserve'])) 
{
    $destination = $_POST['destination'];
    $checkin = $_POST['checkin'];
	$checkout = $_POST['checkout'];
	$peopleNo = $_POST['peopleNo'];
	$qry="select * from register where UserID=$UserID";
	$result = mysqli_query($conn,$qry);
if($result){
    mysqli_query($conn,"insert into reserve(UserID, destination, checkin, checkout,peopleNo)values($UserID, '$destination', '$checkin', '$checkout',$peopleNo)");	
	
echo "<script> alert('Reservation successful, thank you.'); location.href = 'dashboard.html'; </script>";
}else{
    echo "<script> alert('Please log in first to make a reservation.'); location.href='login.html'; </script>";
}
}


	

	
?>

