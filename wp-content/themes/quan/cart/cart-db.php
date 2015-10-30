<?php
if(!session_start())
{
	session_start();
}
add_action('init', 'cartInstall');
function cartInstall(){	
	global $wpdb;
	$order = $wpdb->prefix . "order";
	$order_details = $wpdb->prefix . "order_details";	
	if ($wpdb->get_var("SHOW TABLES LIKE '$order'") != $order) {
		$wpdb->query("CREATE TABLE {$order}(			
			ID  mediumint(10) AUTO_INCREMENT PRIMARY KEY ,
			userID INT(11) NOT NULL,
			sessionID VARCHAR(50) NOT NULL,
			total INT(40) NOT NULL,
			datetime int(11) NOT NULL,
			note longtext,
			name varchar(100),
			email varchar(100),
			status INT(1) not null default 0			
		)ENGINE=MyISAM DEFAULT CHARSET=utf8");
	}
	if ($wpdb->get_var("SHOW TABLES LIKE '$order_details'") != $order_details) {
		$wpdb->query("CREATE TABLE {$order_details}(			
			ID int(11) AUTO_INCREMENT PRIMARY KEY ,
			orderID INT(11) NOT NULL,
			productID INT(11) NOT NULL,
			price INT(20) NOT NULL,
			quanlity INT(11) NOT NULL,
			discount INT(11) NOT NULL,
			subtotal INT(30) NOT NULL			
		)ENGINE=MyISAM DEFAULT CHARSET=utf8");
	
	}
 
}
function get_order_id_with_session(){
		global $wpdb;	
		$session_id = session_id();
		$sql = "SELECT ID FROM {$wpdb->prefix}order Where sessionID ='{$session_id}'";
		$order_id = $wpdb->get_results($sql);	
							
		return $order_id[0]->ID;	
}
	
function insert_order_to_db($order=array('ID'=>0,'userID'=>1,'sessionID'=>0,'total'=>0, 'datetime'=>0,'note'=>'')){
		global $wpdb;	
		$order_table=$wpdb->prefix .'order';
		$arr=array('note'=>$_POST['message'],'name'=>$_POST['fullname'].'-'.$_POST['phone'].'-'.$_POST['address']);
		$order_new=array_merge($order,$arr);
		$rows_affected =$wpdb->insert($order_table,$order_new);
		if($rows_affected) 
		{   
		    return true;
		}							
		return false;
}

function insert_order_details_to_db( $order_details = array('cat_item'=>array('ID'=>0,'orderID'=>'','productID'=>0,'price'=>0,'quanlity'=>1,'discount'=>0,'subtotal'=>0))){
		$orderID = get_order_id_with_session(); 
		foreach ($order_details as $key => $cart_item) {
			$cart_item['orderID'] = $orderID;	
                   insert_cart_item_to_db($cart_item); 
		}
		return true;
}

function insert_cart_item_to_db($cart_item){
	global $wpdb;
	
	$order_details_table=$wpdb->prefix .'order_details';	 
	$rows_affected =$wpdb->insert($order_details_table,$cart_item);
	if(!$rows_affected) return FALSE;			
	return true;
}

function set_transaction(){	
	global $wpdb;
	$sql = "SET autocommit=0";
	$result = $wpdb->query($sql);
	$sql = "START TRANSACTION";
	$result = $wpdb->query($sql);	
}

function rollback(){
	global $wpdb;
	$sql = "ROLLBACK";
	$result = $wpdb->query($sql);
	$sql = "SET autocommit=1";
	$result = $wpdb->query($sql);
}

function commit(){
	global $wpdb;
	$sql = "COMMIT";
	$result = $wpdb->query($sql);
	$sql = "SET autocommit=1";
	$result = $wpdb->query($sql);
}

function insert_cart_to_db(){
	$order = get_order_in_session();
	$order_details = get_order_details_in_session();
	if(!($order && $order_details)) return false;	
	$order_result = insert_order_to_db($order);
	if($order_result){
	    $order_details_result= insert_order_details_to_db($order_details);	    
	}
	if(!($order_result &&$order_details_result )){
		
		return false;
	}	
	

	return true;
}
//split first name and lastnam
function split_name($name)
{
  $pos = strrpos($name, ' ');

  if ($pos === false) {
    return array(
    'firstname' => $name,
    'surname' => null
    );
  }

  $firstname = substr($name, 0, $pos + 1);
  $surname = substr($name, $pos);

  return array(
    'firstname' => $firstname,
    'lastname' => $surname
  );
}

function insert_user($name,$email,$phone,$address)	
{
     		 $password = wp_generate_password(6, false);
               
     		   $name_split=split_name($name);
     		 
                
				  $userdata	=	array(
					'user_login'		=>$email,
					'user_password'		=>$password,
					'user_email'		=>$email,
					'role'				=>'subscriber',
				    'first_name'		=>$name_split['firstname'],
				    'last_name'			=>$name_split['lastname'],
				  	'user_nicename'		=>$name
			     	);
				$user_id=wp_insert_user($userdata);
				if(isset($user_id) && $user_id>0){
					$code	=	bt_encode_subscrib_code($user_id);
					add_user_meta($user_id, 'wp_subscrib_active_code',$code);
					add_user_meta($user_id, 'phone', $phone);
					add_user_meta($user_id, 'address', $address);
					$_SESSION['user_id']=$user_id;
					 update_id_user_to_db();
					
					
				}
}
	
//add fields into user profile
function add_field()
{?>
<table class="form-table">
<tr>
<th><label for="address"><?php _e("Phone:"); ?></label></th>
<td>
<input type="text" name="address" id="address" value="<?php echo esc_attr( get_the_author_meta( 'address', $user->ID ) ); ?>" class="regular-text" /><br />
<span class="description"><?php _e("Please enter your address."); ?></span>
</td>
</tr>
</table>
<?php
}
function save_field()
{
function save_extra_user_profile_fields( $user_id ) {
 
if ( !current_user_can( 'edit_user', $user_id ) ) { return false; }
 
update_usermeta( $user_id, 'phone', $_POST['phone'] );
update_usermeta( $user_id, 'chitiet', $_POST['chitiet'] );

}

}

function update_cart_to_db($cart = array('order'=>null,'order_details'=>null)){
		$order = get_order_in_session();
		$order_details  = get_order_details_in_session();
		if(insert_order_to_db($order)){
			$order_details = get_order_details_with_id($order_details);
			if(insert_order_details_to_db($order_details)){
				return true;
			}
			else return false;
		}
		else 
		{
			return false;
		}		
		
	}
	


function  update_note_to_db($note)
{
   global  $wpdb;
   
   $wpdb->update($wpdb->prefix .'order', '', $where);
	

}

function get_session_id_in_db()
{
     global  $wpdb;
     
     $session_id=$wpdb->get_results(" select sessionID");     
}
function get_total_from_db($orderID){
  global  $wpdb;
   $order_table=$wpdb->prefix .'order';
  $total=$wpdb->get_results("select total from {$order_table} where id='{$orderID}'");
	 
  return $total[0]->total;
}

function update_id_user_to_db()
{
  global  $wpdb;
  $user_id=(int)$_SESSION['user_id'];
  $session_id = session_id();
  $order_table=$wpdb->prefix .'order';
  $update=$wpdb->query("update {$order_table} SET userID='{$user_id}' where sessionID='{$session_id}'");
    if($update)
    {  
    	return TRUE;
    	
    }
    return  false;
}
