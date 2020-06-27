

<div class="container">
<h3 class="mt-4">Rekap Semuanya</h3>
  <div class="row mt-3">

   <div class="card col-md-6" style="max-width: 540px;">
	<div class="row no-gutters">
		<div class="col-md-4">
			<img class="home" src="assets/template_home/img/beras.png" >
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h5 class="card-title">Zakat Fitrah</h5>
				<h3><strong>
					<?php 
					foreach ($beras_fitrah->result() as $row) {
						$total = $row->total_beras;
					if ($total == null) {
						echo "Tidak Ada Data";
					}else{
						echo number_format($total,2).' Kg' ;	
					}
					}
					?>
					</strong> </h3>
				<p class="card-text">Jumlah Zakat Fitrah Sampai Saat ini <br><?= date('d-m-Y'); ?></p>
			</div>
		</div>
	</div>
</div>

&nbsp;&nbsp;&nbsp;
<div class="card col-md-6" style="max-width: 540px;">
	<div class="row no-gutters">
		<div class="col-md-4">
			<img class="home" src="assets/template_home/img/maal.png" >
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h5 class="card-title">Zakat Maal, Infaq/Shodaqoh, Partisipasi Sosial, dan Fidyah</h5>
				<h3><strong>
					<?php 
					foreach ($zakat_maal->result() as $row) {
						$total_maal = $row->total_maal;
					
					if ($total_maal == null) {
						echo "Tidak Ada Data";
					}else {
						echo "Rp. ".number_format($total_maal).",-";	
					} 
					}
					?>
				</strong></h3>
				<p class="card-text">Jumlah Sampai Saat ini <br><?= date('d-m-Y'); ?></p>
			</div>
		</div>
	</div>
</div>

&nbsp;&nbsp;&nbsp;
<div class="card col-md-6" style="max-width: 540px;">
	<div class="row no-gutters">
		<div class="col-md-4">
			<img class="home" src="assets/template_home/img/user.png" >
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h5 class="card-title">Jumlah Pemberi Zakat Fitrah</h5>
				<h3><strong>
					<?php 
					if ($fitrah == null) {
						echo "Tidak Ada Data";
					}else{
						echo $fitrah. " Orang";
					}
					?>
				</strong></h3>
				<p class="card-text">Pemberi Zakat Fitrah sampai Tanggal <br><?= date('d-m-Y'); ?></p>
			</div>
		</div>
	</div>
</div>

&nbsp;&nbsp;&nbsp;
<div class="card col-md-6" style="max-width: 540px;">
	<div class="row no-gutters">
		<div class="col-md-4">
			<img class="home" src="assets/template_home/img/user.png" >
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h5 class="card-title">Jumlah PemberiZakat Maal, Infaq/Shodaqoh, Partisipasi Sosial, dan Fidyah</h5>
				<h3><strong>
					<?php 
				if ($maal == null) {
					echo "Tidak Ada Data";
				}else{
					echo $maal. " Orang";
				}
				?>
				</strong></h3>
				<p class="card-text">Pemberi sampai Tanggal <br><?= date('d-m-Y'); ?></p>
			</div>
		</div>
	</div>
</div>

&nbsp;&nbsp;&nbsp;
<div class="card col-md-6" style="max-width: 540px;">
	<div class="row no-gutters">
		<div class="col-md-4">
			<img class="home" src="assets/template_home/img/user.png" >
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h5 class="card-title">Jumlah Pemberi Donatur</h5>
				<h3><strong>
					<?php 
					if ($donatur == null) {
						echo "Tidak Ada Data";
					}else{
						echo $donatur. " Orang";
					}
					?>
				</strong></h3>
				<p class="card-text">Pemberi Donatur sampai Tanggal <br><?= date('d-m-Y'); ?></p>
			</div>
		</div>
	</div>
</div>

&nbsp;&nbsp;&nbsp;
<div class="card col-md-6" style="max-width: 540px;">
	<div class="row no-gutters">
		<div class="col-md-4">
			<img class="home" src="assets/template_home/img/maal.png" >
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h5 class="card-title">Jumlah Nominal Dari Donatur</h5>
				<h3><strong>
					<?php 
				foreach ($nominal->result() as $key => $value) {
				
				if ($value->total == null) {
					echo "Tidak Ada Data";
				}else{
					echo "Rp. ".number_format($value->total).",-";
				}
				}
				?>
				</strong></h3>
				<p class="card-text">Jumlah sampai Tanggal <br><?= date('d-m-Y'); ?></p>
			</div>
		</div>
	</div>
</div>

  </div>


</div>

<!-- assets/template_home/img/ubhara.png -->