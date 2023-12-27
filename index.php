<!DOCTYPE html>
<html lang="en">

<?php
    session_start();
    $username = $_SESSION['username'];

    if ($username == "") {
        header("location:login.php");
    }
    // else if ($username != "Admin") {
    //     echo '<script>alert("Anda tidak memiliki akses");window.location.href="login.php";</script>';
    // }
?>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | Log in</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="assets/AdminLTE/plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/AdminLTE/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body class="hold-transition login-page">
    <div class="container-fluid bg-sky-600 flex flex-col justify-center items-center text-white p-5" style="height: 400px;">
        <h1 class="font-weight-bold mb-3">Poliklinik</h1>
        <h5>
            "Sehat Terbaik Dimulai di Sini: Poliklinik Kami, Pelayanan Berkualitas untuk Kesehatan Optimal Anda!"</h5>
    </div>
    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="assets/AdminLTE/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="assets/AdminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="assets/AdminLTE/dist/js/adminlte.min.js"></script>
</body>

</html>