<?php

    function gui_loi_cam_on_da_lien_he($ten, $email, $chude, $noidung) { 
                include_once	'xtemplate.class.php';
                $header   	= 'Content-type: text/html; charset=utf-8\r\n';				
                $title 		= get_bloginfo('name');
                $contact_email = get_option('contactemail');
                $contact_name = get_bloginfo('name');  
                $date = date('d-m-Y');
                $parseTemplate	=	new XTemplate('xtemplate.cam-on-da-lien-he.html');
                $parseTemplate->assign('fullname',$ten);
                $parseTemplate->assign('link', get_bloginfo('home'));
                $parseTemplate->assign('website', get_bloginfo('name'));
                 $parseTemplate->assign('date',$date);
              	$parseTemplate->assign('email',$email);	
                $parseTemplate->assign('tieude',$chude);
                $parseTemplate->assign('noidung',$noidung);               
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