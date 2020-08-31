<!-- page content -->

<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Hasil Perhitungan SPK AHP</h3>
            </div>
            <?php
            $a = '0.298';
            if ($a > '0.199') {
                echo "Ulangi Perhitungan";
            } else {
                echo "Aman";
            }
            ?>

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
                        <h2>Hasil Perbandingan Kriteria</h2>
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
                            <?php
                            foreach ($kriteria->result() as $row) {
                                $C11 = $row->C11;
                                $C12 = $row->C12;
                                $C13 = $row->C13;
                                $C14 = $row->C14;
                                $C15 = $row->C15;
                                $C21 = $row->C21;
                                $C22 = $row->C22;
                                $C23 = $row->C23;
                                $C24 = $row->C24;
                                $C25 = $row->C25;
                                $C31 = $row->C31;
                                $C32 = $row->C32;
                                $C33 = $row->C33;
                                $C34 = $row->C34;
                                $C35 = $row->C35;
                                $C41 = $row->C41;
                                $C42 = $row->C42;
                                $C43 = $row->C43;
                                $C44 = $row->C44;
                                $C45 = $row->C45;
                                $C51 = $row->C51;
                                $C52 = $row->C52;
                                $C53 = $row->C53;
                                $C54 = $row->C54;
                                $C55 = $row->C55;
                                $jumlah1 = $C11 + $C21 + $C31 + $C41 + $C51;
                                $jumlah2 = $C12 + $C22 + $C32 + $C42 + $C52;
                                $jumlah3 = $C13 + $C23 + $C33 + $C43 + $C53;
                                $jumlah4 = $C14 + $C24 + $C34 + $C44 + $C54;
                                $jumlah5 = $C15 + $C25 + $C35 + $C45 + $C55;
                            ?>
                                <tbody>
                                    <!-- Ghorim -->
                                    <tr>
                                        <td>Ghorim</td>
                                        <td><?= round($C11, 3) ?></td>
                                        <td><?= round($C12, 3)  ?></td>
                                        <td><?= round($C13, 3) ?></td>
                                        <td><?= round($C14, 3) ?></td>
                                        <td><?= round($C15, 3)  ?></td>
                                    </tr>
                                    <!-- End Ghorim -->

                                    <!-- Budak -->
                                    <tr>
                                        <td>Budak</td>
                                        <td><?= round($C21, 3) ?></td>
                                        <td><?= round($C22, 3) ?></td>
                                        <td><?= round($C23, 3) ?></td>
                                        <td><?= round($C24, 3)  ?></td>
                                        <td><?= round($C25, 3) ?></td>
                                    </tr>
                                    <!-- End Budak -->

                                    <!-- Miskin -->
                                    <tr>
                                        <td>Miskin</td>
                                        <td><?= round($C31, 3)  ?></td>
                                        <td><?= round($C32, 3) ?></td>
                                        <td><?= round($C33, 3) ?></td>
                                        <td><?= round($C34, 3) ?></td>
                                        <td><?= round($C35, 3) ?></td>
                                    </tr>
                                    <!-- End Miskin -->

                                    <!-- Ibnu Sabil -->
                                    <tr>
                                        <td>Ibnu Sabil</td>
                                        <td><?= round($C41, 3) ?></td>
                                        <td><?= round($C42, 3) ?></td>
                                        <td><?= round($C43, 3) ?></td>
                                        <td><?= round($C44, 3) ?></td>
                                        <td><?= round($C45, 3) ?></td>
                                    </tr>
                                    <!-- End Ibnu Sabil -->

                                    <!-- Mualaf -->
                                    <tr>
                                        <td>Mualaf</td>
                                        <td><?= round($C51, 3) ?></td>
                                        <td><?= round($C52, 3) ?></td>
                                        <td><?= round($C53, 3) ?></td>
                                        <td><?= round($C54, 3) ?></td>
                                        <td><?= round($C55, 3) ?></td>
                                    </tr>
                                    <!-- End Mualaf -->

                                    <!-- Jumlah -->
                                    <!-- Mualaf -->
                                    <tr>
                                        <th>Jumlah</th>
                                        <th><?= round($jumlah1, 3) ?></th>
                                        <th><?= round($jumlah2, 3) ?></th>
                                        <th><?= round($jumlah3, 3) ?></th>
                                        <th><?= round($jumlah4, 3) ?></th>
                                        <th><?= round($jumlah5, 3) ?></th>
                                    </tr>
                                    <!-- End Mualaf -->
                                    <!-- End Jumlah -->

                                </tbody>
                            <?php } ?>
                        </table>
                        <br>

                        <table class="table table-bordered">
                            <tr>
                                <th colspan="5">
                                    <center>Nilai Eigan</center>
                                </th>
                                <th>Jumlah</th>
                                <th>Rata - Rata</th>
                            </tr>
                            <tr>
                                <?php
                                $eigan11 = $C11 / $jumlah1;
                                $eigan12 = $C12 / $jumlah2;
                                $eigan13 = $C13 / $jumlah3;
                                $eigan14 = $C14 / $jumlah4;
                                $eigan15 = $C15 / $jumlah5;
                                ?>
                                <td><?= round($eigan11, 3) ?></td>
                                <td><?= round($eigan12, 3) ?></td>
                                <td><?= round($eigan13, 3) ?></td>
                                <td><?= round($eigan14, 3) ?></td>
                                <td><?= round($eigan15, 3) ?></td>
                                <td><?= round($eigan11 + $eigan12 + $eigan13 + $eigan14 + $eigan15, 3) ?></td>
                                <td><?= round((($eigan11 + $eigan12 + $eigan13 + $eigan14 + $eigan15) / 5), 3) ?></td>
                            </tr>

                            <tr>
                                <?php
                                $eigan21 = $C21 / $jumlah1;
                                $eigan22 = $C22 / $jumlah2;
                                $eigan23 = $C23 / $jumlah3;
                                $eigan24 = $C24 / $jumlah4;
                                $eigan25 = $C25 / $jumlah5;
                                ?>
                                <td><?= round($eigan21, 3) ?></td>
                                <td><?= round($eigan22, 3) ?></td>
                                <td><?= round($eigan23, 3) ?></td>
                                <td><?= round($eigan24, 3) ?></td>
                                <td><?= round($eigan25, 3) ?></td>
                                <td><?= round($eigan21 + $eigan22 + $eigan23 + $eigan24 + $eigan25, 3) ?></td>
                                <td><?= round((($eigan21 + $eigan22 + $eigan23 + $eigan24 + $eigan25) / 5), 3) ?></td>
                            </tr>

                            <tr>
                                <?php
                                $eigan31 = $C31 / $jumlah1;
                                $eigan32 = $C32 / $jumlah2;
                                $eigan33 = $C33 / $jumlah3;
                                $eigan34 = $C34 / $jumlah4;
                                $eigan35 = $C35 / $jumlah5;
                                ?>
                                <td><?= round($eigan31, 3) ?></td>
                                <td><?= round($eigan32, 3) ?></td>
                                <td><?= round($eigan33, 3) ?></td>
                                <td><?= round($eigan34, 3) ?></td>
                                <td><?= round($eigan35, 3) ?></td>
                                <td><?= round($eigan31 + $eigan32 + $eigan33 + $eigan34 + $eigan35, 3) ?></td>
                                <td><?= round((($eigan31 + $eigan32 + $eigan33 + $eigan34 + $eigan35) / 5), 3) ?></td>
                            </tr>

                            <tr>
                                <?php
                                $eigan41 = $C41 / $jumlah1;
                                $eigan42 = $C42 / $jumlah2;
                                $eigan43 = $C43 / $jumlah3;
                                $eigan44 = $C44 / $jumlah4;
                                $eigan45 = $C45 / $jumlah5;
                                ?>
                                <td><?= round($eigan41, 3) ?></td>
                                <td><?= round($eigan42, 3) ?></td>
                                <td><?= round($eigan43, 3) ?></td>
                                <td><?= round($eigan44, 3) ?></td>
                                <td><?= round($eigan45, 3) ?></td>
                                <td><?= round($eigan41 + $eigan42 + $eigan43 + $eigan44 + $eigan45, 3) ?></td>
                                <td><?= round(($eigan41 + $eigan42 + $eigan43 + $eigan44 + $eigan45) / 5, 3) ?></td>
                            </tr>

                            <tr>
                                <?php
                                $eigan51 = $C51 / $jumlah1;
                                $eigan52 = $C52 / $jumlah2;
                                $eigan53 = $C53 / $jumlah3;
                                $eigan54 = $C54 / $jumlah4;
                                $eigan55 = $C55 / $jumlah5;
                                ?>
                                <td><?= round($eigan51, 3) ?></td>
                                <td><?= round($eigan52, 3) ?></td>
                                <td><?= round($eigan53, 3) ?></td>
                                <td><?= round($eigan54, 3) ?></td>
                                <td><?= round($eigan55, 3) ?></td>
                                <td><?= round($eigan51 + $eigan52 + $eigan53 + $eigan54 + $eigan55, 3) ?></td>
                                <td><?= round(($eigan51 + $eigan52 + $eigan53 + $eigan54 + $eigan55) / 5) ?></td>
                            </tr>
                            <tr>
                                <?php
                                $rata1 = ($eigan11 + $eigan12 + $eigan13 + $eigan14 + $eigan15) / 5;
                                $rata2 = ($eigan21 + $eigan22 + $eigan23 + $eigan24 + $eigan25) / 5;
                                $rata3 = ($eigan31 + $eigan32 + $eigan33 + $eigan34 + $eigan35) / 5;
                                $rata4 = ($eigan41 + $eigan42 + $eigan43 + $eigan44 + $eigan45) / 5;
                                $rata5 = ($eigan51 + $eigan52 + $eigan53 + $eigan54 + $eigan55) / 5;
                                ?>
                                <td colspan="6">
                                    <center><b>TOTAL RATA - RATA</b></center>
                                </td>
                                <td>
                                    <center><b><?= round($rata1 + $rata2 + $rata3 + $rata4 + $rata5, 3) ?></b></center>
                                </td>
                            </tr>
                        </table>

                        <table class="table table-bordered">
                            <tr>
                                <?php
                                $lamda1 = ($jumlah1 * $rata1) + ($jumlah2 * $rata2) + ($jumlah3 * $rata3) + ($jumlah4 * $rata4) + ($jumlah5 * $rata5);
                                ?>
                                <td>
                                    <center><b>Lamda Max</b></center>
                                </td>
                                <td><?= round($lamda1, 3) ?></td>
                                <td><?= round($lamda1 - 5, 3) ?></td>
                                <td><?= round(($lamda1 - 5) / (5 - 1), 3) ?></td>
                            </tr>
                        </table>

                        <table class="table table-bordered">
                            <tr>
                                <?php
                                $ci = ($lamda1 - 5) / (5 - 1);
                                ?>
                                <td>
                                    <center><b>CI</b></center>
                                </td>
                                <td><?= round($ci, 3) ?></td>
                            </tr>
                            <tr>
                                <?php
                                $cr = $ci / 1.12;
                                ?>
                                <td>
                                    <center><b>CR</b></center>
                                </td>
                                <td><?= round($cr, 3) ?></td>
                            </tr>
                        </table>

                        <?php
                        if ($cr > '0.199') { ?>

                            <a href="<?= base_url('admin/perhitungan') ?>" class="btn btn-danger"><i class="fa fa-refresh"></i> Ulangi Perhitungan</a>
                        <?php } else { ?>
                            <a href="<?= base_url('admin/perhitungan/alternatif') ?>" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Lanjutkan Perhitungan</a>
                        <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->