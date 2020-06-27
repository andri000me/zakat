<div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Backup Data</h3>
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
              <a class="tombol-backup" style="color: #000000 " href="<?php echo base_url('admin/setting/backup') ?>">
              <div class="animated flipInY col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-floppy-o fa-5x"></i></div>
                  <div class="count">00</div>
                  <h3>Backup Data</h3>
                  <p>Backup Data database</p>
                </div>
              </div>
          </a>
            </div>

            <div class="row">
              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>List Backup Data</h2>
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
                  	<button type="button" onclick="Reload()" class="btn btn-warning"><i class="fa fa-refresh"></i></button>
                  	<table width="100%">
                     <?php
	                    $direktori = scandir('./assets/backup/');
	                    for($i=2;$i<count($direktori);$i++){  ?>
	                        <tr>
	                            <td><a style="color: #101010;" href="<?php echo base_url('assets/backup/'.$direktori[$i]) ?>"><b><?php echo $direktori[$i]; ?></b></a></td>
	                            <td><a  style="color: #101010;" href="<?php echo base_url('Backup/hapus_backup/'.$direktori[$i]) ?>"><b>Hapus</b></a></td>
	                        </tr>
	                    <?php } ?>
            		</table>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>

<script>
function Reload() {
  location.reload();
}
</script>