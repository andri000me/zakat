<div class="right_col" role="main">
  <div class="flash-penerima" data-flashdata="<?= $this->session->flashdata('penerima') ?>"></div>
  <?php
    if($this->session->flashdata('gagal')==TRUE){ ?>
          <div class="flash-gagal" data-flashdata="<?= $this->session->flashdata('gagal') ?>"></div>
    <?php } ?>
    <?php
    if($this->session->flashdata('berhasil')==TRUE){ ?>
          <div class="flash-berhasil" data-flashdata="<?= $this->session->flashdata('berhasil') ?>"></div>
    <?php } ?>
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Data Penerima</h3>
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

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Data Penerima Zakat Fitrah</h2>
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
                      <button type="button" class="btn btn-success" data-toggle="modal" data-target=".bs-example-modal-smTambah"><i class="fa fa-plus"></i> | Tambah Data</button>
                      <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-smImport"><i class="fa fa-upload"></i> | Import Data</button>

                      <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th width="5%">No</th>
                          <th>Nama Penerima</th>
                          <th>Keterangan Penerima</th>
                          <th>Alamat</th>
                          <th>Koordinator</th>
                          <th width="12%">Action</th>
                        </tr>
                      </thead>


                      <tbody>
                      	<?php 
                      	$x=1;
                      	$no=1;
                      	foreach ($penerima->result() as $row) {?>
                        <tr>
                          <td><?php echo $x++; ?></td>
                          <td><?php echo $row->nama_penerima; ?></td>
                          <td><?php echo $row->nama_ket; ?></td>
                          <td><?php echo $row->alamat_koor; ?></td>
                          <td><?php echo $row->nama_koor; ?></td>
                          <td>
                          	<button type="button" class="btn btn-warning" title="Edit Data" data-toggle="modal" data-target=".bs-example-modal-smEdit<?php echo $no++; ?>"><i class="fa fa-edit"></i></button>
                          	<a class="btn btn-danger hapus-penerima" title="Hapus Data Penerima Zakat" href="<?php echo base_url('admin/penerima/hapus_data_penerima/'.$row->id_penerima) ?>"><i class="fa fa-trash"></i></a>
                          </td>
                        </tr>
                        <?php } ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

<div class="modal fade bs-example-modal-smTambah" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                      	<form method="post" action="<?php echo base_url('admin/Penerima/tambah_penerima') ?>">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Tambah Data</h4>
                        </div>
                        <div class="modal-body">
                          <label for="fullname">Nama Penerima * :</label>
                      	  <input type="text" id="fullname" class="form-control" name="nama_penerima" required />
                      	  <label for="fullname">Keterangan Penerima * :</label>
                      	  <select class="form-control" name="ket_penerima" required="yes">
                      	  	<option value="">Pilih Keterangan</option>
                      	  	<?php 
                      	  	foreach ($master_penerima->result() as $row) {?>
                      	  		<option value="<?php echo $row->id_ket_penerima ?>"><?php echo $row->nama_ket; ?></option>
                      	  	<?php } ?>
                      	  </select>
                      	  <label for="fullname">Koordinator Penanggung Jawab * :</label>
                      	  <select class="form-control" name="koor" required="yes">
                      	  	<option value="">Pilih Koordinator</option>
                      	  	<?php 
                      	  	foreach ($koor->result() as $row) {?>
                      	  		<option value="<?php echo $row->id_koor ?>"><?php echo $row->nama_koor; ?></option>
                      	  	<?php } ?>
                      	  </select>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                      </div>
                    </div>
                  </div>

<div class="modal fade bs-example-modal-smImport" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                        <form method="post" action="<?php echo base_url('admin/penerima/import') ?>" enctype="multipart/form-data" accept-charset="utf-8">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Import Data</h4>
                        </div>
                        <div class="modal-body">
                          <label for="fullname">Upload Data Penerima * :</label>
                          <input type="file" id="fullname" class="form-control" name="userfile" required />
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </form>
                      </div>
                    </div>
                  </div>

<?php 
$y=1;
foreach ($penerima->result() as $row) { 
	$penerima = $row->ket_penerima;
	$koordinator = $row->koordinator;
?>
	

<div class="modal fade bs-example-modal-smEdit<?php echo $y++; ?>" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-sm">
                      <div class="modal-content">
                      	<form method="post" action="<?php echo base_url('admin/penerima/update_data_penerima/'.$row->id_penerima) ?>">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel2">Edit Data <?php echo $row->nama_penerima; ?></h4>
                        </div>
                        <div class="modal-body">
                          <label for="fullname">Nama Penerima * :</label>
                      	  <input type="text" id="fullname" class="form-control" name="nama_penerima" required value="<?php echo $row->nama_penerima ?>" />

                      	  <label for="fullname">Keterangan Penerima * :</label>
                      	  <select class="form-control" name="ket_penerima">
                      	  	<option value="">Pilih Satu</option>
                      	  	<?php 
                      	  	foreach ($master_penerima->result() as $row) {?>
                      	  	<option <?php if ($penerima == $row->id_ket_penerima) { echo "selected";
                                        };?> value="<?php echo $row->id_ket_penerima; ?>"><?php echo $row->nama_ket; ?></option>
                      	  	<?php } ?>
                      	  </select>
                      	  <label for="fullname">Koordinator Penanggung Jawab * :</label>
                      	  <select class="form-control" name="koor">
                      	  	<option value="">Pilih Satu</option>
                      	  	<?php 
                      	  	foreach ($koor->result() as $row) {?>
                      	  	<option <?php if ($koordinator == $row->id_koor) { echo "selected";
                                        };?> value="<?php echo $row->id_koor; ?>"><?php echo $row->nama_koor; ?></option>
                      	  	<?php } ?>
                      	  </select>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="Submit" class="btn btn-warning"> Update</button>
                        </div>
                    	</form>
                      </div>
                    </div>
                  </div>
<?php $no++; } ?>