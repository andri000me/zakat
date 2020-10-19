<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Hasil Perhitungan SPK AHP</h3>
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
                        <h2>Hasil Perbandingan Alternatif dengan Kriteria Ibnu Sabil</h2>
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
                                    <th><strong>IBNU SABIL</strong></th>
                                    <th>Fakir</th>
                                    <th>Sabil</th>
                                    <th>Amil</th>
                                </tr>
                            </thead>
                            <?php foreach ($ibnu_sabil->result() as $row) :
                                $IS11 = $row->IS11;
                                $IS12 = $row->IS12;
                                $IS13 = $row->IS13;
                                $IS21 = $row->IS21;
                                $IS22 = $row->IS22;
                                $IS23 = $row->IS23;
                                $IS31 = $row->IS31;
                                $IS32 = $row->IS32;
                                $IS33 = $row->IS33;
                                $jumlah1 = $IS11 + $IS21 + $IS31;
                                $jumlah2 = $IS12 + $IS22 + $IS32;
                                $jumlah3 = $IS13 + $IS23 + $IS33;
                            ?>
                                <tbody>
                                    <tr>
                                        <th scope="row">Fakir</th>
                                        <td><?= $IS11 ?></td>
                                        <td><?= $IS12 ?></td>
                                        <td><?= $IS13 ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
                                        <td><?= round($IS21, 3) ?></td>
                                        <td><?= round($IS22, 3) ?></td>
                                        <td><?= round($IS23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Amil</th>
                                        <td><?= round($IS31, 3) ?></td>
                                        <td><?= round($IS32, 3) ?></td>
                                        <td><?= round($IS33, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <td><b>Jumlah</b> </td>
                                        <td><?= round($jumlah1, 3) ?></td>
                                        <td><?= round($jumlah2, 3) ?></td>
                                        <td><?= round($jumlah3, 3) ?></td>
                                    </tr>
                                </tbody>
                            <?php endforeach; ?>
                        </table>

                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th colspan="3">
                                        <center>Nilai Eigan</center>
                                    </th>
                                    <th>Jumlah</th>
                                    <th>Rata - Rata</th>
                                </tr>
                            </thead>
                            <?php
                            $eigan11 = $IS11 / $jumlah1;
                            $eigan12 = $IS12 / $jumlah2;
                            $eigan13 = $IS13 / $jumlah3;

                            $eigan21 = $IS21 / $jumlah1;
                            $eigan22 = $IS22 / $jumlah2;
                            $eigan23 = $IS23 / $jumlah3;

                            $eigan31 = $IS31 / $jumlah1;
                            $eigan32 = $IS32 / $jumlah2;
                            $eigan33 = $IS33 / $jumlah3;

                            $rata1 = ($eigan11 + $eigan12 + $eigan13) / 3;
                            $rata2 = ($eigan21 + $eigan22 + $eigan23) / 3;
                            $rata3 = ($eigan31 + $eigan32 + $eigan33) / 3;
                            ?>
                            <tbody>
                                <tr>
                                    <td><?= round($eigan11, 3) ?></td>
                                    <td><?= round($eigan12, 3) ?></td>
                                    <td><?= round($eigan13, 3) ?></td>
                                    <td><?= round(($eigan11 + $eigan12 + $eigan13), 3) ?></td>
                                    <td><?= round(($eigan11 + $eigan12 + $eigan13) / 3, 3) ?></td>
                                </tr>
                                <tr>
                                    <td><?= round($eigan21, 3) ?></td>
                                    <td><?= round($eigan22, 3) ?></td>
                                    <td><?= round($eigan23, 3) ?></td>
                                    <td><?= round(($eigan21 + $eigan22 + $eigan23), 3) ?></td>
                                    <td><?= round(($eigan21 + $eigan22 + $eigan23) / 3, 3) ?></td>
                                </tr>
                                <tr>
                                    <td><?= round($eigan31, 3) ?></td>
                                    <td><?= round($eigan32, 3) ?></td>
                                    <td><?= round($eigan33, 3) ?></td>
                                    <td><?= round(($eigan31 + $eigan32 + $eigan33), 3) ?></td>
                                    <td><?= round(($eigan31 + $eigan32 + $eigan33) / 3, 3) ?></td>
                                </tr>
                                <tr>
                                    <td colspan="4"><b>
                                            <center> Jumlah </center>
                                        </b> </td>
                                    <td><?= round(($rata1 + $rata2 + $rata3), 3) ?></td>
                                </tr>
                            </tbody>
                        </table>

                        <table class="table table-bordered">
                            <tr>
                                <?php
                                $lamda1 = ($jumlah1 * $rata1) + ($jumlah2 * $rata2) + ($jumlah3 * $rata3);
                                ?>
                                <td>
                                    <center><b>Lamda Max</b></center>
                                </td>
                                <td><?= round($lamda1, 3) ?></td>
                                <td><?= round($lamda1 - 3, 3) ?></td>
                                <td><?= round(($lamda1 - 3) / (3 - 1), 3) ?></td>
                            </tr>
                        </table>

                        <table class="table table-bordered">
                            <tr>
                                <?php
                                $ci = ($lamda1 - 3) / (3 - 1);
                                ?>
                                <td>
                                    <center><b>CI</b></center>
                                </td>
                                <td><?= round($ci, 3) ?></td>
                            </tr>
                            <tr>
                                <?php
                                $cr = $ci / 0.58;
                                ?>
                                <td>
                                    <center><b>CR</b></center>
                                </td>
                                <td><?= round($cr, 3) ?></td>
                            </tr>
                        </table>
                        <?php
                        if ($cr > '0.199') { ?>

                            <div class="alert alert-danger" role="alert">
                                Nilai CR tidak Memenuhi Ulangi Perhitungan
                            </div>
                        <?php } else { ?>
                            <div class="alert alert-primary" role="alert">
                                Nilai CR Memenuhi Lanjutkan Perhitungan
                            </div>
                        <?php } ?>

                        <?php
                        if ($cr > '0.199') { ?>

                            <a href="<?= base_url('admin/perhitungan/alt_ibnu_sabil') ?>" class="btn btn-danger"><i class="fa fa-refresh"></i> Ulangi Perhitungan</a>
                        <?php } else { ?>
                            <a href="<?= base_url('admin/perhitungan/alt_mualaf') ?>" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Lanjutkan Perhitungan</a>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->