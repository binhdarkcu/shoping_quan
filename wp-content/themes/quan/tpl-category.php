<div class="block block-nav hide-below-768">
	        <div class="block-title">
	            <strong><span>Danh mục</span></strong>
	        </div>
	        <div class="block-content">
	            <ul id="categories_nav_left" class="nav-accordion nav-categories">
	            	<?php 
	            	  $i=0;
    				get_the_categories();

						function get_the_categories( $parent = 0 ) 
						{
						    if(is_home()){
						    	$categories = get_categories( "exclude=20&number=7&hide_empty=0&parent=$parent" );
						    }else{
						    	$categories = get_categories( "exclude=20&hide_empty=0&parent=$parent" );
						    }

						    if ( $categories ) {
						        foreach ( $categories as $cat ) {
						        	$i++;
						            if ( $cat->category_parent == $parent ) {
					?>
										<li class="level0 nav-<?php echo $i;?> level-top parent">
						                    <a href="<?php echo get_category_link( $cat->term_id); ?>" class="level-top">
						                        <span><?php echo $cat->name;?></span>
						                    </a>
						                    <ul>
						                    	<?php get_the_categories( $cat->term_id );?>
						                    </ul>
						                </li>
					<?php
						            }
						        }
						    }
						}
					?>	
	            </ul>
	            <script type="text/javascript">
	                jQuery(document).ready(function () {
	                    jQuery(".nav-categories").arwAccordionMenu({
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