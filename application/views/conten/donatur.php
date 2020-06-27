<div class="right_col" role="main">
  <div class="flash-donatur" data-flashdata='<?= $this->session->flashdata('donatur') ?>'></div>

  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Data Donatur</h3>
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
            <h2>Data Pemberi Donatur</h2>
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
            <button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-plus"></i> | Tambah Data</button>
            <table id="datatable" class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama Donatur</th>
                  <th>Nominal</th>
                  <th>Petugas</th>
                  <th>Action</th>

                </tr>
              </thead>


              <tbody>
                <?php
                $x = 1;
                $lihat = 1;
                $no = 1;
                foreach ($donatur->result() as $row) { ?>

                  <tr>
                    <td><?= $x++ ?></td>
                    <td><?= $row->nama_donatur; ?></td>
                    <td>Rp. <?= number_format($row->nominal); ?>,-</td>
                    <td><?= $row->petugas_penerima ?></td>
                    <td>
                      <button type="button" class="btn btn-primary" title="Lihat Gambar" data-toggle="modal" data-target=".bs-example-modal-lgTambah<?= $lihat++; ?>"><i class="fa fa-bookmark"></i></button>
                      <button type="button" class="btn btn-warning" title="Hapus Data" data-toggle="modal" data-target=".bs-example-modal-lg<?= $no++; ?>"><i class="fa fa-edit"></i></button>
                      <a href="<?= base_url('admin/donatur/hapus_donatur/' . $row->id_donatur) ?>" class="btn btn-danger hapus-donatur"><i class="fa fa-trash"></i></a>
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

<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <form method="post" action="<?php echo base_url('admin/donatur/tambah_data_donatur') ?>" enctype="multipart/form-data" accept-charset="utf-8">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
          </button>
          <h4 class="modal-title" id="myModalLabel2">Tambah Data Pemberi</h4>
        </div>
        <div class="modal-body">

          <label for="fullname">Nama Donatur * :</label>
          <input type="text" id="nama_donatur" class="form-control" name="nama_donatur" required />

          <label for="fullname">alamat Donatur * :</label>
          <input type="text" id="alamat_donatur" class="form-control" name="alamat_donatur" required />

          <label for="fullname">Bukti Penerimaan * :</label>
          <input type="file" id="bukti" class="form-control" name="filefoto" required />

          <label for="fullname">Nominal yang Diterima * :</label>
          <input type="number" id="nominal" class="form-control" name="nominal" required />

          <label for="fullname">Petugas Penerima * :</label>
          <input type="text" id="petugas" class="form-control" name="petugas" readonly="yes" value="<?= $lengkap ?>" />
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
$lihat2 = 1;
foreach ($donatur->result() as $row) {
  $bukti = $row->bukti_terima;
?>


  <div class="modal fade bs-example-modal-lgTambah<?= $lihat2++; ?>" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
          </button>
          <h4 class="modal-title" id="myModalLabel2">Lihat Data Bukti Penerimaan</h4>
        </div>
        <div class="modal-body">

          <img width="100%" style="align-content: center" src="<?= base_url('assets/bukti_penerima/' . $bukti) ?>">

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>

      </div>
    </div>
  </div>
<?php $lihat++;
} ?>

<?php
$y = 1;
foreach ($donatur->result() as $row) { ?>

  <div class="modal fade bs-example-modal-lg<?= $y++ ?>" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <form method="post" action="<?php echo base_url('admin/donatur/update_data_donatur/' . $row->id_donatur) ?>" enctype="multipart/form-data" accept-charset="utf-8">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel2">Edit Data Donatur</h4>
          </div>
          <div class="modal-body">

            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
              <label for="fullname">Nama Donatur * :</label>
              <input type="text" id="nama_donatur" class="form-control" name="nama_donatur" value="<?= $row->nama_donatur ?>" />

              <label for="fullname">alamat Donatur * :</label>
              <input type="text" id="alamat_donatur" class="form-control" name="alamat_donatur" value="<?= $row->alamat_donatur ?>" />

              <label for="fullname">Nominal yang Diterima * :</label>
              <input type="number" id="nominal" class="form-control" name="nominal" value="<?= $row->nominal ?>" />

              <label for="fullname">Petugas Penerima * :</label>
              <input type="text" id="petugas" class="form-control" name="petugas" readonly="yes" value="<?= $row->petugas_penerima ?>" />
            </div>

            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
              <label>Bukti Penerimaan * :</label>
              <br>
              <center><img width="26%" src="<?= base_url('assets/bukti_penerima/' . $row->bukti_terima) ?>"></center>
              <br>
              <input type="file" name="filefoto" class="form-control">
            </div>

          </div>
          <div class="modal-footer col-md-12 col-sm-12 col-xs-12">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Ubah</button>
          </div>
        </form>
      </div>
    </div>
  </div>
<?php $no++;
} ?>