<?php foreach ($kriteria->result() as $row) {
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

    $eigan11 = $C11 / $jumlah1;
    $eigan12 = $C12 / $jumlah2;
    $eigan13 = $C13 / $jumlah3;
    $eigan14 = $C14 / $jumlah4;
    $eigan15 = $C15 / $jumlah5;

    $eigan21 = $C21 / $jumlah1;
    $eigan22 = $C22 / $jumlah2;
    $eigan23 = $C23 / $jumlah3;
    $eigan24 = $C24 / $jumlah4;
    $eigan25 = $C25 / $jumlah5;

    $eigan31 = $C31 / $jumlah1;
    $eigan32 = $C32 / $jumlah2;
    $eigan33 = $C33 / $jumlah3;
    $eigan34 = $C34 / $jumlah4;
    $eigan35 = $C35 / $jumlah5;

    $eigan41 = $C41 / $jumlah1;
    $eigan42 = $C42 / $jumlah2;
    $eigan43 = $C43 / $jumlah3;
    $eigan44 = $C44 / $jumlah4;
    $eigan45 = $C45 / $jumlah5;

    $eigan51 = $C51 / $jumlah1;
    $eigan52 = $C52 / $jumlah2;
    $eigan53 = $C53 / $jumlah3;
    $eigan54 = $C54 / $jumlah4;
    $eigan55 = $C55 / $jumlah5;

    $rata1 = ($eigan11 + $eigan12 + $eigan13 + $eigan14 + $eigan15) / 5;
    $rata2 = ($eigan21 + $eigan22 + $eigan23 + $eigan24 + $eigan25) / 5;
    $rata3 = ($eigan31 + $eigan32 + $eigan33 + $eigan34 + $eigan35) / 5;
    $rata4 = ($eigan41 + $eigan42 + $eigan43 + $eigan44 + $eigan45) / 5;
    $rata5 = ($eigan51 + $eigan52 + $eigan53 + $eigan54 + $eigan55) / 5;
} ?>

<?php
foreach ($ghorim->result() as $row) {
    $G11 = $row->G11;
    $G12 = $row->G12;
    $G13 = $row->G13;
    $G21 = $row->G21;
    $G22 = $row->G22;
    $G23 = $row->G23;
    $G31 = $row->G31;
    $G32 = $row->G32;
    $G33 = $row->G33;

    $jg1 = $G11 + $G21 + $G31;
    $jg2 = $G12 + $G22 + $G32;
    $jg3 = $G13 + $G23 + $G33;

    $eg11 = $G11 / $jg1;
    $eg12 = $G12 / $jg2;
    $eg13 = $G13 / $jg3;

    $eg21 = $G21 / $jg1;
    $eg22 = $G22 / $jg2;
    $eg23 = $G23 / $jg3;

    $eg31 = $G31 / $jg1;
    $eg32 = $G32 / $jg2;
    $eg33 = $G33 / $jg3;

    $rg1 = ($eg11 + $eg12 + $eg13) / 3;
    $rg2 = ($eg21 + $eg22 + $eg23) / 3;
    $rg3 = ($eg31 + $eg32 + $eg33) / 3;
}
?>

<?php
foreach ($budak->result() as $row) {
    $B11 = $row->B11;
    $B12 = $row->B12;
    $B13 = $row->B13;
    $B21 = $row->B21;
    $B22 = $row->B22;
    $B23 = $row->B23;
    $B31 = $row->B31;
    $B32 = $row->B32;
    $B33 = $row->B33;
    $jb1 = $B11 + $B21 + $B31;
    $jb2 = $B12 + $B22 + $B32;
    $jb3 = $B13 + $B23 + $B33;

    $eb11 = $B11 / $jb1;
    $eb12 = $B12 / $jb2;
    $eb13 = $B13 / $jb3;

    $eb21 = $B21 / $jb1;
    $eb22 = $B22 / $jb2;
    $eb23 = $B23 / $jb3;

    $eb31 = $B31 / $jb1;
    $eb32 = $B32 / $jb2;
    $eb33 = $B33 / $jb3;

    $rb1 = ($eb11 + $eb12 + $eb13) / 3;
    $rb2 = ($eb21 + $eb22 + $eb23) / 3;
    $rb3 = ($eb31 + $eb32 + $eb33) / 3;
}
?>

<?php
foreach ($miskin->result() as $row) {
    $M11 = $row->M11;
    $M12 = $row->M12;
    $M13 = $row->M13;
    $M21 = $row->M21;
    $M22 = $row->M22;
    $M23 = $row->M23;
    $M31 = $row->M31;
    $M32 = $row->M32;
    $M33 = $row->M33;
    $jm1 = $M11 + $M21 + $M31;
    $jm2 = $M12 + $M22 + $M32;
    $jm3 = $M13 + $M23 + $M33;

    $em11 = $M11 / $jm1;
    $em12 = $M12 / $jm2;
    $em13 = $M13 / $jm3;

    $em21 = $M21 / $jm1;
    $em22 = $M22 / $jm2;
    $em23 = $M23 / $jm3;

    $em31 = $M31 / $jm1;
    $em32 = $M32 / $jm2;
    $em33 = $M33 / $jm3;

    $rm1 = ($em11 + $em12 + $em13) / 3;
    $rm2 = ($em21 + $em22 + $em23) / 3;
    $rm3 = ($em31 + $em32 + $em33) / 3;
}
?>

<?php
foreach ($ibnu_sabil->result() as $row) {
    $IS11 = $row->IS11;
    $IS12 = $row->IS12;
    $IS13 = $row->IS13;
    $IS21 = $row->IS21;
    $IS22 = $row->IS22;
    $IS23 = $row->IS23;
    $IS31 = $row->IS31;
    $IS32 = $row->IS32;
    $IS33 = $row->IS33;
    $jIS1 = $IS11 + $IS21 + $IS31;
    $jIS2 = $IS12 + $IS22 + $IS32;
    $jIS3 = $IS13 + $IS23 + $IS33;

    $eIS11 = $IS11 / $jIS1;
    $eIS12 = $IS12 / $jIS2;
    $eIS13 = $IS13 / $jIS3;

    $eIS21 = $IS21 / $jIS1;
    $eIS22 = $IS22 / $jIS2;
    $eIS23 = $IS23 / $jIS3;

    $eIS31 = $IS31 / $jIS1;
    $eIS32 = $IS32 / $jIS2;
    $eIS33 = $IS33 / $jIS3;

    $rIS1 = ($eIS11 + $eIS12 + $eIS13) / 3;
    $rIS2 = ($eIS21 + $eIS22 + $eIS23) / 3;
    $rIS3 = ($eIS31 + $eIS32 + $eIS33) / 3;
}
?>

<?php
foreach ($mualaf->result() as $row) {
    $MU11 = $row->MU11;
    $MU12 = $row->MU12;
    $MU13 = $row->MU13;
    $MU21 = $row->MU21;
    $MU22 = $row->MU22;
    $MU23 = $row->MU23;
    $MU31 = $row->MU31;
    $MU32 = $row->MU32;
    $MU33 = $row->MU33;

    $jMU1 = $MU11 + $MU21 + $MU31;
    $jMU2 = $MU12 + $MU22 + $MU32;
    $jMU3 = $MU13 + $MU23 + $MU33;

    $eMU11 = $MU11 / $jMU1;
    $eMU12 = $MU12 / $jMU2;
    $eMU13 = $MU13 / $jMU3;

    $eMU21 = $MU21 / $jMU1;
    $eMU22 = $MU22 / $jMU2;
    $eMU23 = $MU23 / $jMU3;

    $eMU31 = $MU31 / $jMU1;
    $eMU32 = $MU32 / $jMU2;
    $eMU33 = $MU33 / $jMU3;

    $rMU1 = ($eMU11 + $eMU12 + $eMU13) / 3;
    $rMU2 = ($eMU21 + $eMU22 + $eMU23) / 3;
    $rMU3 = ($eMU31 + $eMU32 + $eMU33) / 3;
}
?>

<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Hasil Perhitungan SPK AHP </h3>
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


                        <?php $rank1 = round(($rata1 * $rg1) + ($rata2 * $rb1) + ($rata3 * $rm1) + ($rata4 * $rIS1) + ($rata5 * $rMU1), 3) ?>
                        <br>
                        <?php $rank2 = round(($rata1 * $rg2) + ($rata2 * $rb2) + ($rata3 * $rm2) + ($rata4 * $rIS2) + ($rata5 * $rMU2), 3) ?>
                        <br>
                        <?php $rank3 = round(($rata1 * $rg3) + ($rata2 * $rb3) + ($rata3 * $rm3) + ($rata4 * $rIS3) + ($rata5 * $rMU3), 3) ?>

                        <input type="hidden" id="rank1" value="<?= $rank1 ?>">
                        <input type="hidden" id="rank2" value="<?= $rank2 ?>">
                        <input type="hidden" id="rank3" value="<?= $rank3 ?>">

                        <table class="table table-bordered">
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