<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Data Penduduk</h3>
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
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-plus"></i> | Tambah Data</button>

    <button type="button" class="btn btn-warning" data-toggle="modal" data-target=".bs-example-modal-lgImport"><i class="fa fa-upload"></i> | Import Data</button>

    <div class="row collapse" id="collapseExample">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Tambah Data Penduduk</h2>
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
          <form action="<?= base_url('admin/penduduk/tambah_data_penduduk') ?>" method="POST">

          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 form-group">
              <label for="fullname">Nama Penduduk * :</label>
              <input type="text" id="nama" class="form-control" name="nama" required />
            </div>

            <div class="col-md-6 col-sm-6 col-xs-6 form-group">
              <label for="fullname">Pekerjaan * :</label>
              <input type="text" id="pekerjaan" class="form-control" name="pekerjaan" required />
            </div>
          </div>

          <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
              <label for="fullname">Penghasilan * :</label>
              <input type="number" id="penghasilan" class="form-control" name="penghasilan" required />
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
              <label for="fullname">Pengeluaran * :</label>
              <input type="number" id="pengeluaran" class="form-control" name="pengeluaran" required />
            </div>

            <div class="col-md-4 col-sm-4 col-xs-4 form-group">
              <label for="fullname">Hutang * :</label>
              <input type="number" id="hutang" class="form-control" name="hutang" required />
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6 form-group">
              <label for="fullname">Alamat * :</label>
              <input type="text" id="alamat" class="form-control" name="alamat" required />
            </div>

            <div class="col-md-6 col-sm-6 col-xs-6 form-group">
              <label for="fullname">Status Agama * :</label>
              <select name="status" id="status" class="form-control">
                <option value=""></option>
                <option value="1">Muslim</option>
                <option value="2">Mualaf</option>
              </select>
            </div>
          </div>
          <button type="submit" class="btn btn-danger"><i class="fa fa-plus"></i> | Tambah Data</button>
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
            <h2>Plain Page</h2>
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
            
          <?php
            if ($this->session->flashdata('gagal') == TRUE) { ?>
                <div class="alert alert-danger">
                    <?php echo $this->session->flashdata('gagal') ?>
                </div>
            <?php } ?>
            <?php
            if ($this->session->flashdata('berhasil') == TRUE) { ?>
                <div class="alert alert-success">
                    <?php echo $this->session->flashdata('berhasil') ?>
                </div>
          <?php } ?>
            
          <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>No</th>
                          <th>Nama</th>
                          <th>Pekerjaan</th>
                          <th>Penghasilan</th>
                          <th>Pengeluaran</th>
                          <th>Hutang</th>
                          <th>Alamat</th>
                          <th>Status Agama</th>
                          <th>Action</th>
                        </tr>
                      </thead>


                      <tbody>
                      <?php 
                      $x=1;
                      $no=1;
                      foreach ($penduduk->result() as $row) { ?>
                        <tr>
                          <td><?= $x++; ?></td>
                          <td><?= $row->nama_penduduk; ?></td>
                          <td><?= $row->profesi ?></td>
                          <td><?= number_format($row->penghasilan) ?></td>
                          <td><?= number_format($row->pengeluaran) ?></td>
                          <td><?= number_format($row->hutang) ?></td>
                          <td><?= $row->alamat ?></td>
                          <td><?php if ($row->status_agama == '1') {
                            echo "Muslim";
                          }else {
                            echo "Mualaf";
                          } ?></td>
                          <td>
                          <button type="button" class="btn btn-warning" data-toggle="modal" data-target=".bs-example-modal-lg<?= $no++; ?>"><i class="fa fa-edit"></i></button>
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
        <!-- /page content -->
<?php 
$y=1;
foreach ($penduduk->result() as $row) { ?>
  
        <div class="modal fade bs-example-modal-lg<?= $y++; ?>" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                        </div>
                        <div class="modal-body">
                        <div class="row">
                          <div class="col-md-6 col-sm-6 col-xs-6 form-group">
                            <label for="fullname">Nama Penduduk * :</label>
                            <input type="text" id="nama" class="form-control" name="nama" value="<?= $row->nama_penduduk ?>" />
                          </div>

                          <div class="col-md-6 col-sm-6 col-xs-6 form-group">
                            <label for="fullname">Pekerjaan * :</label>
                            <input type="text" id="pekerjaan" class="form-control" name="pekerjaan" value="<?= $row->profesi ?>" />
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                            <label for="fullname">Penghasilan * :</label>
                            <input type="number" id="penghasilan" class="form-control" name="penghasilan" value="<?= $row->penghasilan ?>" >
                          </div>

                          <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                            <label for="fullname">Pengeluaran * :</label>
                            <input type="number" id="pengeluaran" class="form-control" name="pengeluaran" value="<?= $row->pengeluaran ?>" />
                          </div>

                          <div class="col-md-4 col-sm-4 col-xs-4 form-group">
                            <label for="fullname">Hutang * :</label>
                            <input type="number" id="hutang" class="form-control" name="hutang" value="<?= $row->hutang ?>" />
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-md-6 col-sm-6 col-xs-6 form-group">
                            <label for="fullname">Alamat * :</label>
                            <input type="text" id="alamat" class="form-control" name="alamat" value="<?= $row->alamat ?>" />
                          </div>

                          <div class="col-md-6 col-sm-6 col-xs-6 form-group">
                            <label for="fullname">Status Agama * :</label>
                            <select name="status" id="status" class="form-control">
                              <option value=""></option>
                              <option <?php if ($row->status_agama == '1') {
                                echo "selected";
                              } ?> value="1">Muslim</option>
                              <option <?php if ($row->status_agama == '2') {
                                echo "selected";
                              } ?> value="2">Mualaf</option>
                            </select>
                          </div>
                        </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <?php $no++;} ?>

<!-- Import Data -->
<div class="modal fade bs-example-modal-lgImport" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                      <div class="modal-content">
                        <form action="<?= base_url('admin/penduduk/import_penduduk') ?>" method="post" enctype="multipart/form-data" accept-charset="utf-8">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                          </button>
                          <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                        </div>
                        <div class="modal-body">
                        <label for="import">Import File</label>
                        <input type="file" class="form-control" name="userfile" required />
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                          <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                        </form>
                      </div>
                    </div>
                  </div>