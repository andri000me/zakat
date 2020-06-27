<div class="right_col" role="main">
  <div class="flash-panitia" data-flashdata="<?= $this->session->flashdata('panitia') ?>"></div>
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Panitia</h3>
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
            <h2>Panitia Zakat</h2>
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
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg"><i class="fa fa-plus"></i> | Tambah Data</button>
            <table id="datatable" class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama</th>
                  <th>Jabatan</th>
                  <th>Alamat</th>
                  <th>Kontak</th>
                  <th>Aksi</th>
                </tr>
              </thead>


              <tbody>
                <?php
                $x = 1;
                $tampil = 1;
                $no = 1;
                foreach ($panitia->result() as $row) { ?>
                  <tr>
                    <td><?= $x++ ?></td>
                    <td><?= $row->nama_panitia ?></td>
                    <td><?= $row->nama_jabatan ?></td>
                    <td><?= $row->nama_alamat ?></td>
                    <td><?= $row->kontak ?></td>
                    <td>
                      <button type="button" class="btn btn-primary" title="Lihat Detail" data-toggle="modal" data-target=".bs-example-modal-smTampil<?= $tampil++; ?>"><i class="fa fa-bookmark"></i></button>
                      <button type="button" class="btn btn-warning" title="Edit Panitia" data-toggle="modal" data-target=".bs-example-modal-lgEdit<?= $no++; ?>"><i class="fa fa-edit"></i></button>
                      <a href="<?= base_url('admin/panitia/hapus_panitia/' . $row->id_panitia) ?>" class="btn btn-danger hapus-panitia"><i class="fa fa-trash"></i></a>
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

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <form method="post" action="<?php echo base_url('admin/panitia/tambah_data_panitia') ?>" enctype="multipart/form-data" accept-charset="utf-8">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
          </button>
          <h4 class="modal-title" id="myModalLabel">Tambah Data Panitia</h4>
        </div>
        <div class="modal-body">
          <label for="fullname">Nama Panitia * :</label>
          <input type="text" id="fullname" class="form-control" name="nama_panitia" required />

          <label for="fullname">Jabatan Panitia * :</label>
          <select class="form-control" name="jabatan" required="yes">
            <option value="">Pilih Jabatan</option>
            <?php
            foreach ($jabatan->result() as $row) { ?>
              <option value="<?= $row->id_jabatan ?>"><?= $row->nama_jabatan ?></option>
            <?php } ?>
          </select>

          <label for="fullname">Alamat Panitia * :</label>
          <select class="form-control" name="alamat" required="yes">
            <option value="">Pilih Alamat</option>
            <?php
            foreach ($alamat->result() as $row) { ?>
              <option value="<?= $row->id_alamat ?>"><?= $row->alamat ?></option>
            <?php } ?>
          </select>

          <label>Kontak Panitia * :</label>
          <input type="number" name="kontak" class="form-control" required>

          <label>Foto Panitia * :</label>
          <input type="file" name="filefoto" class="form-control">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Simpan</button>
        </div>
      </form>
    </div>
  </div>
</div>
<?php
$hadir = 1;
foreach ($panitia->result() as $row) { ?>

  <div class="modal fade bs-example-modal-smTampil<?= $hadir++; ?>" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
          </button>
          <h4 class="modal-title" id="myModalLabel">Foto Panitia</h4>
        </div>
        <div class="modal-body">
          <img width="100%" src="<?= base_url('assets/foto_panitia/' . $row->foto_panitia) ?>">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
<?php $tampil++;
} ?>

<?php
$y = 1;
foreach ($panitia->result() as $key => $value) {
  $jabatan_panitia = $value->jabatan_panitia;
  $alamat_panitia = $value->alamat;
?>

  <div class="modal fade bs-example-modal-lgEdit<?= $y++; ?>" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <form method="post" action="<?php echo base_url('admin/panitia/update_data_panitia/' . $value->id_panitia) ?>" enctype="multipart/form-data" accept-charset="utf-8">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel">Edit Data Panitia</h4>
          </div>
          <div class="modal-body">

            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
              <label>Nama Panitia * :</label>
              <input type="text" id="fullname" class="form-control" name="nama_panitia" value="<?= $value->nama_panitia ?>" />

              <label for="fullname">Jabatan Panitia * :</label>
              <select class="form-control" name="jabatan" required="yes">
                <option value="">Pilih Jabatan</option>
                <?php
                foreach ($jabatan->result() as $row) { ?>
                  <option <?php if ($jabatan_panitia == $row->id_jabatan) {
                            echo "selected";
                          } ?> value="<?php echo $row->id_jabatan ?>"><?php echo $row->nama_jabatan ?></option>
                <?php } ?>
              </select>

              <label for="fullname">Alamat Panitia * :</label>
              <select class="form-control" name="alamat" required="yes">
                <option value="">Pilih Alamat</option>
                <?php
                foreach ($alamat->result() as $row) { ?>
                  <option <?php if ($alamat_panitia == $row->id_alamat) {
                            echo "selected";
                          } ?> value="<?= $row->id_alamat ?>"><?= $row->alamat ?></option>
                <?php } ?>
              </select>

              <label>Kontak Panitia * :</label>
              <input type="number" name="kontak" class="form-control" value="<?= $value->kontak ?>">
            </div>

            <div class="col-md-6 col-sm-12 col-xs-12 form-group">
              <label>Foto Panitia * :</label>
              <br>
              <center><img width="26%" src="<?= base_url('assets/foto_panitia/' . $value->foto_panitia) ?>"></center>
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