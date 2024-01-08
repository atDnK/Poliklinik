<?php
include '../../config/koneksi.php';
session_start();

$id = $_GET['id'];
$status = $_GET['status'];

if ($status == '1') {
    $queryEdit = mysqli_query($mysqli, "UPDATE jadwal_periksa SET status = '0' WHERE id = '$id'");
    if ($queryEdit) {
        echo '<script>alert("Status berhasil diubah");window.location.href="../../tampilJadwal.php";</script>';
    } else {
        echo '<script>alert("Status gagal diubah");window.location.href="../../tampilJadwal.php";</script>';
    }
} else if ($status == '0') {
    $queryEdit = mysqli_query($mysqli, "UPDATE jadwal_periksa SET status = '1' WHERE id = '$id'");
    if ($queryEdit) {
        echo '<script>alert("Status berhasil diubah");window.location.href="../../tampilJadwal.php";</script>';
    } else {
        echo '<script>alert("Status gagal diubah");window.location.href="../../tampilJadwal.php";</script>';
    }
}
