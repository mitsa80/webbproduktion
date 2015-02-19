<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","cms_mt","root","mysql");

if (isset($_REQUEST["href"])) {
  echo(json_encode($cq->getpage($_REQUEST["href"])));
} 