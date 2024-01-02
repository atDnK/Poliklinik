<?php
session_start();
require '../../config/koneksi.php';


if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if ($username == "admin" && $password == "admin") {
        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;
        $_SESSION['akses'] = "admin";

        header("location:../../tampilDokter.php");
    } else {
        $query = "SELECT * FROM dokter WHERE nama = '$username' && password = '$password'";
        $result = mysqli_query($mysqli, $query);
        if (mysqli_num_rows($result) > 0) {
            $data = mysqli_fetch_assoc($result);

            $_SESSION['id'] = $data['id'];
            $_SESSION['username'] = $data['nama'];
            $_SESSION['password'] = $data['password'];
            $_SESSION['id_poli'] = $data['id_poli'];
            $_SESSION['akses'] = "dokter";

            header("location:../../tampilJadwal.php");
        } else {
            $queryPasien = "SELECT * FROM pasien WHERE nama = '$username' && password = '$password'";
            $resultPasien = mysqli_query($mysqli, $queryPasien);
            if (mysqli_num_rows($resultPasien) > 0) {
                $data = mysqli_fetch_assoc($resultPasien);

                $_SESSION['id'] = $data['id'];
                $_SESSION['username'] = $data['nama'];
                $_SESSION['password'] = $data['password'];
                $_SESSION['no_rm'] = $data['no_rm'];
                $_SESSION['akses'] = "pasien";

                header("location:../../tampilDaftarPoli.php");
            } else {
                echo '<script>alert("Email atau password salah");location.href="../../login.php";</script>';
            }
        }
    }
}
