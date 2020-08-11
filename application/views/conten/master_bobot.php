<!-- page content -->
<div class="right_col" role="main">
	<div class="">
		<div class="page-title">
			<div class="title_left">
				<h3>Master Bobot</h3>
			</div>

			<div class="title_right">
				<div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search for...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">Go!</button>
						</span>
					</div>
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
		<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-plus"></i> | Tambah Bobot</button>
		<div class="row collapse" id="collapseExample">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Tambah Master Bobot</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Settings 1</a>
									</li>
									<li><a href="#">Settings 2</a>
									</li>
								</ul>
							</li>
							<li><a class="close-link"><i class="fa fa-close"></i></a>
							</li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<form method="post" action="<?= base_url('admin/bobot/tmbah_bobot') ?>">
							<label for="fullname">Intensitas Kepentingan * :</label>
							<input type="number" id="fullname" class="form-control" name="nilai_bobot" required />
							<label for="fullname">Keterangan * :</label>
							<input type="text" id="fullname" class="form-control" name="keterangan" required />
							<br>
							<button type="submit" class="btn btn-info"><i class="fa fa-plus"></i> | Tambah Bobot</button>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>Master Bobot</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a>
								</li>
								<li><a href="#">Settings 2</a>
								</li>
							</ul>
						</li>
						<li><a class="close-link"><i class="fa fa-close"></i></a>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>Bobot</th>
								<th>Keterangan</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<?php 
							$x=1;
							$no=1;
							foreach ($bobot->result() as $row) :?>
								<tr>
									<th scope="row"><?= $x++; ?></th>
									<td><?= $row->nominal_bobot ?></td>
									<td><?= $row->ket_bobot ?></td>
									<td>
										<button type="button" class="btn btn-warning" title="Edit Data" data-toggle="modal" data-target=".bs-example-modal-sm<?= $no++; ?>"><i class="fa fa-edit"></i></button>
									</td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<!-- /page content -->

<?php 
$y=1;
foreach ($bobot->result() as $row) { ?>
	
	<div class="modal fade bs-example-modal-sm<?= $y++; ?>" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<form method="post" action="<?= base_url('admin/bobot/edit_bobot/'.$row->id_bobot) ?>">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
						</button>
						<h4 class="modal-title" id="myModalLabel2">Edit Data</h4>
					</div>
					<div class="modal-body">
						<label for="fullname">Intensitas Kepentingan * :</label>
						<input type="number" id="fullname" class="form-control" name="nilai_bobot" value="<?= $row->nominal_bobot ?>" />
						<label for="fullname">Keterangan * :</label>
						<input type="text" id="fullname" class="form-control" name="keterangan" value="<?= $row->ket_bobot ?>" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<?php $no++;} ?>