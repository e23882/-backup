<title>送出問題</title>
<?php
require_once 'ConnectionFactory.php';
$dt=date("Y-m-d H:i:s");

	try
	{
		$conn = ConnectionFactory::getFactory()->getConnection();
		$stmt = $conn->prepare('insert into qa (date,title,content) values ("'.$dt.'","' . $_POST['title'] . '","' . $_POST['content'] . '") ');
		$stmt->execute();
		$result = $stmt->fetchAll(PDO::FETCH_CLASS);
		$conn = null;
	}
    

	catch (PDOException $e) 
	{
		echo "<div style='text-align:center; margin-top:15%;'>Q&A已儲存</div>";
		echo "<div style='text-align:center; margin-top:20%;'><a href='index.php' Style='text-decoration:none; '>回首頁</a></div>";
		
	}
?>

