
    <link rel="stylesheet" type="text/css" href="css/default.css">
	<link rel="stylesheet" type="text/css" href="css/styles.css">


<style>
	html 
	{
	  font-family: sans-serif;
	  -ms-text-size-adjust: 100%;
	  -webkit-text-size-adjust: 100%;
	}
	a
	{	

	}
	.save
	{
		font-size:22pt;
		font-weight:bolder;
		
		margin-left:40%;
		margin-top:40%;
	}
	.radio_sex
	{	
		margin-left:40%;
	}
	.show
	{

	
	}
	body 
	{
	background-image:url(back1.jpg);
	background-repeat: no-repeat;
	background-repeat: repeat-y; 
	background-position: center center; 
	
	}	
	
</style>

<?php


require_once 'ConnectionFactory.php';

try 
{
    $conn = ConnectionFactory::getFactory()->getConnection();
	$stmt = $conn->prepare('SELECT * from message');
	$stmt->execute();
    
    $result = $stmt->fetchAll(PDO::FETCH_CLASS);
    
    //echo json_encode($result, JSON_UNESCAPED_UNICODE);
    
	foreach ($result as $value) 
    {
        echo "<a class='save'> No.".$value->messid . "</a><br>";
		echo "<a class='save'> 日期 : ".$value->messdate . "</a><br>";
        echo "<a class='save'> 標題 : ".$value->title . "</a><br>";
        echo "<a class='save'> 留言 : ".$value->content . "</a><br><hr>";
	}
	
    $conn = null;
}
catch (PDOException $e) 
{
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}

			// echo "<a class='save'>No.".$rs['messid']."</a><br>";
			// echo "<a class='save'>date : ".$rs['messdate']."</a><br>";
			// echo "<a class='save'>title : ".$rs['title']."</a><br>";
			// echo "<a class='save'>".$rs['content']."</a><hr>";
	// }
	
									   
	 echo "<br><br><br> <a class='save'><a href='login.php' class='btn btn-5'>　登入   </a></a>";
	 echo"　　　　";
	 echo "<a href='home.html'  class='btn btn-5'>回首頁</a>";

?>