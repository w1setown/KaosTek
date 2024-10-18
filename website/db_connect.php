<?php

$servername = "localhost";
$username = "root";
$password = "admin";
$dbname = "kaostek";

// Forbindelse
$conn = new mysqli($servername, $username, $password, $dbname);

// Tjekker forbindelsen
if ($conn->connect_error){
    die("Connection failed: " . $conn->connect_error);
}

?>