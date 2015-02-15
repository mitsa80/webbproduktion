<?php

include_once("autoloader.php");

$cq = New ContentQueries("127.0.0.1","cms_example","root","mysql");

//get content we are searching for , else get all page content

if (isset($_REQUEST["search_param"])) {
  //get content we are searching for by title
  echo(json_encode($cq->searchForPages($_REQUEST["search_param"])));
} else {
  //get all content
  echo(json_encode($cq->getAllPages()));
}