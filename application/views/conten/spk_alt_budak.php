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
                                    <th>Budak</th>
                                    <th>Fakir</th>
                                    <th>Sabil</th>
                                    <th>Amil</th>
                                </tr>
                            </thead>
                            <form method="post" action="<?= base_url('admin/perhitungan/tambah_alt_budak') ?>">
                                <tbody>

                                    <!-- Fakir -->
                                    <tr>
                                        <td>Fakir</td>
                                        <td>
                                            <input type="number" class="form-control" id="C33" name="B11" readonly value="1">
                                        </td>
                                        <td>
                                            <select class="form-control" id="C34" name="B12">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" id="C35" name="B13">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                    </tr>
                                    <!-- End Fakir -->

                                    <!-- Sabil -->
                                    <tr>
                                        <td>Sabil</td>
                                        <td>
                                            <input type="number" class="form-control" id="C43" name="B21" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C44" name="B22" readonly value="1">
                                        </td>
                                        <td>
                                            <select class="form-control" id="C45" name="B23">
                                                <option value="">0</option>
                                                <?php
                                                foreach ($bobot->result() as $row) { ?>
                                                    <option value="<?= $row->nominal_bobot ?>"><?= $row->nominal_bobot ?></option>
                                                <?php } ?>
                                            </select>
                                        </td>
                                    </tr>
                                    <!-- End Sabil -->

                                    <!-- Amil -->
                                    <tr>
                                        <td>Amil</td>
                                        <td>
                                            <input type="number" class="form-control" id="C53" name="B31" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C54" name="B32" readonly value="0">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" id="C55" name="B33" readonly value="1">
                                        </td>
                                    </tr>
                                    <!-- End Amil -->
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