<?php
    include 'conn.php';

    $id = $_GET['id'];
    $sql = "DELETE FROM `news` WHERE `news`.`id` = '".$id."'";
    $query = mysqli_query($conn, $sql);
        if ($query) {
            $msg = "Data berhasil dihapus!";
        } else {
            $msg = "Data gagal dihapus!";
        }
        $respone[] = array(
            'status' => 'OK',
            'message' => $msg,
        );
        echo json_encode($respone);
?>