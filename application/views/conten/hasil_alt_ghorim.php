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
                        <h2>Hasil Perbandingan Alternatif dengan Kriteria Ghorim</h2>
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
                                    <th><strong>GHORIM</strong></th>
                                    <th>Fakir</th>
                                    <th>Sabil</th>
                                    <th>Amil</th>
                                </tr>
                            </thead>
                            <?php foreach ($ghorim->result() as $row) :
                                $G11 = $row->G11;
                                $G12 = $row->G12;
                                $G13 = $row->G13;
                                $G21 = $row->G21;
                                $G22 = $row->G22;
                                $G23 = $row->G23;
                                $G31 = $row->G31;
                                $G32 = $row->G32;
                                $G33 = $row->G33;
                                $jumlah1 = $G11 + $G21 + $G31;
                                $jumlah2 = $G12 + $G22 + $G32;
                                $jumlah3 = $G13 + $G23 + $G33;
                            ?>
                                <tbody>
                                    <tr>
                                        <th scope="row">Fakir</th>
                                        <td><?= $G11 ?></td>
                                        <td><?= $G12 ?></td>
                                        <td><?= $G13 ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
                                        <td><?= round($G21, 3) ?></td>
                                        <td><?= round($G22, 3) ?></td>
                                        <td><?= round($G23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Amil</th>
                                        <td><?= round($G31, 3) ?></td>
                                        <td><?= round($G32, 3) ?></td>
                                        <td><?= round($G33, 3) ?></td>
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
                            $eigan11 = $G11 / $jumlah1;
                            $eigan12 = $G12 / $jumlah2;
                            $eigan13 = $G13 / $jumlah3;

                            $eigan21 = $G21 / $jumlah1;
                            $eigan22 = $G22 / $jumlah2;
                            $eigan23 = $G23 / $jumlah3;

                            $eigan31 = $G31 / $jumlah1;
                            $eigan32 = $G32 / $jumlah2;
                            $eigan33 = $G33 / $jumlah3;

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

                            <a href="<?= base_url('admin/perhitungan/alternatif') ?>" class="btn btn-danger"><i class="fa fa-refresh"></i> Ulangi Perhitungan</a>
                        <?php } else { ?>
                            <a href="<?= base_url('admin/perhitungan/alt_budak') ?>" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Lanjutkan Perhitungan</a>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->