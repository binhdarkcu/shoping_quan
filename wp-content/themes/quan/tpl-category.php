<div class="block block-nav hide-below-768">
	        <div class="block-title">
	            <strong><span>Loại sản phẩm</span></strong>
	        </div>
	        <div class="block-content">
	            <ul id="categories_nav_left_48320002" class="nav-accordion nav-categories">
	            	<?php 
	            	 $i=0;
	            	 $args_category = array(
						'orderby'                  => 'name',
						'order'                    => 'ASC',
						'hide_empty'               => 1,
						'hierarchical'             => 1,
						'exclude'                  => '',
						'include'                  => '',
						'number'                   => '7',
						'taxonomy'                 => 'category',
						'pad_counts'               => false 

					); 
					  $categories = get_categories($args_category); 
					  foreach ( $categories as $category ) {
					  	$i++;
					?>
					<li class="level0 nav-<?php echo $i;?> level-top parent">
	                    <a href="<?php echo get_category_link( $category->term_id); ?>" class="level-top">
	                        <span><?php echo $category->name;?></span>
	                    </a>
	                </li>
					
					<?php
						}
					 ?>
	                
	            </ul>
	            <script type="text/javascript">
	                jQuery(document).ready(function () {
	                    jQuery("#categories_nav_left_48320002").arwAccordionMenu({
	                        accordion: true,
	                        speed: 400,
	                        closedSign: 'collapse',
	                        openedSign: 'expand',
	                        mouseType: 0,
	                        easing: 'easeInOutQuad'
	                    });
	                });
	            </script>
	        </div>
	    </div>