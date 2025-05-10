<?php

require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

$tempat_kebudayaan = "SELECT * FROM tempat_kebudayaan ORDER BY id_tempat_kebudayaan DESC";
$count_tempat_kebudayaan = mysqli_query($conn, $tempat_kebudayaan);
$video = "SELECT * FROM video ORDER BY id_video DESC";
$count_video = mysqli_query($conn, $video);
$kontak = "SELECT * FROM kontak ORDER BY id_kontak DESC";
$count_kontak = mysqli_query($conn, $kontak);
