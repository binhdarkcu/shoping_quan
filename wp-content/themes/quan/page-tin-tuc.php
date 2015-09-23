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
                                <strong>Tin tức</strong>
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
                            <h1>Tin tức</h1>
                       </div>
                        <div class="category-products">
                            
                        <ul class="products-list" id="product-list-2046808">
                            <?php
                                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                                //$query_category = get_category_post($category->name);
                                query_posts( array ( 'post_type'      => 'hot_news', 'posts_per_page' => 10,'paged' => $paged ) );
                                while (have_posts()) : the_post();
                                //if(have_posts($query_category->$post)): while(have_posts($query_category->$post)): the_post($query_category->$post);
                                    $url = get_field('image_for_slider',get_the_ID());
                                    $bigImg = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()) );
                                    $price = get_field('product_price',get_the_ID());
                                    $price = number_format( $price, 0, ',', '.');
                            ?>
                            <li class="item">
                                <input type="hidden" value="4" name="product">
                                <div class="inner-item">
                                    <div class="outer-image">
                                        <a href="<?php echo get_the_permalink(get_the_ID())?>" title="<?php echo get_the_title(get_the_ID())?>" class="product-image">
                                            <img class="front product-collection-image" src="<?php echo $bigImg;?>" alt="<?php echo get_the_title(get_the_ID())?>">
                                        </a>
                                    </div>
                                        <div class="product-shop">
                                            <div class="f-fix">
                                                <h2 class="product-name">
                                                    <a href="<?php echo get_the_permalink(get_the_ID())?>" title="<?php echo get_the_title(get_the_ID())?>">
                                                        <span><?php echo get_the_title(get_the_ID())?></span>
                                                    </a>
                                                </h2>


                                            <div class="desc std">
                                                  <p><?php echo wp_trim_words(get_content_by_id(get_the_ID()), 50);?>    </p>                               
                                                  <a href="<?php echo get_the_permalink(get_the_ID())?>" title="<?php echo get_the_title(get_the_ID())?>" class="link-learn">Chi tiết</a>
                                            </div>
                                                                                                    
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <?php endwhile;?>
                        </ul>
        <div class="paging">
            <?php echo wp_pagenavi(); ?>
            </div>
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
