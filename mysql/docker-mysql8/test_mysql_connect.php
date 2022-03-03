<?php

$pdo = new \PDO("mysql:host=127.0.0.1;dbname=testdb", "testuser", "testpass");
$data = $pdo->query("select version()");
foreach($data as $item) {
    var_dump($item);
}

