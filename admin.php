<meta name="viewport" content="width=device-width, initial-scale= 1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="Content-Type" content=""text/html; charset=utf-8>
<?php

require_once 'ConnectionFactory.php';

try 
{
    $conn = ConnectionFactory::getFactory()->getConnection();
	$stmt = $conn->prepare('SELECT * from message');
	$stmt->execute();
    
    $result = $stmt->fetchAll(PDO::FETCH_CLASS);
    
    //echo json_encode($result, JSON_UNESCAPED_UNICODE);
    echo "<a href='index.php' style='margin-right:10%;margin-left:10%;'>首頁</a><a href='QA.php'  style='margin-right:10%;'>新增問題</a><a href='allqa.php' style='margin-right:10%;'>管理問題</a><a href='http://panel.byethost.com/index.php' style='margin-right:10%;'>VPS</a><br><hr>";
	
	foreach ($result as $value) 
    {
        echo " No.".$value->id . "<br>";
		echo " 日期 : ".$value->date . "<br>";
        echo " 標題 : ".$value->title . "<br>";
        echo " 姓名 : ".$value->name . "<br>";
		echo " 留言 : ".$value->message . "<br>";
		echo " IP : ".$value->ip . "<br>";
		echo " 信箱 電話 : ".$value->mail . "<br>";
        echo "<br><a href='del.php?id=".$value->id ."'>刪除留言</a></a><hr>";
        		 
	}
	
    $conn = null;
}
catch (PDOException $e) 
{
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

									   

	
    
?>
	

	
		

	

