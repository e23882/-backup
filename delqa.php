<meta name="viewport" content="width=device-width, initial-scale= 1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content=""text/html; charset=utf-8>
<title>刪除QA</title>
<?php
require_once 'ConnectionFactory.php';
	try
	{
		$conn = ConnectionFactory::getFactory()->getConnection();
		$stmt = $conn->prepare('delete from qa where id='.$_GET[id]);
		$stmt->execute();
		$result = $stmt->fetchAll(PDO::FETCH_CLASS);
		$conn = null;
	}
	catch (PDOException $e) 
	{
		header("Location:admin.php" ) ;
		
	}
?>

