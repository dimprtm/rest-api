<?php
    $server = "localhost";
    $username = "root";
    $password = "mysql";
    $database = "newsapi";

    $conn = mysqli_connect($server, $username, $password, $database);

    if (!$conn) {
        die("Koneksi Error!");
    }
?>