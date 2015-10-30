<footer class="footer-container">
                <div class="arw-dots-block-footer">
                    <div class="footer-row-2">
                        <div class="container">
                            <div class="row no-margin">
                                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                                    <div class="widget widget-static-block">
                                        <div class="arw-dots-block-footer-1">
                                            <div class="block block-logo">
                                                <div class="block-content">
                                                    <a href="<?php echo bloginfo('home')?>">
                                                        <img src="<?php echo get_field('header_logo','option')?>"/>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="widget widget-static-block">
                                                <div class="arw-dots-block-footer-payment">
                                                    <div class="block block-payment">
                                                        <div class="block-title" style="padding-bottom:0;">
                                                            Địa chỉ: 
                                                        </div>
                                                        <div class="block-content" style="padding-top:5px;">
                                                            <?php echo get_field('company_address','option');?>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div> 

                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                    <div class="widget widget-static-block">
                                        <div class="arw-dots-block-footer-2">
                                            <div class="block block-list">
                                                <div class="block-title">
                                                    <strong>
                                                        <span>Trụ sở chính</span>
                                                    </strong>
                                                </div>
                                                <?php
                                                    $strip = array('<p>','</p>'); // search for <p>
                                                ?>
                                                <div class="block-content">
                                                   <p>
                                                        <label>Tên công ty:</label>
                                                        <span> <?php echo get_field('header_title','option');?></span>
                                                   </p>
                                                   <p>
                                                        <label>Hotline:</label>
                                                        <span> <?php echo str_replace($strip,'',get_field('hotline','option'));?></span>
                                                   </p>
                                                   <p>
                                                        <label>Email:</label>
                                                        <span> <?php echo str_replace($strip,'',get_field('company_email','option'));?></span>
                                                   </p>
                                                   <p>
                                                        <label>Điện thoại:</label>
                                                        <span> <?php echo str_replace($strip,'',get_field('phone_number','option'));?></span>
                                                   </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                    <div class="widget widget-static-block">
                                        <div class="arw-dots-block-footer-3">
                                            <div class="block block-list">
                                                <div class="block-title">
                                                    <strong>
                                                        <span>Chăm sóc khách hàng</span>
                                                    </strong>
                                                </div>
                                                <div class="block-content">
                                                    <p>
                                                        <label>Sale Email:</label>
                                                        <span> <?php echo str_replace($strip,'',get_field('sale_email','option'));?></span>
                                                   </p>
                                                   <p>
                                                        <label>Địa chỉ:</label>
                                                        <span> <?php echo str_replace($strip,'',get_field('company_address_2','option'));?></span>
                                                   </p>
                                                   <p>
                                                        <label>Hotline:</label>
                                                        <span> <?php echo str_replace($strip,'',get_field('hotline','option'));?></span>
                                                   </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>    <div class="footer-copyright">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <address>&copy; 2015 <strong><?php echo get_field('header_title','option');?></strong>.
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="arw-dots-block-footer-social-network">
                                    <div class="block block-social-network">
                                        <div class="block-content text-right">
                                            <ul class="list-inline">
                                                <li>
                                                    <a href="<?php echo get_field('facebook','option');?>" target="_blank"><i class="fa fa-facebook"></i></a>
                                                </li>
                                                <li>
                                                    <a href="<?php echo get_field('twitter','option');?>" target="_blank"><i class="fa fa-twitter"></i></a>
                                                </li>
                                                <li>
                                                    <a href="<?php echo get_field('youtube','option');?>" target="_blank"><i class="fa fa-youtube"></i></a>
                                                </li>
                                                <li>
                                                    <a href="<?php echo get_field('google_plus','option');?>" target="_blank"><i class="fa fa-google-plus"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>


        </div>
    </div>
</body>
</html>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/validate.payment.js"></script>

<script type="text/javascript">
function addcart( id )
{   
    var url_ajax='<?php bloginfo("url");?>/wp-admin/admin-ajax.php';    
    var data={'productID': id ,'action':'my_cart_special_action','security':'<?php echo encrypt('Security');?>'};
    jQuery.post(url_ajax,data,function(response){
        if(!isNaN(response)){
            jQuery("#product_count").text(jQuery.trim(response));
            alert("Đã thêm vào giỏ hàng");
        }
        else
        {
            alert(jQuery.trim(response));
        }

    });
}
</script>