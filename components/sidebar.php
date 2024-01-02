  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="#" class="brand-link">
          <img src="assets/AdminLTE/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
          <span class="brand-text font-weight-light">POLIKLINIK</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
          <!-- Sidebar user panel (optional) -->
          <div class="user-panel mt-3 pb-3 mb-3 d-flex">
              <div class="image">
                  <img src="assets/AdminLTE/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
              </div>
              <div class="info">
                  <a href="#" class="d-block"><?php echo $username ?></a>
              </div>
          </div>

          <!-- SidebarSearch Form -->
          <!-- <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div> -->

          <!-- Sidebar Menu -->
          <nav class="mt-2">
              <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                  <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                  <?php
                    if ($_SESSION['akses'] == "admin") {
                        echo '<li class="nav-item menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-th "></i>
                                <p>
                                    Dashboard
                                    <!-- <i class="right fas fa-angle-left fa-solid"></i> -->
                                    <span class="right badge badge-success">Admin</span>
                                </p>
                            </a> 
                            <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="tampilDokter.php" class="nav-link">
                                    <i class="fas fa-solid fa-user-nurse nav-icon"></i>
                                    <p>
                                        Dokter
                                        <span class="right badge badge-success">Admin</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="tampilPoli.php" class="nav-link">
                                    <i class="fas fa-solid fa-hospital nav-icon"></i>
                                    <p>
                                        Poli
                                        <span class="right badge badge-success">Admin</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="tampilObat.php" class="nav-link">
                                    <i class="fas fa-solid fa-pills nav-icon"></i>
                                    <p>
                                        Obat
                                        <span class="right badge badge-success">Admin</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="tampilPasien.php" class="nav-link">
                                    <i class="fas fa-solid fa-user nav-icon"></i>
                                    <p>
                                        Pasien
                                        <span class="right badge badge-success">Admin</span>
                                    </p>
                                </a>
                            </li>
                        </ul> 
                        </li>
                        <li class="nav-item">
                            <a href="pages/logout/logout.php" class="nav-link">
                                <i class="nav-icon fas fa-power-off"></i>
                                <p>
                                    Logout
                                </p>
                            </a>
                        </li>';
                    } else if ($_SESSION['akses'] == "dokter") {
                        echo '<li class="nav-item menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-th "></i>
                                <p>
                                    Dashboard
                                    <!-- <i class="right fas fa-angle-left fa-solid"></i> -->
                                    <span class="right badge badge-warning">Dokter</span>
                                </p>
                            </a> 
                            <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="tampilJadwal.php" class="nav-link">
                                    <i class="fas fa-solid fa-notes-medical nav-icon"></i>
                                    <p>
                                        Jadwal Periksa
                                        <span class="right badge badge-warning">Dokter</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="tampilPeriksa.php" class="nav-link">
                                    <i class="fas fa-solid fa-stethoscope nav-icon"></i>
                                    <p>
                                        Periksa Pasien
                                        <span class="right badge badge-warning">Dokter</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="tampilRiwayat.php" class="nav-link">
                                    <i class="fas fa-solid fa-receipt nav-icon"></i>
                                    <p>
                                        Riwayat Pasien
                                        <span class="right badge badge-warning">Dokter</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="tampilProfil.php" class="nav-link">
                                    <i class="fas fa-solid fa-user nav-icon"></i>
                                    <p>
                                        Profile
                                        <span class="right badge badge-warning">Dokter</span>
                                    </p>
                                </a>
                            </li>
                        </ul> 
                        </li>
                        <li class="nav-item">
                            <a href="pages/logout/logout.php" class="nav-link">
                                <i class="nav-icon fas fa-power-off"></i>
                                <p>
                                    Logout
                                </p>
                            </a>
                        </li>';
                    } else if ($_SESSION['akses'] == "pasien") {
                        echo '<li class="nav-item menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-th "></i>
                                <p>
                                    Dashboard
                                    <!-- <i class="right fas fa-angle-left fa-solid"></i> -->
                                    <span class="right badge badge-warning">Pasien</span>
                                </p>
                            </a> 
                            <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="tampilDaftarPoli.php" class="nav-link">
                                    <i class="fas fa-solid fa-stethoscope nav-icon"></i>
                                    <p>
                                        Poli
                                        <span class="right badge badge-warning">Pasien</span>
                                    </p>
                                </a>
                            </li>
                            <li class="nav-item">
                            <a href="pages/logout/logout.php" class="nav-link">
                                <i class="nav-icon fas fa-power-off"></i>
                                <p>
                                    Logout
                                </p>
                            </a>
                        </li>';
                    }
                    ?>
              </ul>
          </nav>
          <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
  </aside>