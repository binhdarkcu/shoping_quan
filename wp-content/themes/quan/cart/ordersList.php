<?php
if (!current_user_can('manage_options'))
    {
      wp_die( __('You do not have sufficient permissions to access this page.') );
    }
    
    if($_POST['filter']){
    	/**
    	 * Do filter 
    	 */
    	$cusName = $_POST['name'];    	
    	$fromDate = $_POST['fromdate'];
    	$toDate = $_POST['todate'];
    	$stt	= $_POST['status'];
		if($cusName == 'Tên khách hàng...'){
			$cusName = '';
		}
    	$searchArray['name'] = $cusName;    	
    	$searchArray['fromdate'] = $fromDate;
    	$searchArray['todate'] = $toDate;
    	$searchArray['stauts'] = $stt;
    }
   
	$ordersList = getOrdersList($searchArray);	
	$num = 0;
?>
<style>
#pager{
	z-index:9999;
	position: inherit !important;
}
</style>
<script type="text/javascript">
	jQuery(document).ready(function($){
		//var user='<?php //echo $info;?>'.split('-');
		//$(".autocomplete").autocomplete(user);
		$(".fromdate").datepicker();
		$(".fromdate").datepicker("option", "dateFormat", "dd/mm/yy");
		$(".todate").datepicker();
		$(".todate").datepicker("option", "dateFormat", "dd/mm/yy");
		});

	$(document).ready(function() 
		    { 
		        $("#insured_list")
				.tablesorter({widthFixed: true, widgets: ['zebra']})
				.tablesorterPager({container: $("#pager")}); 
		    } 
			); 
	
</script>

<?php
	$action = $_GET['action'];
	$orderid = $_GET['orderid'];

	if($action == 'Edit'){
	global $wpdb;
    $query = 'SELECT * FROM wp_order WHERE ID = '.$orderid;
    $member = $wpdb->get_row($query, ARRAY_A);
    if(!empty($_POST) && wp_verify_nonce($_POST['act_update_member'],'update_member')){
    	$status = $_POST['order_status'];
	    global $wpdb;
	    update_status($status,$orderid);
	    $link = admin_url().'admin.php?page=hoa-don';
            echo "<script>setTimeout(function(){window.location.href = '".$link."';},10);</script>";
	 }
?>
	<h2 style="text-transform: uppercase;">Cập nhật trạng thái đơn hàng</h2>
	<form action="" method="post">
		<h3>Số HĐ: <b><?php echo $orderid;?></b></h3>
		<p>
			Trạng thái:
			<select name="order_status">
		        <option value="0" <?php if ( $member['status'] == 0 ) echo 'selected="selected"'; ?>>Chưa giao</option>
		        <option value="1" <?php if ( $member['status'] == 1 ) echo 'selected="selected"'; ?>>Đang giao</option>
		        <option value="2" <?php if ( $member['status'] == 2 ) echo 'selected="selected"'; ?>>Đã giao</option>
		    </select>
		</p>
		<p>
			Thời gian mua hàng: <?php echo date('d',$member['datetime']).'/'.date('m',$member['datetime']).'/'.date('Y',$member['datetime']);?>
		</p>
		<p>
			Email: <?php echo $member['email']?>
		</p>
		<p>
			<input type="submit"  value="Cập nhật" class="btn" />
	                            <?php wp_nonce_field('update_member','act_update_member');?>
		</p>
	</form>
<?php exit(); } ?>

	<h2 style="font-family:arial;"> DANH SÁCH HÓA ĐƠN </h2>
	<div id="pager" class="pager">
	<form>
		<img src="<?php bloginfo('template_url')?>/cart/images/first.png" class="first"/>
		<img src="<?php bloginfo('template_url')?>/cart/images/prev.png" class="prev"/>
		<input type="text" class="pagedisplay"/>
		<img src="<?php bloginfo('template_url')?>/cart/images/next.png" class="next"/>
		<img src="<?php bloginfo('template_url')?>/cart/images/last.png" class="last"/>
		<select class="pagesize">
			<option value="10">10 per page</option>
			<option value="20">20 per page</option>
			<option value="50">50 per page</option>
		</select>
	</form>	
	</div>
	<form method="post" action="" id="posts-filter">
	<div class="tablenav top">
		<div class="alignleft actions">
			<input class="autocomplete" type="text" name="name" id="post-search-input" value="Tên khách hàng..." onfocus="if (this.value == 'Tên khách hàng...') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Tên khách hàng...';}">
			<label for='fromdate'> Từ ngày </label>
			<input class="fromdate" type="text" name="fromdate" value="" >
			<label for='fromdate'> Đến ngày </label>
			<input class="todate" type="text" name="todate" value="" >
			<label for='fromdate'> Chọn trạng thái </label>
			<input type="radio" name="status" value="0"/>&nbsp;Chưa giao
			<input type="radio" name="status" value="1"/>&nbsp;Đang giao    
			<input type="radio" name="status" value="2"/>&nbsp; Đã giao
			<input type="submit" value="Filter" class="button-secondary" id="post-query-submit" name="filter">
			<?php 
				if(isset($_POST['filter'])){
					_e("<a href='".admin_url()."admin.php?page=hoa-don'> View All</a>"); 
				}
			?>		
		</div>
		<div class="tablenav-pages one-page">
		<span class="displaying-num">Total <?php echo countOrders();?> items</span>
		</div>		
		<br class="clear">
	</div>
<?php if($ordersList)
{  ?>
	</form>	
	<form method="get" name="delete" action="">
	<table id="insured_list" class="tablesorter" width="95%"> 
	  <thead>
	  	<tr>
		    <th width="2%"><strong> STT </strong></th>
		    <th width="5%"><strong> Số HĐ </strong></th>
		    <th width="15%"><strong> Khách hàng </strong></th>
		    <th width="10%"><strong> Điện thoại </strong></th>
		    <th width="25%"><strong> Địa chỉ </strong></th>
		    <th width="10%"><strong> Thời gian </strong></th>
		    <th width="8%"><strong> Tổng giá trị (1.000 VNĐ) </strong></th>
		    <th width="7%"><strong>Trạng thái</strong></th>
		    <th width="18%"><strong> Thao tác </strong></th>
	    </tr>
	  </thead>
	  <tbody style="width:100%;">	   
	  <?php	 
	  foreach ($ordersList as $order){
	  	//print_r($order);	  	
	  	$num++;
	  	$user_info = get_userdata($order->userID);
	  	$orderDetail = getOrdersDetails($order->ID);
	  	$total = 0;
	    $infor_user=explode('-',$order->name);
	  	?>
	  <tr valign="top" class="result" style="height:30px;line-height:30px;">
	    <td style="text-align:center"><?php _e($num);?></td>
	    <td style="text-align:center"><?php echo $order->ID;?></td>
	    <td><?php _e($infor_user[0]);?></td>
	    <td><?php _e($infor_user[1]);?></td>
	    <td><?php _e($infor_user[2]);?></td>
	    <td style="text-align:center"><?php _e(date('H:i d/m/Y',$order->datetime));?></td>
	    <td style="text-align:right">
	     <?php
	     echo  number_format(get_total_from_db($order->ID),0);
               $md=md5($order->userID);
		?>
		</td>
		<td>
			<?php 
			if($order->status==0){
				echo 'Chưa giao';
			}else if($order->status==1){
				echo 'Đang giao';
			}else{
				echo 'Chuyển thành công';
			}
		?>
		</td>
		<td style="text-align:center;margin:5px;padding:10px;">
			<span style="float:left;"><a class="button-secondary" target="blank" href="<?php bloginfo('url')?>/chi-tiet-hoa-don/?orderID=<?php echo encrypt($order->ID);?>">View</a></span>
			<span style="float:left;    margin-left: 11px;"><a class="button-secondary" href="?page=hoa-don&action=Edit&orderid=<?php echo $order->ID;?>">Edit</a></span>
			<input type="hidden" name="page" value="<?php _e($_GET['page']);?>"/>
			<input class="button-secondary" type="submit" value="Delete" name="action" onClick="return confirm('Bạn muốn xóa hóa đơn này ?');"/>
			<input type="hidden" name="id" value="<?php _e($order->ID);?>"/>
		
		</td>
	  </tr>	  
	  <?php	  	
	  }//End foreach 
	  
}else 
{
	echo '<tr style="text-align:center; width:200px;"><h2>Không tìm thấy kết quả yêu cầu của bạn!</h2></tr>';
	
}
	  ?>
	  </tbody>
	</table>
</form>