<?php
add_action('admin_menu','ordersAdminMenu');
/**
 * Create a admin menu name Hoa don
 */
function ordersAdminMenu(){
$mypage=add_menu_page("Hóa đơn", "Hóa đơn", "administrator", "hoa-don",'ordersCustomPage','','7');
       add_action('admin_print_scripts-'.$mypage, 'headResource');
}

function headResource(){
//wp_enqueue_script('myscript',get_bloginfo('template_url').'/jquery-1.4.2.min.js');
?>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.tablesorter.min.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.tablesorter.pager.js" ></script>

<?php 
}

add_action('admin_head', 'add_script');
function add_script()
{
	?>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.ui.core.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery-ui-1.8.16.custom.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.ui.widget.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.autocomplete.js" ></script>
<script type="text/javascript" src="<?php bloginfo('template_url')?>/cart/js/jquery.ui.datepicker.js" ></script>

<link type="text/css" rel="stylesheet" href="<?php bloginfo('template_url')?>/cart/css/jquery.autocomplete.css"/>
<link type="text/css" rel="stylesheet" href="<?php bloginfo('template_url')?>/cart/css/jquery.ui.all.css"/>
<link type="text/css" rel="stylesheet" href="<?php bloginfo('template_url')?>/cart/css/tablesorter.css"/>
	
	<?php
}

function ordersCustomPage (){	
	if(!$_GET['action']){ // Default page		
		ordersPage();
	}
	else{ //If exist action
		$act = $_GET['action'];
		$orderID = $_GET['id'];		
		if($act == '' || $orderID == '')
		{			
			ordersPage();
		}
		else{
			if($act == 'View'){
				ordersDetailPage($orderID);
			}
			if($act == 'Delete'){
				deleteOrders($orderID);
				echo 'Xóa thành công';
				wp_redirect(admin_url()."admin.php?page=hoa-don");
				$link = admin_url().'admin.php?page=hoa-don';
                echo "<script>setTimeout(function(){window.location.href = '".$link."';},0);</script>";
			}
			if($act == 'Edit'){

			}
		}
	}
}

/*
 * 
 * 
 * */
function update_status($stt, $orderID)
{
	global $wpdb;
	$order=$wpdb->prefix .'order';
	$wpdb->get_results( "UPDATE {$order} SET status='{$stt}' WHERE ID='{$orderID}'");
	
}
/**
 * Show a list of Orders
 */
function ordersPage(){	
    include 'ordersList.php'; // Include content of this page
}


/**
 * Show detail of order, return products detail in this order
 * 
 * @param INT $orderID Id of order want to show detail 
 */
function ordersDetailPage($orderID){
	include 'ordersDetail.php'; // Include content of this page
}

/**
 * Delete a orders
 * 
 * @param INT $orderID ID of orders you want to delete
 */
function deleteOrders($orderID){
	global $wpdb;
	$ordersTable=$wpdb->prefix .'order';
	$wpdb->query(
				"
				DELETE FROM $ordersTable 
				WHERE ID = '$orderID'
				"
			);
		delete_order_details($orderID);
}
/**
 * Get list total orders
 */
function delete_order_details($orderID)
{
 global $wpdb;
 $order_details=$wpdb->prefix .'order_details';
 $wpdb->query("DELETE FROM {$order_details} where orderID='{$orderID}'");
}
function getOrdersList($searchArray = null){
	global $wpdb;
	$ordersTable=$wpdb->prefix .'order';
	$cusName = $searchArray['name'];
	$fromDate = $searchArray['fromdate'];
	$toDate = $searchArray['todate'];
	$stt = $searchArray['stauts'];
	
	$user = get_user_by('slug', $cusName);
	$userID = $user->ID;
	
	/*
	 * Convert date from datetime type to timestamp type
	 */
	if($fromDate != ''){
		list($fday, $fmonth, $fyear) = explode('/', $fromDate);
		$fromDate = mktime(0, 0, 0, $fmonth, $fday, $fyear);
	}
	if($toDate != ''){
		list($tday, $tmonth, $tyear) = explode('/', $toDate);
		$toDate = mktime(23, 59, 59, $tmonth, $tday, $tyear);
	}
	
	/*
	 * do query 
	 */
	if(!$searchArray){
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									order by ID DESC
									"
								);
		}
	if($cusName != '' && $fromDate == '' && $toDate ==''){
		
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									WHERE name LIKE '$cusName%'
									order by ID DESC
									"
								);
		}
	if($cusName == '' && $fromDate != '' && $toDate ==''){
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									WHERE datetime >='$fromDate'
									order by ID DESC
									"
								);
	}
	if($cusName == '' && $fromDate == '' && $toDate !=''){
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									WHERE datetime <='$toDate'
									order by ID DESC
									"
								);
	}
	if($cusName == '' && $fromDate != '' && $toDate !=''){
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									WHERE datetime >='$fromDate'
									AND datetime <='$toDate'
									order by ID DESC
									"
								);
	}	
	if($cusName != '' && $fromDate != '' && $toDate ==''){
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									WHERE datetime >='$fromDate'
									AND userID ='$userID'
									order by ID DESC
									"
								);
	}
	if($cusName != '' && $fromDate == '' && $toDate !=''){
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									WHERE userID='$userID'
									AND datetime <='$toDate'
									order by ID DESC
									"
								);
	}
	if($cusName != '' && $fromDate != '' && $toDate !=''){
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									WHERE datetime >='$fromDate'
									AND datetime <='$toDate'
									AND userID ='$userID'
									order by ID DESC
									"
								);
	}
	if($stt != '')
	{
		$order = $wpdb->get_results( 
									"
									SELECT * 	 
									FROM $ordersTable
									WHERE status='$stt'									
									"
								);
	}
	return $order;
}

/**
 *  Get detail of a order
 *  
 *  @param INT $orderID ID of order you want to get
 */
function getOrders($orderID){
	global $wpdb;
	$ordersTable=$wpdb->prefix .'order';
	$order = $wpdb->get_results( 
								"
								SELECT * 	 
								FROM $ordersTable
								WHERE ID = '$orderID'
								"
							);
	return $order;
}

/**
 * Get all product in a order
 * 
 * @param INT $orderID ID of order
 */
function getOrdersDetails($orderID){
	global $wpdb;
	$ordersDetailTable=$wpdb->prefix .'order_details';
	$detail = $wpdb->get_results( 
								"
								SELECT * 	 
								FROM $ordersDetailTable
								WHERE orderID = '$orderID'
								"
							);
	return $detail;
}

/**
 * Get and return total users.
 */
function getUsers(){
	global $wpdb;
	$userTable =$wpdb->prefix .'users';
	$users = $wpdb->get_results( 
								"
								SELECT * 	 
								FROM $userTable
								"
							);
	return $users;
}

/**
 * Count and display the number of orders.
 */
function countOrders(){
	global $wpdb;
	$ordersTable=$wpdb->prefix .'order';
	$count = $wpdb->get_var( "SELECT COUNT(*) FROM $ordersTable;" ) ;
	return $count;
}
function doiso($so){
        if (($so < 0) || ($so > 999999999999))
        {
            echo "Số này nằm ngoài phạm vi";
        }
        $Ty = floor($so / 1000000000);/* Tỷ  */
        $so -= $Ty * 1000000000;
         $Gn = floor($so / 1000000);  /* Triệu (giga) */
        $so -= $Gn * 1000000;
        $kn = floor($so / 1000);     /* Ngàn (kilo) */
        $so -= $kn * 1000;
        $Hn = floor($so / 100);      /* Trăm (hecto) */
        $so -= $Hn * 100;
        $Dn = floor($so / 10);       /* Mười (deca) */
        $n = $so % 10;

        $res = "";
        if ($Ty)
        {
            $res .= doiso($Ty) . " Tỷ";
        }

        if ($Gn)
        {
            $res .= (empty($res) ? "" : " ") .
                doiso($Gn) . " Triệu";
        }

        if ($kn)
        {
            $res .= (empty($res) ? "" : " ") .
                doiso($kn) . " Nghìn";
        }

        if ($Hn)
        {

           if($Dn==0 && $so>1)
            {
             $res .= (empty($res) ? "" : " ") .
                doiso($Hn) . " Trăm Lẻ";
            }
            else
            {
            $res .= (empty($res) ? "" : " ") .
                doiso($Hn) . " Trăm";
             }
        }

        $mot = array("", "Một", "Hai", "Ba", "Bốn", "Năm", "Sáu",
            "Bảy", "Tám", "Chín", "Mười", "Mười Một", "Mười Hai", "Mười Ba",
            "Mười Bốn", "Mười Lăm", "Mười Sáu", "Mười Bảy", "Mười Tám",
            "mười chín");
        $hangmuoi = array("", "", "Hai Mươi", "Ba Mươi", "Bốn Mươi", "Năm Mươi", "Sáu Mươi",
            "Bảy Mươi", "Tám Mươi", "Chín Mươi");

        if ($Dn || $n)
        {
            if (!empty($res))
            {
                $res .= " ";
            }

            if ($Dn < 2)
            {
                $res .= $mot[$Dn * 10 + $n];
            }
            else
            {
                $res .=' '. $hangmuoi[$Dn];

                if ($n)
                {

                    if($Dn>1 && $n==5)
                    {
                              $res .= ' Lăm';
                    }
                    else
                    {
                      $res .=' '.$mot[$n];
                    }

                }
            }
        }

        if (empty($res))
        {
            $res = "không";
        }

        return $res;
}

?>