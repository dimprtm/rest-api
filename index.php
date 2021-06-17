<?php
    include 'conn.php';

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
        $source = isset($_POST['source']) ? $_POST['source'] : "";
        $title = isset($_POST['title']) ? $_POST['title'] : "";
        $description = isset($_POST['description']) ? $_POST['description'] : "";
        $url = isset($_POST['url']) ? $_POST['url'] : "";
        $urlToImage = isset($_POST['urlToImage']) ? $_POST['urlToImage'] : "";

        $sql = "INSERT INTO `news`(`source`, `title`, `description`, `url`, `urlToImage`)
                VALUES ('".$source."', '".$title."', '".$description."', '".$url."', '".$urlToImage."')";
        $query = mysqli_query($conn, $sql);
        if ($query) {
            $msg = "Data berhasil disimpan!";
        } else {
            $msg = "Data gagal disimpan!";
        }
        $respone[] = array(
            'status' => 'OK',
            'message' => $msg,
        );
        echo json_encode($respone);
    } elseif ($_SERVER['REQUEST_METHOD'] == 'GET') {
        $sql = "SELECT * FROM news";
        $query = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($query)) {
            $result[] = array(
                'id'  => $row['id'],
                'source' => $row['source'],
                'title' => $row['title'],
                'description' => $row['description'],
                'url' => $row['url'],
                'url' => $row['urlToImage'],
            );
        }

        $respone[] = array(
            'status' => 'OK',
            'code' => 200,
            'articles' => $result
        );
        header("Content-type: application/json");
        echo json_encode($respone);
    }
    
?>