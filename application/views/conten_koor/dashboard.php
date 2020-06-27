<div class="right_col" role="main">
          <div class="">
            <div class="row top_tiles">

              <div class="animated flipInY col-lg-6 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-wheelchair"></i></div>
                  <div class="count"><?php echo $rt; ?></div>
                  <h3>Jumlah Penerima RT </h3>
                  <p>Jumlah Penerima Zakat RT </p>
                </div>
              </div>

              <div class="animated flipInY col-lg-6 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-money"></i></div>
                  <?php 
                    foreach ($nominal_donatur->result() as $row) { ?>
                    <div class="count">Rp. <?php echo number_format($row->total); ?>,-</div>
                    <?php } ?>
                    <h3>Nominal Donatur</h3>
                    <p>Jumlah Nominal yang Terkumpul dari donatur</p>
                </div>
              </div>

            </div>

          </div>
        </div>