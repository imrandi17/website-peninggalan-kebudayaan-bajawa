<?php
require_once("../config/Base.php");
require_once("../config/Auth.php");
require_once("../config/Alert.php");

// Fetch jenis kebudayaan
$sql_jenis_kebudayaan = mysqli_query($conn, "SELECT * FROM jenis_kebudayaan ORDER BY jenis_kebudayaan ASC");
$view_jenis_kebudayaan = [];
while ($row = mysqli_fetch_array($sql_jenis_kebudayaan)) {
  $view_jenis_kebudayaan[] = $row;
}

// Fetch kebudayaan with join to get jenis_kebudayaan name
$sql_kebudayaan = mysqli_query($conn, "SELECT k.*, jk.jenis_kebudayaan 
                                      FROM kebudayaan k 
                                      JOIN jenis_kebudayaan jk ON k.id_jenis_kebudayaan = jk.id_jenis_kebudayaan 
                                      ORDER BY k.id_kebudayaan DESC");
$view_kebudayaan = [];
while ($row = mysqli_fetch_array($sql_kebudayaan)) {
  $view_kebudayaan[] = $row;
}

// Add kebudayaan
if (isset($_POST['add_kebudayaan'])) {
  $id_jenis_kebudayaan = $_POST['id_jenis_kebudayaan'];
  $nama_kebudayaan = $_POST['nama_kebudayaan'];
  $deskripsi = $_POST['deskripsi'];
  $author = $_POST['author'];
  
  // Image processing
  $filename = $_FILES['image_kebudayaan']['name'];
  $temp_file = $_FILES['image_kebudayaan']['tmp_name'];
  
  // Generate unique filename to avoid overwriting
  $extension = pathinfo($filename, PATHINFO_EXTENSION);
  $new_filename = 'kebudayaan_' . time() . '.' . $extension;
  
  // Move uploaded file
  $upload_path = '../assets/img/kebudayaan/';
  move_uploaded_file($temp_file, $upload_path . $new_filename);
  
  // Insert into database
  $sql = "INSERT INTO kebudayaan (id_jenis_kebudayaan, nama_kebudayaan, image_kebudayaan, deskripsi, author) 
          VALUES ('$id_jenis_kebudayaan', '$nama_kebudayaan', '$new_filename', '$deskripsi', '$author')";
  
  if (mysqli_query($conn, $sql)) {
    echo "<script>alert('Berhasil menambahkan kebudayaan!'); window.location='jenis-kebudayaan';</script>";
  } else {
    echo "<script>alert('Gagal menambahkan kebudayaan: " . mysqli_error($conn) . "');</script>";
  }
}

// Edit kebudayaan
if (isset($_POST['edit_kebudayaan'])) {
  $id_kebudayaan = $_POST['id_kebudayaan'];
  $id_jenis_kebudayaan = $_POST['id_jenis_kebudayaan'];
  $nama_kebudayaan = $_POST['nama_kebudayaan'];
  $deskripsi = $_POST['deskripsi'];
  $image_kebudayaanOld = $_POST['image_kebudayaanOld'];
  
  // Check if a new image was uploaded
  if ($_FILES['image_kebudayaan']['error'] == 0) {
    // Process new image
    $filename = $_FILES['image_kebudayaan']['name'];
    $temp_file = $_FILES['image_kebudayaan']['tmp_name'];
    
    // Generate unique filename
    $extension = pathinfo($filename, PATHINFO_EXTENSION);
    $new_filename = 'kebudayaan_' . time() . '.' . $extension;
    
    // Move uploaded file
    $upload_path = '../assets/img/kebudayaan/';
    move_uploaded_file($temp_file, $upload_path . $new_filename);
    
    // Delete old image if it exists
    if (file_exists($upload_path . $image_kebudayaanOld)) {
      unlink($upload_path . $image_kebudayaanOld);
    }
  } else {
    // Keep old image
    $new_filename = $image_kebudayaanOld;
  }
  
  // Update database
  $sql = "UPDATE kebudayaan SET 
          id_jenis_kebudayaan = '$id_jenis_kebudayaan', 
          nama_kebudayaan = '$nama_kebudayaan', 
          image_kebudayaan = '$new_filename', 
          deskripsi = '$deskripsi' 
          WHERE id_kebudayaan = '$id_kebudayaan'";
  
  if (mysqli_query($conn, $sql)) {
    echo "<script>alert('Berhasil mengubah kebudayaan!'); window.location='jenis-kebudayaan';</script>";
  } else {
    echo "<script>alert('Gagal mengubah kebudayaan: " . mysqli_error($conn) . "');</script>";
  }
}

// Delete kebudayaan
if (isset($_POST['delete_kebudayaan'])) {
  $id_kebudayaan = $_POST['id_kebudayaan'];
  $image_kebudayaan = $_POST['image_kebudayaan'];
  
  // Delete image file
  $upload_path = '../assets/img/kebudayaan/';
  if (file_exists($upload_path . $image_kebudayaan)) {
    unlink($upload_path . $image_kebudayaan);
  }
  
  // Delete from database
  $sql = "DELETE FROM kebudayaan WHERE id_kebudayaan = '$id_kebudayaan'";
  
  if (mysqli_query($conn, $sql)) {
    echo "<script>alert('Berhasil menghapus kebudayaan!'); window.location='jenis-kebudayaan';</script>";
  } else {
    echo "<script>alert('Gagal menghapus kebudayaan: " . mysqli_error($conn) . "');</script>";
  }
}
?>