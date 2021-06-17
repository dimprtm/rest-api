<?php
    include 'conn.php';

    $id = $_GET['id'];
    $source = isset($_POST['source']) ? $_POST['source'] : "";
    $title = isset($_POST['title']) ? $_POST['title'] : "";
    $description = isset($_POST['description']) ? $_POST['description'] : "";
    $url = isset($_POST['url']) ? $_POST['url'] : "";
    $urlToImage = isset($_POST['urlToImage']) ? $_POST['urlToImage'] : "";
    $sql = "UPDATE `news` SET `source` = '".$source."', `title` = '".$title."', `description` = '".$description."', `url` = '".$url."', `urlToImage` = '".$urlToImage."'
            WHERE `news`.`id` = '".$id."'";

    $query = mysqli_query($conn, $sql);
    if ($query) {
        $msg = "Data berhasil diupdate!";
    } else {
        $msg = "Data gagal diupdate!";
    }
    $respone[] = array(
        'status' => 'OK',
        'message' => $msg,
    );
    echo json_encode($respone);
    
?>