<?php

    function gui_loi_cam_on_da_dang_ky($ten, $dienthoai, $email, $cty, $diachi, $tp) { 
                include_once	'xtemplate.class.php';
                $header   	= 'Content-type: text/html; charset=utf-8\r\n';				
                $title 		= get_bloginfo('name');
                $contact_email = get_option('contact_email');
                $contact_name = get_bloginfo('name');  
                $parseTemplate	=	new XTemplate('xtemplate.cam-on-da-dang-ky.html');
                $parseTemplate->assign('website', get_bloginfo('name'));
                $parseTemplate->assign('link', get_bloginfo('home'));
                $parseTemplate->assign('fullname',$ten);
                $parseTemplate->assign('phone',$dienthoai);                
                $parseTemplate->assign('email',$email);	                
                $parseTemplate->assign('cty',$cty);
                $parseTemplate->assign('diachi', $diachi);
                $parseTemplate->assign('tp', $tp);	
                $parseTemplate->assign('contact_email',$contact_email);  
                $parseTemplate->assign('contact_name',$contact_name);                 					
                $parseTemplate->parse('main');
                $mail=wp_mail($email, $title, $parseTemplate->text('main'), $title);
                if($mail)
                {
                ?>
                <script>
                alert ('Gửi mail thành công');
                </script>
                <?php 
                }
                else
    			{
                ?>
                <script>
                alert ('Vui lòng thử lại');
                </script>
                <?php 
                } 
                
            }
   
?>