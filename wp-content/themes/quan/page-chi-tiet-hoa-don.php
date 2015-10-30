<?php
$order_id = decrypt($_GET['orderID']);
$ordersDetail = getOrdersDetails($order_id); 
$order = getOrders($order_id);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hóa Đơn</title>
<style type="text/css">
*{
	margin:0;
	padding:0;
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;	
}

ul {
	list-style:none;
}

#container {
	width:593px;
	height:840px;
	margin:0px auto;
	border:1px solid #000;
}
#header {
	overflow:hidden;
	padding:10px;
	border-bottom:thin solid #333;
	border-bottom-width:1px;
}
#header p {
	height:128px;
	width: 128px;
	overflow:hidden;
	float:left;
	
}
#header p img {
	margin:0 auto;
	width:128px;
	height:128px;
	display:inline;
}
#header .thong-tin-website{
	width:423px;
	float:left;
}
#header .thong-tin-website h2{
	width:530px;
	text-align:center;
	font-size:18px;
	text-transform:uppercase;
	font-weight:bold;
	margin-bottom:10px;
}
#header .thong-tin-website ul li{
	clear:both;
	font-weight:bold;
	float:left;
	height:15px;
	margin-bottom:10px;
}

#main {
	overflow:hidden;
	padding:0 10px;
}
#main h2{	
	text-align:center;
	font-size:18px;
	text-transform:uppercase;
	font-weight:bold;
	margin-top:10px;
}
#main p.date{
	display:block;
	text-align:center;
	font-size:11px;
	font-style:italic;
	margin-bottom:10px;
}
#main p.date .date-2{	
	padding:0px 5px;
}
#main .thong-tin-khach-hang{
	width:680px;
	float:left;
	padding-left:10px;
}
#main .thong-tin-khach-hang ul li.col-1{
	width:100%;
	float:left;
	height:15px;
	margin-bottom:5px;
}
#main .thong-tin-khach-hang ul li .col-2{
	background:#0FF;
	height:15px;
}

table.bang-hoa-don,.bang-hoa-don  tr,.bang-hoa-don  td {
	border:thin solid;
	border-width:1px;
	border-collapse: collapse;
    border-spacing: 0;
}
.bang-hoa-don tr {
	height:25px;
}
.col-stt {
	width:34px;
	text-align:center;
}
.col-tsp {
	width:300px;
	text-align:center;
}
.col-dvt{
	width:50px;
	text-align:center;	
}
.col-sl{
	width:88px;
	text-align:center;	
}
.col-dg{
	width:100px;
	text-align:center;	
}
.col-tt{
	width:110px;
	text-align:right;	
}
.col-bot {
	text-align:right;
	padding-right:5px;
}
.col-tax {
	text-align:center;
	border-right:none !important;
}
.tax {
	border-left:none !important;
}
.bang-hoa-don .label {
	font-weight:bold;
}
.xac-nhan-mua {
	width:200px;
	margin-right:50px;
	float:right;
	margin-top:10px;
}
.xac-nhan-mua span {
	display:block;
	width:100%;
	text-align:center;
}
.xac-nhan-mua img {
	max-width:180px;
	display:block;
	margin:10px auto;
	text-align:center;
}
.num-text {line-height:15px; margin-top:5px;}
.num-text span {font-style:italic;}


.col-tongthanhtien {
	font-weight: bold;
	text-align:right;
}
#footer {
	margin-top:10px;
	padding-left:10px;
}
</style>
</head>
<body>
 <div style="float:right; padding:2px 80px 0px 0px;  text-align:center;">
    <a href="" onclick="window.print()" class="print-title">
        <img alt="" src="<?php bloginfo('template_url');?>/images/Printer-icon.png" style="border:0; vertical-align:middle;" />
    </a>
 </div>
<div id="container">
   <div id="header">
 
        <div style="width: 150px;height: 60px;float: left;"><a href="<?php bloginfo('url');?>"><img class="logo" src="<?php echo get_field('header_logo','option');?>" alt="Lo-Go-Website"/></a></div>
        <div class="thong-tin-website">
            <ul>
            	<?php
                    $strip = array('<p>','</p>'); // search for <p>
                ?>
            	<li class="col-1">Tên công ty: <?php echo get_field('header_title','option');?></li>
            	<li class="col-1" style="height: auto;">Địa chỉ: <?php echo str_replace($strip,'',get_field('company_address','option'));?></li>
                <li class="col-1">Điện thoại: <?php echo str_replace($strip,'',get_field('hotline','option'));?></li>
                <li class="col-1">Email: <?php echo str_replace($strip,'',get_field('company_email','option'));?></li>
                <li class="col-1">Website: <a href="<?php bloginfo('url');?>"><?php bloginfo('url');?></a></li>
            </ul>
        </div>
   </div>
   <div id="main">
        <h2>Hóa đơn bán hàng Số <?php echo $order_id;?></h2>
        <?php   foreach ($order as $info){
		$user_info = get_userdata($info->userID);		
		$total=get_total_from_db($info->ID);
		$infor_user=explode('-', $info->name);	
		$money=number_format($total,0);
	?>
        <p class="date">
        	<span class="date-1">Ngày </span>
        	<span class="date-2"><?php echo date('d',$info->datetime); ?></span>
            <span class="date-1">tháng </span>
            <span class="date-2"><?php echo date('m',$info->datetime); ?></span>
            <span class="date-1">Năm </span>
            <span class="date-2"><?php echo date('Y',$info->datetime); ?></span>
        </p>
        <div class="thong-tin-khach-hang">
            <ul>
          
	   	<li class="col-1">
                	<span>Họ tên người mua hàng: <strong><?php echo $infor_user[0]?></strong> </span>
                    <span class="col-2"></span>
                </li>               
                <li class="col-1">
                	<span>Địa chỉ : <?php echo $infor_user[2] ?></span>
                    <span class="col-2"></span>
                </li>
                <li class="col-1">
                	<span>Điện thoại : <?php echo $infor_user[1];?></span>
                    <span class="col-2"></span>
                </li>
                <li class="col-1">
                	<span>Email : <?php echo $info -> email; ?></span>
                    <span class="col-2"></span>
                </li>
                
            </ul>
        </div>
        <?php }?>
        <table border="1" class="bang-hoa-don" cellpadding="0" cellspacing="0">
        	<tr class="label">
            	<td class="col-stt">STT</td>
                <td class="col-tsp">Tên sản phẩm</td>
                <td class="col-sl">Số lượng</td>
                <td class="col-dg">Đơn giá</td>
                <td class="col-tt" style="padding: 0 5px;">Thành tiền (VNĐ)</td>
            </tr>
            
             <?php
			$num=1;
             foreach ($ordersDetail as $detail){
		  	$post_info = get_post($detail->productID);
		  	
	  	?>
            <tr class="label">
            	<td class="col-stt"><?php _e($num);?></td>
                <td class="col-tsp"><?php _e($post_info->post_title);?></td>
                <td class="col-sl"><?php _e($detail->quanlity);?></td>
                <td class="col-dg"><?php echo $detail->price;?></td>
                <td class="col-tt" style="padding: 0 5px;"><?php _e(number_format(($detail->subtotal),0));?></td>
            </tr>
            <?php 
             $num++;
             }//End foreach ?>
            <tr>
            	<td colspan="4" class="col-bot">Cộng tiền hàng :</td>
                <td class="col-tongthanhtien" style="padding: 0 5px;"><?php echo number_format($total,0); ?></td>
            </tr>
            <tr>
            	<td colspan="2" class="col-tax">Thuế suất :<span></span></td>
                <td colspan="2" class="col-bot tax">Tiền thuế GTGT :</td>
                <td class="col-tongthanhtien" style="padding: 0 5px;">0</td>
            </tr>
            <tr>
            	<td colspan="4" class="col-bot">Tổng cộng tiền thanh toán :</td>
                <td class="col-tongthanhtien" style="padding: 0 5px;"><?php echo number_format($total,0); ?></td>
            </tr>
                     
        </table>
        	<p class="num-text">Số tiền bằng chữ: <span><?php echo doiso($total);?> Đồng</span></p>
  
        <div class="xac-nhan-mua">
        	<span>Xác nhận mua hàng</span>
            <img src="<?php echo get_field('header_logo','option');?>" alt="" />
            <span>Giám đốc điều hành</span><br/>
            <strong><span style="text-transform: uppercase;"><?php echo get_field('name_contract','option')?></span></strong>
        </div>
   </div>	
   <div id="footer">Copyright &copy; - <?php echo str_replace($strip,'',get_field('header_title','option'));?>
  
   
   </div>
</div>
<div style="float:right; padding:0px 80px 50px 0px;  text-align:center;">
			                <a href="" onclick="window.print()" class="print-title">
			                    <img alt="" src="<?php bloginfo('template_url');?>/images/Printer-icon.png" style="border:0; vertical-align:middle;" />
			                </a>
 </div>
</body>
</html>
     