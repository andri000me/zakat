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
                        <h2>Hasil Perbandingan Alternatif dengan Kriteria Miskin</h2>
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
                                    <th><strong>MUALAF</strong></th>
                                    <th>Fakir</th>
                                    <th>Sabil</th>
                                    <th>Amil</th>
                                </tr>
                            </thead>
                            <?php foreach ($mualaf->result() as $row) :
                                $MU11 = $row->MU11;
                                $MU12 = $row->MU12;
                                $MU13 = $row->MU13;
                                $MU21 = $row->MU21;
                                $MU22 = $row->MU22;
                                $MU23 = $row->MU23;
                                $MU31 = $row->MU31;
                                $MU32 = $row->MU32;
                                $MU33 = $row->MU33;
                                $jumlah1 = $MU11 + $MU21 + $MU31;
                                $jumlah2 = $MU12 + $MU22 + $MU32;
                                $jumlah3 = $MU13 + $MU23 + $MU33;
                            ?>
                                <tbody>
                                    <tr>
                                        <th scope="row">Fakir</th>
                                        <td><?= $MU11 ?></td>
                                        <td><?= $MU12 ?></td>
                                        <td><?= $MU13 ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
                                        <td><?= round($MU21, 3) ?></td>
                                        <td><?= round($MU22, 3) ?></td>
                                        <td><?= round($MU23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Amil</th>
                                        <td><?= round($MU31, 3) ?></td>
                                        <td><?= round($MU32, 3) ?></td>
                                        <td><?= round($MU33, 3) ?></td>
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
                            $eigan11 = $MU11 / $jumlah1;
                            $eigan12 = $MU12 / $jumlah2;
                            $eigan13 = $MU13 / $jumlah3;

                            $eigan21 = $MU21 / $jumlah1;
                            $eigan22 = $MU22 / $jumlah2;
                            $eigan23 = $MU23 / $jumlah3;

                            $eigan31 = $MU31 / $jumlah1;
                            $eigan32 = $MU32 / $jumlah2;
                            $eigan33 = $MU33 / $jumlah3;

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
                                Nilai CR Memenuhi Lanjutkan Perangkingan
                            </div>
                        <?php } ?>

                        <?php
                        if ($cr > '0.199') { ?>

                            <a href="<?= base_url('admin/perhitungan/alt_mualaf') ?>" class="btn btn-danger"><i class="fa fa-refresh"></i> Ulangi Perhitungan</a>
                        <?php } else { ?>
                            <a href="<?= base_url('admin/perhitungan/hasil_perangkingan') ?>" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Lanjutkan Perangkingan</a>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->