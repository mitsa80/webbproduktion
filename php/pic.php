<?php
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
?>