<?php include 'sendemail.php'?>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname="onlinefoodphp";

$conn = mysqli_connect($servername,$username,$password,"$dbname");

if(!$conn)
{
	die('Connection failed!'.mysqli_error($conn));
}

$name = $_POST['name'];
$email = $_POST['email'];
$mob = $_POST['mob'];
$msg = $_POST['msg'];

$sql = "INSERT INTO msg(name,email,mob,msg) VALUES('$name','$email','$mob','$msg')";




if (mysqli_query($conn,$sql))
 {
    echo "<script type='text/javascript'>alert('Thank you! Your information  submitted successfully'); window.location.href = 'index.php';</script>";              
} else {
    echo "<script>alert('ERROR! Something Went wrong. Try Again')</script>";
}
?>