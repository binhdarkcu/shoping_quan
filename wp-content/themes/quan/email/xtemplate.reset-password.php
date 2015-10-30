<?php
    /**
     * Gửi thông báo qua email cho user thay đổi mật khẩu
     */
    function send_reset_password_for_user($email, $password){
    		$headers = array(
					     	 	  'From: '.get_bloginfo('name').' <'.get_bloginfo('admin_email').'>',
					       			 "Content-Type: text/html"
					  			  );
		 $h = implode("\r\n",$headers) . "\r\n";
        include_once 'xtemplate.class.php';
        $title=get_bloginfo('title').' Reset lại mật khẩu';
        $parseTemplate = new XTemplate('xtemplate.reset-password.html');
        $parseTemplate->assign('link', get_bloginfo('url'));
        $parseTemplate->assign('website', $title);                				
        $parseTemplate->assign('matkhau',$password);
        $parseTemplate->parse('main');
        
        return wp_mail($email, $title, $parseTemplate->text('main'),$h);
    }
