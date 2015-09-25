<?php get_header('category');?>
<?php
	$category = get_queried_object();
?>  
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
			                    <strong><?php echo $category->name;?></strong>
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
					        <h1><?php echo $category->name;?></h1>
					   </div>
    					<div class="category-products">
					        
                        <ul class="products-grid arw-3-col arw-row" id="product-list-2046808">
                        	<?php
								//$query_category = get_category_post($category->name);
                                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                                $array_cat = array ( 'category_name' => $category->slug, 'posts_per_page' => -1 ,'paged' => $paged) ;
								query_posts($array_cat );
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
                                                        <span class="price" content="<?php echo $price;?>"><?php echo $price;?> VNĐ</span>
                                                    </span>

                                                </div>

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
