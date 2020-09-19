<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>HASIL PERHITUNGAN DENGAN METODE AHP</h3>
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
                    </div>
                </div>
            </div>
        </div>

        <!-- Hasil Perbandingan Kiteria Ghorim dengan Alternatif -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Hasil Perbandingan Kriteria Ghorim dengan Alternatif</h2>
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
                                        <th scope="row">Amil</th>
                                        <td><?= round($G21, 3) ?></td>
                                        <td><?= round($G22, 3) ?></td>
                                        <td><?= round($G23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
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
                    </div>
                </div>
            </div>
        </div>

        <!-- Hasil Perbandingan Kiteria Budak dengan Alternatif -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Hasil Perbandingan Kriteria Budak dengan Alternatif</h2>
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
                                        <th scope="row">Amil</th>
                                        <td><?= round($B21, 3) ?></td>
                                        <td><?= round($B22, 3) ?></td>
                                        <td><?= round($B23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
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
                    </div>
                </div>
            </div>
        </div>

        <!-- Hasil Perbandingan Kiteria Miskin dengan Alternatif -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Hasil Perbandingan Kriteria Miskin dengan Alternatif</h2>
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
                                    <th><strong>MISKIN</strong></th>
                                    <th>Fakir</th>
                                    <th>Sabil</th>
                                    <th>Amil</th>
                                </tr>
                            </thead>
                            <?php foreach ($miskin->result() as $row) :
                                $M11 = $row->M11;
                                $M12 = $row->M12;
                                $M13 = $row->M13;
                                $M21 = $row->M21;
                                $M22 = $row->M22;
                                $M23 = $row->M23;
                                $M31 = $row->M31;
                                $M32 = $row->M32;
                                $M33 = $row->M33;
                                $jumlah1 = $M11 + $M21 + $M31;
                                $jumlah2 = $M12 + $M22 + $M32;
                                $jumlah3 = $M13 + $M23 + $M33;
                            ?>
                                <tbody>
                                    <tr>
                                        <th scope="row">Fakir</th>
                                        <td><?= $M11 ?></td>
                                        <td><?= $M12 ?></td>
                                        <td><?= $M13 ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Amil</th>
                                        <td><?= round($M21, 3) ?></td>
                                        <td><?= round($M22, 3) ?></td>
                                        <td><?= round($M23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
                                        <td><?= round($M31, 3) ?></td>
                                        <td><?= round($M32, 3) ?></td>
                                        <td><?= round($M33, 3) ?></td>
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
                            $eigan11 = $M11 / $jumlah1;
                            $eigan12 = $M12 / $jumlah2;
                            $eigan13 = $M13 / $jumlah3;

                            $eigan21 = $M21 / $jumlah1;
                            $eigan22 = $M22 / $jumlah2;
                            $eigan23 = $M23 / $jumlah3;

                            $eigan31 = $M31 / $jumlah1;
                            $eigan32 = $M32 / $jumlah2;
                            $eigan33 = $M33 / $jumlah3;

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
                    </div>
                </div>
            </div>
        </div>

        <!-- Hasil Perbandingan Kiteria Ibnu  Sabil dengan Alternatif -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Hasil Perbandingan Kriteria Ibnu Sabil dengan Alternatif</h2>
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
                                        <th scope="row">Amil</th>
                                        <td><?= round($IS21, 3) ?></td>
                                        <td><?= round($IS22, 3) ?></td>
                                        <td><?= round($IS23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
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
                    </div>
                </div>
            </div>
        </div>

        <!-- Hasil Perbandingan Kiteria Mualaf dengan Alternatif -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Hasil Perbandingan Kriteria Mualaf dengan Alternatif</h2>
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
                                        <th scope="row">Amil</th>
                                        <td><?= round($IS21, 3) ?></td>
                                        <td><?= round($IS22, 3) ?></td>
                                        <td><?= round($IS23, 3) ?></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Sabil</th>
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
                    </div>
                </div>
            </div>
        </div>

        <!-- Hasil Perangkingan -->
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Hasil Perangkingan</h2>
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
                            <?php foreach ($rank->result() as $row) {
                                $rank1 = round(($rata1 * $rg1) + ($rata2 * $rb1) + ($rata3 * $rm1) + ($rata4 * $rIS1) + ($rata5 * $rMU1), 3);
                                $rank2 = round(($rata1 * $rg2) + ($rata2 * $rb2) + ($rata3 * $rm2) + ($rata4 * $rIS2) + ($rata5 * $rMU2), 3);
                                $rank3 = round(($rata1 * $rg3) + ($rata2 * $rb3) + ($rata3 * $rm3) + ($rata4 * $rIS3) + ($rata5 * $rMU3), 3);
                            } ?>
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        <center> HASIL PERANKINGAN </center>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">Fakir</th>
                                    <td><?= $rank1 ?></td>
                                </tr>
                                <tr>
                                    <th scope="row">Sabil</th>
                                    <td><?= $rank2 ?></td>
                                </tr>
                                <tr>
                                    <th scope="row">Amil</th>
                                    <td><?= $rank3 ?></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- /page content -->