<?php

    function getKey() {
        return ["1234", "rahasia", "xyz"];
    }

    function isValid($input) {
        $apikey = $input["api_key"];
        if (in_array($apikey, getKey())) {
            return true;
        } else {
            return false;
        }
    }

    function jsonOut($status, $message, $data) {
        $respon = ["status" => $status, "message" => $message, "data" => $data];
    
        header("Content-type: application/json");
        echo json_encode($respon);
    }
    
    function getNewsData() {
        require_once('conn.php');
        $sql = "SELECT * FROM news";
        $query = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($query)) {
            $result[] = array(
                'id' => $row['id'],
                'source' => $row['source'],
                'title' => $row['title'],
                'description' => $row['description'],
                'url' => $row['url'],
                'url' => $row['urlToImage'],
            );
        }
        return $result;
    }
    
    if (isValid($_GET)) {
        jsonOut("berhasil", "apikey valid", getNewsData());
    } else {
        jsonOut("gagal", "apikey not valid!!!", null);
    }
?>