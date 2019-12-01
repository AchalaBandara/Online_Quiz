<?php

session_start();

$conn_error="could not connected";
$host='localhost';
$user='root';
$pass='';
$db='quiz';

$conn=mysqli_connect($host,$user,$pass) or die($conn_error);
mysqli_select_db($conn,$db) or die ($conn_error);
?>

<html>
<head><title>Score</title></head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min">
<body bgcolor="#elelel">
<body>

<h1><center><font face="Andalus" size="10">Your Score</font></center></h1> 

<style>
	body{
		background-image:url("image.jpg")
	}
</style>
<?php

$result=0;
		if(isset($_POST['submit'])){
		if(!empty($_POST['quizcheck'])){
			
		?>		
					
			<?php
			
			$selected=$_POST['quizcheck'];	
			$q="select * from questions";
			$query=mysqli_query($conn,$q);
			$i=1;
			while($rows=mysqli_fetch_array($query)){
				$checked=$rows['ansID'] == $selected[$i];
				
				if($checked){
					$result++;
					
				}else{
					
				}
				$i++;
			}
			?>
			<?php
			echo "Your score is".$result;
					
		}else{
			echo "<b>Please Select Atleast One Option.</b>";
		}	
}
?>

<form action="login.php" method="post">
<a href="login.php" class="btn btn-sucess"><b>LOGOUT</b></a>
</body>
</html>