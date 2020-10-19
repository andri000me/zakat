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
                        <h2>Hasil Perbandingan Alternatif dengan Kriteria Budak</h2>
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
                                    <th><strong>BUDAK</strong></th>
                                    <th>Fakir</th>
                                    <th>Sabil</th>
                                    <th>Amil</th>
                                </tr>
                            </thead>
                            <?php foreach ($budak->result() as $row) :
                                $B11 = $row->B11;
                                $B12 = $row->B12;
                                $B13 = $row->B13;
                                $B21 = $row->B21;
                                $B22 = $row->B22;
                                $B23 = $row->B23;
                                $B31 = $row->B31;
                                $B32 = $row->B32;
                                $B33 = $row->B33;
                                $jumlah1 = $B11 + $B21 + $B31;
                                $jumlah2 = $B12 + $B22 + $B32;
                                $jumlah3 = $B13 + $B23 + $B33;
                            ?>
                                <tbody>
                                    <tr>
                                        <th scope="row">Fakir</th>
                                        <td><?= $B11 ?></td>
                                        <td><?= $B12 ?></td>
                                        <td><?= $B13 ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
                                        <td><?= round($B21, 3) ?></td>
                                        <td><?= round($B22, 3) ?></td>
                                        <td><?= round($B23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Amil</th>
                                        <td><?= round($B31, 3) ?></td>
                                        <td><?= round($B32, 3) ?></td>
                                        <td><?= round($B33, 3) ?></td>
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
                            $eigan11 = $B11 / $jumlah1;
                            $eigan12 = $B12 / $jumlah2;
                            $eigan13 = $B13 / $jumlah3;

                            $eigan21 = $B21 / $jumlah1;
                            $eigan22 = $B22 / $jumlah2;
                            $eigan23 = $B23 / $jumlah3;

                            $eigan31 = $B31 / $jumlah1;
                            $eigan32 = $B32 / $jumlah2;
                            $eigan33 = $B33 / $jumlah3;

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

                            <a href="<?= base_url('admin/perhitungan/alt_budak') ?>" class="btn btn-danger"><i class="fa fa-refresh"></i> Ulangi Perhitungan</a>
                        <?php } else { ?>
                            <a href="<?= base_url('admin/perhitungan/alt_miskin') ?>" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Lanjutkan Perhitungan</a>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->