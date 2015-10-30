<?php get_header('category');?>

<div class="main-container col2-left-layout">
    <div class="arw_breadcrumbs">
        <div class="container">
                <div class="breadcrumbs">
                    <ul>
                        <li class="home">
                                <a href="<?php echo get_bloginfo('home')?>" title="Go to Home Page">Trang chủ</a>
                                            <span><i class="fa fa-caret-right"></i></span>
                            </li>
                        <li class="category3">
                                <strong>Tất cả các sản phẩm</strong>
                        </li>
                   </ul>
                </div>
            </div>
        </div>

        <div class="main">
           <div class="container">
                <div class="row">
                   <div class="col-main col-xs-12 col-sm-12 col-md-9 col-md-push-3">
                       <div class="page-title category-title">
                            <h1>Sản phẩm</h1>
                       </div>
                       <script>
                        jQuery(document).ready(function(){
                            jQuery('#listtype2').click(function(){
                                jQuery('#viewlisttype2').hide();
                                jQuery('#viewlisttype3').show();
                                jQuery('.products-grid').addClass('viewtype2').removeClass('viewtype3');
                            });
                            jQuery('#listtype3').click(function(){
                                jQuery('#viewlisttype3').hide();
                                jQuery('#viewlisttype2').show();
                                jQuery('.products-grid').addClass('viewtype3').removeClass('viewtype2');
                            });
                        });
                       </script>
                        <div class="category-products">
                            <div class="toolbar">
                                <div class="sorter">
                                     <p class="view-mode" id="viewlisttype2" style="display: block;">
                                         <label>Xem theo dạng</label>
                                         <strong data-toggle="tooltip" title="" class="grid" data-original-title="Xem dạng lưới">
                                            <i class="icon_grid-3x3"></i>
                                         </strong>
                                         <a id="listtype2" data-toggle="tooltip" href="javascript:void(0)" title="" class="list" data-original-title="Xem dạng danh sách">
                                            <i class="icon_ul"></i>
                                         </a>
                                    </p>
                                    <p class="view-mode" id="viewlisttype3" style="display: none;">
                                         <label>Xem theo dạng</label>
                                         <a id="listtype3" data-toggle="tooltip" href="javascript:void(0)" title="" class="list" data-original-title="Xem dạng danh sách">
                                            <i class="icon_ul"></i>
                                         </a>
                                         <strong data-toggle="tooltip" title="" class="grid" data-original-title="Xem dạng lưới">
                                            <i class="icon_grid-3x3"></i>
                                         </strong>
                                         
                                    </p>
                                </div>
                                
                            </div>
                        <ul class="products-grid arw-4-col arw-row" id="product-list-2046808">
                            <?php
                                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                                //$query_category = get_category_post($category->name);
                                query_posts( array ( 'post_type'      => 'post', 'posts_per_page' => 10 ,'paged' => $paged) );
                                while (have_posts()) : the_post();
                                //if(have_posts($query_category->$post)): while(have_posts($query_category->$post)): the_post($query_category->$post);
                                    $url = get_field('image_for_slider',get_the_ID());
                                    $bigImg = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()) );
                                    $price = get_field('product_price',get_the_ID());
                                    $price = number_format( $price, 0, ',', '.');
                            ?>
                            <li class="arw-col item">
                                <div class="wrapper-item">
                                    <input type="hidden" value="1" name="product">
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
                                        <!--div class="actions">
                                            <button data-toggle="tooltip" data-placement="left" onclick="return false;" class="button btn-cart" title="" amEvent="setLocation('http://m2.arexmage.com/arw_dots/checkout/cart/add/uenc/aHR0cDovL20yLmFyZXhtYWdlLmNvbS9hcndfZG90cy90di12aWRlby5odG1s/product/1/form_key/rw9pascLkSeB53uc/')" data-original-title="Add to Cart">
                                                <span><span class="icon_bag"></span></span>
                                            </button>
                                            <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/wishlist/index/add/product/1/form_key/rw9pascLkSeB53uc/" class="button link-wishlist" title="" data-original-title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                            <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/catalog/product_compare/add/product/1/uenc/aHR0cDovL20yLmFyZXhtYWdlLmNvbS9hcndfZG90cy90di12aWRlby5odG1s/form_key/rw9pascLkSeB53uc/" class="button link-compare" title="" data-original-title="Add to Compare"><span class="fa fa-bar-chart"></span></a>
                                            <a data-toggle="tooltip" data-placement="left" href="http://m2.arexmage.com/arw_dots/arexworks/quickview/index/product_id/1/" class="button link-quickview" title="" data-original-title="Quick View"><span class="fa fa-search-plus"></span></a>                        
                                        </div-->
                                    </div>
                                    <div class="product-info-product">
                                        <div class="row no-margin">
                                            <div class="col-xs-12 arw-info-separator">
                                                <h2 class="product-name">
                                                    <a href="<?php echo get_the_permalink($newhome->ID)?>" title="<?php echo get_the_title($newhome->ID);?>">
                                                        <span title="<?php echo get_the_title($newhome->ID);?>"><?php echo get_the_title($newhome->ID);?></span>
                                                    </a>
                                                </h2>
                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <?php $rating_star = get_field('rating_star',$newhome->ID);?>
                                                        <div class="rating" style="width:<?php echo $rating_star*20;?>%"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 arw-info-separator">
                                                <div class="price-box">
                                                    <span class="regular-price" id="product-price-22" style="padding-bottom: 5px; margin-top: 0px;">
                                                        <span class="price" content="<?php echo $price;?>"><?php echo $price;?> VNĐ</span>
                                                    </span>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="descofProduct">
                                            <?php echo wp_trim_words(get_content_by_id($newhome->ID), 50);?> 
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <?php endwhile;?>
                            
                        </ul>
            <div class="paging">
            <?php echo wp_pagenavi(); ?>
            </div>
            <style>
            .wp-pagenavi a, .wp-pagenavi span {
                padding: 5px; margin-right: 10px;
                font-size: 15px; color: #000; text-decoration: none;
                border: 1px solid #ccc; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;
                }
            .wp-pagenavi a:hover, .wp-pagenavi span.current {
                background: #e1e1e1;
                color: #000;
                border: 1px solid #AFAFAF;
                }
            .wp-pagenavi span.current { font-weight: bold; }
            </style>
    <script type="text/javascript">
        jQuery(document).ready(function(){
            arexworks.Frontend.initOwlGalleryImage(jQuery('#product-list-2046808 .product-image.product-image-slideshow .wrapper-slideshow'));
                        jQuery(document).trigger('configurable-media-images-init');
        });
    </script>
</div>
   </div>
   <div class="col-left sidebar col-xs-12 col-sm-12 col-md-3 col-md-pull-9">
        <?php get_sidebar('san-pham')?>
    </div>
</div>
        
<?php get_footer();?>
