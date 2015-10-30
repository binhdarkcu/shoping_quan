<div class="one_tab" id="tab_3_home_featured_tab_contents">
        <div class="product-list-index width5item">
            <ul class="products-slide products-grid arw-1-col arw-row">
                <li class="arw-col item">
                <?php
                    $i = 0;
                    $args_newhome = array(
                        'post_type'      => 'post',
                        'posts_per_page' => 12,
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
                       
                    </div>
                    <div class="product-info">
                        <div class="row no-margin">
                            <div class="col-xs-12 arw-info-separator">
                                <h2 class="product-name">
                                    <a href="<?php echo get_the_permalink($newhome->ID)?>" title="<?php echo get_the_title($newhome->ID);?>">
                                        <span title="SW3 SmartWatch 3"><?php echo get_the_title($newhome->ID);?></span>
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
                    </div>
                </div>
                <?php }?>
            </li>
           
            </ul>
        </div>
       
    </div>