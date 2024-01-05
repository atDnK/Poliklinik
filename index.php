<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>POLIKLINIK</title>

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
    <div class="container-fluid flex flex-col justify-center items-center text-white p-5" style="height: 400px; background: #0B2447">
        <h1 class="font-weight-bold mb-3">Sistem Poliklinik BK</h1>
        <h5>
            "Memberikan Pelayanan Jadwal Janji Temu Antara Pasien dan Dokter"</h5>
    </div>
    <div class="container mt-5">
        <div class="row justify-content-lg-center">
            <div class="col-md-6">
                <div class="card" style="border: 2px solid  #2E4374">
                    <div class=" card-body flex justify-content-center items-center flex-col">
                        <i class=" fas fa-user fa-fw mb-3" style="font-size: 34px; color:  #2E4374"></i>
                        <p class="card-text text-center">Apabila anda adalah seorang Pasien, Silakan Login terlebih dahulu untuk
                            melakukan pendaftaran sebagai pasien</p>
                        <a href="loginPasien.php" class="btn btn-block" style="background-color: #2E4374; color: white;">Login Sebagai Pasien</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card" style="border: 2px solid  #2E4374">
                    <div class="card-body flex justify-content-center items-center flex-col">
                        <i class="fas fa-user-nurse fa-fw mb-3" style="font-size: 34px; color: #2E4374"></i>
                        <p class="card-text text-center">Apabila anda adalah seorang Dokter, silakan Login terlebih dahulu untuk
                            memulai melayani pasien</p>
                        <a href="login.php" class="btn btn-block" style="background-color: #2E4374; color: white;">Login Sebagai Dokter</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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