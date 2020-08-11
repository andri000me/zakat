<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Master Kriteria</h3>
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
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-plus"></i> | Tambah Kriteria</button>
    <div class="row collapse" id="collapseExample">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Tambah Master Kriteria</h2>
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
            <form method="post" action="<?= base_url('admin/Kriteria/tambah_kriteria') ?>">
              <label for="fullname">Kode Kriteria * :</label>
              <select class="form-control" name="kd_kriteria" required>
                <option value="">-- Pilih Kode --</option>
                <option value="C1">C1</option>
                <option value="C2">C2</option>
                <option value="C3">C3</option>
                <option value="C4">C4</option>
                <option value="C5">C5</option>
              </select>
              <label for="fullname">Nama Kriteria * :</label>
              <input type="text" id="fullname" class="form-control" name="ket_kriteria" required />
              <br>
              <button type="submit" class="btn btn-info"><i class="fa fa-plus"></i> | Tambah Kriteria</button>

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
          <h2>Master Kriteria</h2>
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
                <th>Kode Kriteria</th>
                <th>Keterangan Kriteria</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <?php 
              $x=1;
              $no=1;
              foreach ($kriteria->result() as $row) :?>
                <tr>
                  <th scope="row"><?= $x++; ?></th>
                  <td><?= $row->kode_kriteria ?></td>
                  <td><?= $row->nama_kriteria ?></td>
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
foreach ($kriteria->result() as $row) { ?>

  <div class="modal fade bs-example-modal-sm<?= $y++; ?>" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <form method="post" action="<?= base_url('admin/kriteria/edit_kriteria/'.$row->id_kriteria) ?>">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
            </button>
            <h4 class="modal-title" id="myModalLabel2">Edit Data</h4>
          </div>
          <div class="modal-body">
            <label for="fullname">Kode Kriteria * :</label>
              <select class="form-control" name="kd_kriteria" required>
                <option value="">-- Pilih Kode --</option>
                <option <?php if ($row->kode_kriteria == 'C1') {
                  echo "selected";
                } ?> value="C1">C1</option>
                <option <?php if ($row->kode_kriteria == 'C2') {
                  echo "selected";
                } ?> value="C2">C2</option>
                <option <?php if ($row->kode_kriteria == 'C3') {
                  echo "selected";
                } ?> value="C3">C3</option>
                <option <?php if ($row->kode_kriteria == 'C4') {
                  echo "selected";
                } ?> value="C4">C4</option>
                <option <?php if ($row->kode_kriteria == 'C5') {
                  echo "selected";
                } ?> value="C5">C5</option>
              </select>
              <label for="fullname">Nama Kriteria * :</label>
              <input type="text" id="fullname" class="form-control" name="ket_kriteria" value="<?= $row->nama_kriteria ?>" />
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