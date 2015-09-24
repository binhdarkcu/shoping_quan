<div class="arw-toggle-sidebar" data-id="col-left"><span><i class="fa fa-angle-right"></i></span></div>
           <div class="sidebar-content no-accordion">
                <?php get_template_part('tpl','category');?>
                <!-- navigation EOF -->
            </div>
            <div class="block block-banner">
                <div class="block-title">
                    <strong><span>Quảng cáo</span></strong>
                </div>
                <div class="block-content" style="padding: 15px 0">
                    <?php
                        $args_banner = array(
                            'post_type'      => 'advertises',
                            'posts_per_page' => 1,
                            'order'          => 'asc'
                        );
                        $queryBanner = get_posts($args_banner);
                        foreach ($queryBanner as $ban) {
                            $bigImg = wp_get_attachment_url( get_post_thumbnail_id($ban->ID) );
                    ?>
                    <a href="<?php echo get_the_permalink($ban->ID)?>" title="<?php echo get_the_title($ban->ID);?>">
                        <img src="<?php echo $bigImg;?>" alt="<?php echo get_the_title($ban->ID);?>">
                    </a>
                    <?php }?>
                </div>
            </div>
            <div class="block block-tags">
                <div class="block-title">
                    <strong><span>Tags:</span></strong>
                </div>
                <div class="block-content">
                    <?php the_tags( '<ul class="tags-list"><li>', '</li><li>', '</li></ul>' ); ?>
                    
                    <div class="actions">
                        <a href="<?php echo get_bloginfo('home')?>/san-pham">Xem tất cả</a>
                    </div>
                </div>
            </div>
            <div class="block">
                <div class="block-title">
                    <strong><span>Hỗ trợ trực tuyến</span></strong>
                </div>
                <div class ="block-content">
                    <?php
                        $args_support = array(
                            'post_type'      => 'support_online',
                            'posts_per_page' => 10,
                            'order'          => 'asc'
                        );
                        $querySupport = get_posts($args_support);
                        foreach ($querySupport as $sup) {

                    ?>
                    <p style="padding-top:15px;">
                        <a href="ymsgr:sendim?baohotanthekim"><img src="http://opi.yahoo.com/online?u=baohotanthekim&amp;m=g&amp;t=1" border="0"></a>
                        <span style="display: block;"><?php echo get_the_title($sup->ID)?></span>
                    </p>
                    <?php }?>
                </div>
                
            </div>
        </div>
                </div>
            </div>
        </div>