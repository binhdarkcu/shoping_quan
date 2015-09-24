<?php get_header();?>

<div class="main-container col1-layout">
    <div class="main">
        <div class="container">
            <div class="row">
                <div class="col-main col-xs-12 col-sm-12 col-md-12">
                    <div class="std">
                        <div class="widget widget-static-block">
                            <div class="arw_dots_block_category_slideshow margin-top-30">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <?php get_sidebar('home')?>
                                    </div>
                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <?php get_template_part('tpl','slider')?>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="widget widget-static-block">
                            <div class="arw_dots_block_banner_1">
                                <div class="row">
                                    <?php
                                        $args_threehome = array(
                                            'post_type'      => 'three_product_home',
                                            'posts_per_page' => 3
                                        );
                                        $querythreeHome = get_posts($args_threehome);
                                       
                                        foreach ($querythreeHome as $newhome) {
                                            $url = get_field('image_for_slider',$newhome->ID);
                                            $bigImg = wp_get_attachment_url( get_post_thumbnail_id($newhome->ID) );
                                    ?>
                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                        <div class="block block-banner">
                                            <div class="block-content background-2dc1bf padding-top-20 padding-bottom-20 min-height-220 hover-effect-apollo">
                                                <div class="row no-margin">
                                                    <div class="col-xs-6 text-uppercase text-center no-padding margin-top-30">
                                                        <p class="font-size-16 no-margin" style="padding-left: 5px;"><a href="<?php echo get_the_permalink($newhome->ID);?>" class="text-color-white"><?php echo get_the_title($newhome->ID);?></a></p>
                                                        <p class="font-size-30 font-weight-900 margin-bottom-5"><a href="#" class="text-color-white"><?php echo $newhome->post_content;?></a></p>
                                                        <p class="font-size-16"><a href="#" class="text-color-white">Xem ngay</a></p>
                                                    </div>
                                                    <div class="col-xs-6 no-padding margin-top-21">
                                                        <a href="<?php echo get_the_permalink($newhome->ID);?>">
                                                            <img style="height: 180px;" class="img-thumbnail" src="<?php echo $bigImg;?>" alt="<?php echo get_the_title($newhome->ID);?>" />
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="arw_tab_slider">
                                    <ul class="slider-tab">
                                        <li data-enable-countdown="0" title="New Arrivals" id="tab_2_home_new_arrivals_tab" class="one_tab active first">
                                            <span><span>Sản phẩm mới</span></span>
                                        </li>
                                        <!--
                                        -->
                                    </ul>
                                    <div class="one_tab" id="tab_2_home_new_arrivals_tab_contents">
                                        <div class="product-list-index">
                                            <ul class="products-slide products-grid arw-1-col arw-row">
                                                <li class="arw-col item">
                                                    <?php
                                                        $i = 0;
                                                        $args_newhome = array(
                                                            'post_type'      => 'post',
                                                            'posts_per_page' => 12,
                                                            'meta_query' => array(
                                                                array(
                                                                    'key' => 'new_product_home', // name of custom field
                                                                    'value' => '"new_display_home"', // matches exactly "red"
                                                                    'compare' => 'LIKE'
                                                                )
                                                            )
                                                        );
                                                        $querynewHome = get_posts($args_newhome);
                                                       
                                                        foreach ($querynewHome as $newhome) {
                                                            $i++;
                                                            $url = get_field('image_for_slider',$newhome->ID);
                                                            $bigImg = wp_get_attachment_url( get_post_thumbnail_id($newhome->ID) );
                                                            $price = get_field('product_price',$newhome->ID);
                                                            $price = number_format( $price, 0, ',', '.');
                                                    ?>
                                                    <div class="wrapper-item">
                                                        <input type="hidden" value="22" name="product" />
                                                        <div class="wrapper-item-inner  transform-effect vertical-effect skin1-effect">
                                                            <div class="outer-image">
                                                                <a href="<?php echo get_the_permalink($newhome->ID)?>" title="<?php echo get_the_title($newhome->ID);?>" class="product-image">
                                                                    <img class="front product-collection-image" src="<?php echo $bigImg;?>" alt="<?php echo get_the_title($newhome->ID);?>" />
                                                                    <?php
                                                                    // check if the repeater field has rows of data
                                                                    if( have_rows('description_image') ){
                                                                        while ( have_rows('description_image') ) : the_row();
                                                                        $image_desc = get_sub_field('product_images_sub');
                                                                    ?>
                                                                    <img class="back" src="<?php echo $image_desc;  ?>" alt="" />
                                                                    <?php  endwhile; }?>
                                                                </a>
                                                            </div>
                                                            
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="row no-margin">
                                                                <div class="col-xs-8 arw-info-separator">
                                                                    <h2 class="product-name">
                                                                        <a href="<?php echo get_the_permalink($newhome->ID)?>" title="SW3 SmartWatch 3">
                                                                            <span title="SW3 SmartWatch 3"><?php echo get_the_title($newhome->ID);?></span>
                                                                        </a>
                                                                    </h2>
                                                                    <div class="ratings">
                                                                        <div class="rating-box">
                                                                            <div class="rating" style="width:0%"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-xs-4 no-padding">



                                                                    <div class="price-box">
                                                                        <span class="regular-price" id="product-price-22">
                                                                            <span class="price" content="<?php echo $price;?>"><?php echo $price;?> VMĐ</span>
                                                                        </span>

                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <?php }?>
                                                </li>
                                               
                                            </ul>
                                            <div class="viewall" style="padding-bottom: 50px;">
                                                <a style="font-weight: bold;font-size: 15px;float: right" href="<?php echo bloginfo('home')?>/san-pham">Xem tất cả</a>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="ajax_loading_tab"></div>
                                    <div class="backgroundajax_tab"></div>
                                </div>

                            </div>
                        </div>
                        

                        <div class="widget widget-static-block">
                            <div class="arw_dots_block_featured_products_tab">
                                <div class="row">
                                    
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="arw_tab_slider">
                                            <ul class="slider-tab">
                                                <li data-enable-countdown="0" title="Featured Product" id="tab_3_home_featured_tab" class="one_tab active first">
                                                    <span><span>Sản phẩm nổi trội</span></span>
                                                </li>
                                                <!--
                                                -->
                                            </ul>
                                            <?php get_template_part('tpl','special-product')?>
                                            <div class="viewall" style="padding-bottom: 50px;">
                                                <a style="font-weight: bold;font-size: 15px;float: right" href="<?php echo bloginfo('home')?>/san-pham">Xem tất cả</a>
                                            </div>
                                            <div class="ajax_loading_tab"></div>
                                            <div class="backgroundajax_tab"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php get_footer();?>
