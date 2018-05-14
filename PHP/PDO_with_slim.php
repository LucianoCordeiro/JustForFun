<?php

require_once("vendor/autoload.php");

use \Slim\Slim;

  $dbhost="127.0.0.1";
  $dbuser="root";
  $dbpassword="";
  $dbname="dbemployees";
  $dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpassword);
  $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


$app = new Slim();

$app->get('/', function () use ($dbh) {
  $stmt = $dbh->prepare("SELECT * FROM tb_employee");
  $stmt->execute();
  $results = $stmt->fetchAll();
});

$app->get('/:id', function ($id) use ($dbh) {
  $stmt = $dbh->prepare("SELECT * FROM tb_employee WHERE id = :ID");
  $stmt->bindParam(":ID", $id);
  $stmt->execute();
  $results = $stmt->fetchAll();
  echo json_encode($results);
});

$app->get('/:id/:name/:salary', function ($id, $name, $salary) use ($dbh) {
  $stmt = $dbh->prepare("INSERT INTO tb_employee (id, emp_name, emp_salary) VALUES (:ID, :NAME, :SALARY)");
  $stmt->bindParam(":ID", $id);
  $stmt->bindParam(":NAME", $name);
  $stmt->bindParam(":SALARY", $salary);
  $stmt->execute();
  echo "Alles gut";
});

$app->run();
