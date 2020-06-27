<!DOCTYPE html>
<html>
<head>
	<title><?= $title; ?></title>

	<link rel="stylesheet" href="<?= base_url(); ?>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/css/jquery.dataTables.css'?>">

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
  	<div class="container">
  <a class="navbar-brand" href="#"><h3>MABES NURANI</h3> </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item ">
        <a class="nav-link" href="<?= base_url() ?>">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?= base_url('donatur') ?>">Data Penerima</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?= base_url('Panitia') ?>">Data Panitia</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?= base_url('login') ?>">Login</a>
      </li>
    </ul>
  </div>
  </div>
</nav>

<div class="container">
	<div class="row">
		<div class="col-md-12 mt-3">
			

			<h3>Data Penerima Zakat</h3>

			<table class="table" id="dataTables-example">
				<thead>
					<tr>
						<th>#</th>
						<th>Nama Penerima</th>
						<th>Kategori Penerima</th>
						<th>Penanggung Jawab</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$x=1;
					foreach ($penerima->result() as $p) { ?>
						<tr>
						<th><?=  $x++; ?></th>
						<td><?= $p->nama_penerima; ?></td>
						<td><?= $p->nama_ket; ?></td>
						<td><?= $p->nama_koor ?></td>
					</tr>
					<?php } ?>
				</tbody>
			</table>			
		</div>
	</div>
</div>

<script src="<?= base_url(); ?>/assets/js/jquery-3.3.1.slim.min.js"></script>
<script src="<?= base_url(); ?>/assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url().'assets/js/jquery.dataTables.js'?>"></script>

<script src="<?= base_url(); ?>/assets/js/sweetalert2.all.min.js"></script>
<script src="<?= base_url(); ?>/assets/js/myscript.js"></script>
<!-- <script src="<?= base_url(); ?>/assets/js/sekolah.js"></script> -->
<script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable({
                    "searching" : true,
                    "lengthChange": true,
                    "ordering": true, 
                });
            });
    </script>
</body>
</html>