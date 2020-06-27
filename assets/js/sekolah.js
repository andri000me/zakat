$(document).ready(function(){
          
        //fungsi tampil barang
        function tampil_data_barang(){
            $.ajax({
                type  : 'GET',
                url   : '<?php echo base_url()?>sekolah/tampil_data',
                async : true,
                dataType : 'json',
                success : function(data){
                    var html = '';
                    var i;
                    var x=1;
                    for(i=0; i<data.length; i++){
                        html += '<tr>'+
                                '<td>'+data[i].id_sekolah+'</td>'
                                '<td>'+data[i].nama_sekolah+'</td>'+
                                '<td>'+data[i].alamat_sekola+'</td>'+
                                '<td style="text-align:right;">'+
                                    '<a href="javascript:;" class="btn btn-info btn-xs item_edit" data="'+data[i].barang_kode+'">Edit</a>'+' '+
                                    '<a href="javascript:;" class="btn btn-danger btn-xs item_hapus" data="'+data[i].barang_kode+'">Hapus</a>'+
                                '</td>'+
                                '</tr>';
                    }
                    $('#tampilkan_data').html(html);
                }
 
            });
        }
 
    });