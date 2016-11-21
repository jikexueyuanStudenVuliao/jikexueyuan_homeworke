
<?php
	header("Content-Type: application/json;charset=utf-8"); 
	  if ($_SERVER["REQUEST_METHOD"] == "GET") {
	search();
	} elseif ($_SERVER["REQUEST_METHOD"] == "POST"){
	postfun();
}
	function postfun(){


		$con = mysql_connect("localhost","root","");
		if (!$con)
	  	{
	  		die('Could not connect: ' . mysql_error());
	  	}else{

	  		  mysql_select_db("baidunews",$con);
	  	  mysql_query("set names utf8");

	  	}
		if(!isset($_POST["type"])||empty($_POST["type"])){

			echo '{"success":false,"msg":"POST参数错误"}';
		}else if ($_POST['type']=='add') {

			$sql = "INSERT INTO `jokes`( `newsTitle`, `newsContent`) VALUES ('".$_POST["newsTitle"]."','".$_POST["newsContent"]."')";
	
	  	
		}elseif ($_POST['type']=='remove') {

			$sql = "DELETE FROM `jokes` WHERE `newsId`=".$_POST["newsId"];
			

		}elseif ($_POST['type']=='modify') {
			$sql = "UPDATE `jokes` SET `newsTitle`='".$_POST["newsTitle"]."',`newsContent`='".$_POST["newsContent"]."' WHERE newsId ='".$_POST["newsId"]."'";
		}

		$result = mysql_query($sql,$con);
		if(!$result){
			die('Error:'.mysql_error());
		}else{
			echo '{"success":true,"msg":" 信息操作成功！"}';
		}
	}

	function search(){ 

		if (!isset($_GET["id"]) || empty($_GET["id"])) {
			echo "参数错误";
			return;
		}

		$number = $_GET["id"];
		$con = mysql_connect("localhost","root","");
		if (!$con)
	  	{
	  		die('Could not connect: ' . mysql_error());
	  	}else{
	  		
	  	  mysql_select_db("baidunews",$con);
	  	  mysql_query("set names utf8");
	  	  $sql = "select * from ".$number;
	  	  
	  	  
	  	   $result = mysql_query($sql,$con);
	  	 
	  	  $arr = array();
  	 
  	  while ($row = mysql_fetch_array($result)) {
  	  	array_push($arr,array("newsId"=>$row["newsId"],"newsTitle"=>$row["newsTitle"],"newsImg"=>$row["newsImg"],"newsContent"=>$row["newsContent"]));
  	  	// echo $row["newsTitle"];
  	  }
  	  $result = array("success"=>1,"result"=>$arr);
  	   echo json_encode( $result);

  }
mysql_close($con);

	}
 	// search();
?>




