<?php

$file = fopen("masques.txt", "w+");

$my_array = array("Hi there!", "My name is Luciano", "I am a programmer", "My favorite language is Ruby");

foreach ($my_array as $element) {
  fwrite($file, $element."<br>");
}

fclose($file);

$file = fopen("masques.txt", "r+");

while ($row = fgets($file)) {
  echo $row;
}


fclose($file);

echo "OK";

?>
