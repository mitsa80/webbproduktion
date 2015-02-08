<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","cms_example","root","mysql");

if (isset($_REQUEST["href"])) {
  echo(json_encode($cq->getpage($_REQUEST["href"])));
} 