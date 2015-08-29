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
                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                        <div class="block block-banner">
                                            <div class="block-content background-b7dd52 padding-top-20 padding-bottom-20 min-height-220 hover-effect-apollo">
                                                <div class="row no-margin">
                                                    <div class="col-xs-6 text-uppercase text-center no-padding margin-top-70">
                                                        <p class="font-size-16 no-margin"><a href="#" class="text-color-white">Best buy digital</a></p>
                                                        <p class="font-size-30 font-weight-900 margin-bottom-5"><a href="#" class="text-color-white">Camera</a></p>
                                                        <p class="font-size-16"><a href="#" class="text-color-white">Clearance</a></p>
                                                    </div>
                                                    <div class="col-xs-6 no-padding margin-top-21">
                                                        <a href="#">
                                                            <img class="img-thumbnail" src="http://m2.arexmage.com/arw_dots/media/wysiwyg/arw/dots/_banners/banner-1-1.png" alt="banner image" />
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                        <div class="block block-banner">
                                            <div class="block-content background-acd7d6 min-height-220 hover-effect-apollo">
                                                <div class="text-uppercase text-left margin-top-80 padding-left-20">
                                                    <p class="font-size-18 no-margin letter-spacing-5"><a href="#" class="text-color-white">Sale up to</a></p>
                                                    <p class="font-size-30 font-weight-900 letter-spacing-1"><a href="#" class="text-color-white">20% Off</a></p>
                                                </div>
                                                <div class="position-top-right size-half-width">
                                                    <a href="#">
                                                        <img class="img-thumbnail padding-right-20" src="http://m2.arexmage.com/arw_dots/media/wysiwyg/arw/dots/_banners/banner-1-2.png" alt="banner image" />
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                        <div class="block block-banner">
                                            <div class="block-content background-72e0f7 min-height-220 hover-effect-apollo">
                                                <div class="position-bottom-left">
                                                    <a href="#">
                                                        <img class="img-thumbnail" src="http://m2.arexmage.com/arw_dots/media/wysiwyg/arw/dots/_banners/banner-1-3.png" alt="banner image" />
                                                    </a>
                                                </div>
                                                <div class="f-right text-uppercase text-right margin-top-15 margin-right-20">
                                                    <p class="font-size-24 font-weight-900"><a href="#" class="text-color-white">Ipod nano</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
                                                            'posts_per_page' => 15,
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
                                                            <div class="actions">
                                                                <button data-toggle="tooltip" data-placement="left" onclick="setLocation('http://m2.arexmage.com/arw_dots/checkout/cart/add/uenc/aHR0cDovL20yLmFyZXhtYWdlLmNvbS9hcndfZG90cy8,/product/22/form_key/fY84n4ctdiOHbUdq/')" class="button btn-cart" title="Add to Cart"><span><span class="icon_bag"></span></span></button>
                                                                <!--
                                                                -->
                                                                <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/wishlist/index/add/product/22/form_key/fY84n4ctdiOHbUdq/" class="button link-wishlist" title="Add to Wishlist"><span class="fa fa-heart"></span></a>
                                                                <!--
                                                                -->
                                                                <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/catalog/product_compare/add/product/22/uenc/aHR0cDovL20yLmFyZXhtYWdlLmNvbS9hcndfZG90cy8,/form_key/fY84n4ctdiOHbUdq/" class="button link-compare" title="Add to Compare"><span class="fa fa-bar-chart"></span></a>
                                                                <!--
                                                                -->
                                                                <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/arexworks/quickview/index/product_id/22/" class="button link-quickview" title="Quick View"><span class="fa fa-search-plus"></span></a>
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
                                            <div class="one_tab" id="tab_3_home_featured_tab_contents">
                                                <div class="product-list-index">
                                                    <ul class="products-slide products-grid arw-1-col arw-row">
                                                        <li class="arw-col item">
                                                        <?php
                                                            $i = 0;
                                                            $args_newhome = array(
                                                                'post_type'      => 'post',
                                                                'posts_per_page' => 15,
                                                                'meta_query' => array(
                                                                    array(
                                                                        'key' => 'spot_product_home', // name of custom field
                                                                        'value' => '"spot_product_home"', // matches exactly "red"
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
                                                                <div class="actions">
                                                                    <button data-toggle="tooltip" data-placement="left" onclick="setLocation('http://m2.arexmage.com/arw_dots/checkout/cart/add/uenc/aHR0cDovL20yLmFyZXhtYWdlLmNvbS9hcndfZG90cy8,/product/22/form_key/fY84n4ctdiOHbUdq/')" class="button btn-cart" title="Add to Cart"><span><span class="icon_bag"></span></span></button>
                                                                    <!--
                                                                    -->
                                                                    <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/wishlist/index/add/product/22/form_key/fY84n4ctdiOHbUdq/" class="button link-wishlist" title="Add to Wishlist"><span class="fa fa-heart"></span></a>
                                                                    <!--
                                                                    -->
                                                                    <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/catalog/product_compare/add/product/22/uenc/aHR0cDovL20yLmFyZXhtYWdlLmNvbS9hcndfZG90cy8,/form_key/fY84n4ctdiOHbUdq/" class="button link-compare" title="Add to Compare"><span class="fa fa-bar-chart"></span></a>
                                                                    <!--
                                                                    -->
                                                                    <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/arexworks/quickview/index/product_id/22/" class="button link-quickview" title="Quick View"><span class="fa fa-search-plus"></span></a>
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
                                                </div>
                                               
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
