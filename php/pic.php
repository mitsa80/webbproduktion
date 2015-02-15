<?php

  if ($_FILES)
  {
    $name=$_FILES["image"]["name"];
	$tmp=$_FILES["image"]["tmp_name"];
    move_uploaded_file($name,$tmp);
  
   }
   
?>

<?php
/*
	if (is_uploaded_file($_FILES['image']['tmp_name'])==0){
	 
		$picName=$_FILES["image"]["name"];
		$targetPath= "imgs/" . $picName;
		$sourcePath=  . $_FILES["image"]["tmp_name"];
		$type=$_FILES['image']['type'];	
		$size=$_FILES['image']['size'];	
	}
	
    move_uploaded_file($sourcePath,$targetPath);
	
	
	$data=array("picnName"=>$picName,
				"targetPath"=>$targetPath,
				"sourcePath"=>$sourcePath,
				"size"=>$size,
				"type"=>$type
	           );
			   
	echo json_encode($data); 
	*/
?>

<?php
/*
$valid_formats = array("jpg","jpeg","JPG", "png", "gif", "bmp");
$max_file_size = 1024*1024*1024;
$dir = "img/";

// If File Submitted

if($_SERVER['REQUEST_METHOD'] == "POST"){

	$ext = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
	if ( in_array($ext, $valid_formats)) {
		if( $_FILES['file']['size'] < $max_file_size ){
			$uniq = base_convert(uniqid(), 16, 10);
			$tmp = $_FILES['file']['tmp_name'];
			$uniq_file_name = $uniq.".".$ext;
			if(move_uploaded_file($tmp, $dir.$uniq_file_name)){
				$query = mysql_query("INSERT INTO files (id, file) VALUES (null, '{$uniq_file_name}')");
				$msg = "Uploading successful!";
			}
			else{
				$msg = "Problem while moving file";
			}
		}
		else{
			$msg = "File is too large";
		}
	}
	else{
		$msg = "Worng file format";
	}
}
*/
?>
