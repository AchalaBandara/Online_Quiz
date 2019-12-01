<?php

$conn_error="could not connected";
$host='localhost';
$user='root';
$pass='';
$db='quiz';

$conn=mysqli_connect($host,$user,$pass) or die;
mysqli_select_db($conn,$db) or die ($conn_error);

?>

<html>
<head><title>Quiz</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min">
<style type="text/css">
#wrapper{
	width:950px;
	height:auto;
	padding:13px;
	margin-right:auto;
	margin-left:auto;
	background-color:#fff;
}
</style>
</head>

<body bgcolor="#elelel">

<div id='wrapper'>	

<h2><center><font face='Andalus' size='5'><b>Welcome to Quiz World</b></font></center></h2>

</html>

<form action="quizresults.php" method="post">
<?php

	$s="select * from questions order by rand() limit 5";
	$x=1;
	$query = mysqli_query($conn,$s);
	while ($rows = mysqli_fetch_array($query)) {
		
		?>
		
<?php echo $x;?>

<?php echo $rows['questions']	?>

<?php

$s="select * from answers where ansID='{$rows['qID']}' order by rand()";
$query1=mysqli_query($conn,$s);
$x++;
while ($rows = mysqli_fetch_array($query1)){
	?>
	
	<div class="radio">
	<input type="radio" name="quizcheck[<?php echo $rows['ansID'];?>" value="<?php echo $rows['aID'];?>">
	<?php echo $rows['answers']; ?>
	</div>
	
	<?php
}
	}
	
	?>
	</div>

	<div class="button">
	<button type="submit" class="btn btn-primary" >Submit Quiz</button>
	<a href="quizresults.php">
	</div>
	</form>
	
