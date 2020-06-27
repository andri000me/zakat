<div class="container">
	<h3 class="mt-4">Data Panitia</h3>
  <div class="row mt-3">

   <div class="card-columns">
   <?php 
   foreach ($panitia->result() as $row) { ?>
   	
   <div class="card">
    <img src="<?= base_url('assets/foto_panitia/'.$row->foto_panitia); ?>" class="card-img-top">
    <div class="card-body">
      <h5 class="card-title"><?= $row->nama_panitia; ?></h5>
      <p class="card-text">Jabatan : <?= $row->nama_jabatan ?></p>
      <p class="card-text">Alamat  : <?= $row->nama_alamat ?></p>
      <p class="card-text">Kontak  : <?= $row->kontak ?></p>
    </div>
   </div>  

  <?php } ?>



</div>

  </div>
</div>

<!-- assets/template_home/img/ubhara.png -->