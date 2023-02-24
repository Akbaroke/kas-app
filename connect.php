<?php
require __DIR__ . '/vendor/autoload.php';
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$servername = "localhost";
$database = "kas-app";
$username = $_ENV['DB_USER'];
$password = $_ENV['DB_PASS'];
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);