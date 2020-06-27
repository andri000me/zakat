<script src="<?= base_url(); ?>/assets/template_home/js/jquery-3.3.1.slim.min.js"></script>
<script src="<?= base_url(); ?>/assets/template_home/js/bootstrap.js"></script>
 <!-- DATA TABLE SCRIPTS -->
    <script src="<?php echo base_url('assets/js/dataTables/jquery.dataTables.js') ?>"></script>
    <script src="<?php echo base_url('assets/js/dataTables/dataTables.bootstrap.js') ?>"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable({
                    "searching" : true,
                    "lengthChange": true,
                    "ordering": true, 
                });
            });
    </script>
  </body>
</html>