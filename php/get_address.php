<?

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","cms_mt","root","mysql");

//get address 
  echo(json_encode($cq->getAddress()));

  
