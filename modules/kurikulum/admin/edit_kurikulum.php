<div class="col-md-12" id="content-container">
<div class="panel panel-primary">

<div class="panel-heading"><h3 class="panel-title">Edit kurikulum</h3></div>
    <div class="panel-body"> 
        
        <div class="row clearfix">
            <div class="col-md-12 column" id="post">
        	<div class="text-left" style="margin-bottom:15px;">
				<?php echo link_data('admin.php?mod=kurikulum','Edit kurikulum'); ?>
            </div>
            <?php echo isset($_msg)?$_msg:""; ?>
        	<form class="form-horizontal" role="form" method="post" action="">
            
              <?php echo form_text("Nama kurikulum","kurikulum_nama", $row['kurikulum_nama']);?>
              <?php echo form_text("Tahun pertama","kurikulum_tahun_pertama", $row['kurikulum_tahun_pertama']);?>
              <?php echo form_text("Tahun kedua","kurikulum_tahun_kedua", $row['kurikulum_tahun_kedua']);?>
              <?php echo form_button("SIMPAN","edit_kurikulum");?>              
              
            </form>

        
            </div>
        </div>  
    
    </div>

</div>
</div>