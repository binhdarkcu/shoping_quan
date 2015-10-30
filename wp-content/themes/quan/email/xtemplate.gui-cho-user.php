<?php
    /**
     * Gửi thông báo qua email cho user đã đăng ký
     */
    function confirm_new_register_user($username,$password,$email,$activate_link=''){
        include_once 'xtemplate.class.php';
        $title = get_bloginfo('name');
        $parseTemplate = new XTemplate('xtemplate.gui-cho-user.html');
        $parseTemplate->assign('link', get_bloginfo('home'));
        $parseTemplate->assign('website', $title);
        $parseTemplate->assign('title',$title);
        $parseTemplate->assign('username',$username);				
        $parseTemplate->assign('pass',$password);	
        $parseTemplate->assign('useremail',$email);
        $parseTemplate->assign('activate_link',$activate_link);
        				
        $parseTemplate->parse('main');
        
        return wp_mail($email, $title, $parseTemplate->text('main'), $title);
    }
    
    
