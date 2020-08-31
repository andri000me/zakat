<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Perhitungan SPK AHP</h3>
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
                        <h2>Perbandingan Alternatif</h2>
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

                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Kriteria</th>
                                    <th>Ghorim</th>
                                    <th>Budak</th>
                                    <th>Miskin</th>
                                    <th>Ibnu Sabil</th>
                                    <th>Mualaf</th>
                                </tr>
                            </thead>
                            <form method="post" action="<?= base_url('admin/perhitungan/tambah_kriteria') ?>">
                                <tbody>
                                    <!-- Ghorim -->
                                    <tr>
                                        <td>Ghorim</td>
                                        <td>
                                            <input type="number" class="form-control" id="C11" name="C11" readonly value="1">
                                        </td>
                                        <td>
                                            <select class="form-control" id="C12" name="C12">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" id="C13" name="C13">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" id="C14" name="C14">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" id="C15" name="C15">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                    </tr>
                                    <!-- End Ghorim -->

                                    <!-- Budak -->
                                    <tr>
                                        <td>Budak</td>
                                        <td>
                                            <input type="number" class="form-control" id="C21" name="C21" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C22" name="C22" readonly value="1">
                                        </td>
                                        <td>
                                            <select class="form-control" id="C23" name="C23">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" id="C24" name="C24">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" id="C25" name="C25">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                    </tr>
                                    <!-- End Budak -->

                                    <!-- Miskin -->
                                    <tr>
                                        <td>Miskin</td>
                                        <td>
                                            <input type="number" class="form-control" id="C31" name="C31" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C32" name="C32" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C33" name="C33" readonly value="1">
                                        </td>
                                        <td>
                                            <select class="form-control" id="C34" name="C34">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" id="C35" name="C35">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                    </tr>
                                    <!-- End Miskin -->

                                    <!-- Ibnu Sabil -->
                                    <tr>
                                        <td>Ibnu Sabil</td>
                                        <td>
                                            <input type="number" class="form-control" id="C41" name="C41" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C42" name="C42" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C43" name="C43" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C44" name="C44" readonly value="1">
                                        </td>
                                        <td>
                                            <select class="form-control" id="C45" name="C45">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                    </tr>
                                    <!-- End Ibnu Sabil -->

                                    <!-- Mualaf -->
                                    <tr>
                                        <td>Mualaf</td>
                                        <td>
                                            <input type="number" class="form-control" id="C51" name="C51" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C52" name="C52" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C53" name="C53" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C54" name="C54" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C55" name="C55" readonly value="1">
                                        </td>
                                    </tr>
                                    <!-- End Mualaf -->
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-calculator"></i>| Hitung</button>

                                </tbody>
                            </form>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->