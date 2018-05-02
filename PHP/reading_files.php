<?php

$file = fopen("test.txt", "r");

while ($row = fgets($file)) {
  echo $row."<br>";
}

fclose($file);

?>
