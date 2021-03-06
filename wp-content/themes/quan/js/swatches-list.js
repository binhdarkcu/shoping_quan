/**
 * Magento
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License (AFL 3.0)
 * that is bundled with this package in the file LICENSE_AFL.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/afl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@magento.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade Magento to newer
 * versions in the future. If you wish to customize Magento for your
 * needs please refer to http://www.magento.com for more information.
 *
 * @category    design
 * @package     rwd_default
 * @copyright   Copyright (c) 2006-2014 X.commerce, Inc. (http://www.magento.com)
 * @license     http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 */

var ConfigurableSwatchesList = {
    swatchesByProduct: {},

    init: function()
    {
        var that = this;
        jQuery('.configurable-swatch-list li').each(function() {
            var $current_product = jQuery(this).closest('li.item');
            var image_type  = 'grid_image';
            if($current_product.parent('.products-grid').length > 0){
                image_type  = 'grid_image';
            }
            if($current_product.parent('.products-list').length > 0){
                image_type  = 'list_image';
            }
            that.initSwatch(this,$current_product,image_type);
            var $swatch = jQuery(this);

            if ($swatch.hasClass('filter-match')) {
                that.handleSwatchSelect($swatch,$current_product,image_type);
            }
        });
    },

    initSwatch: function(swatch,$product,image_type)
    {
        var that = this;
        var $swatch = jQuery(swatch);
        var productId;
        if (productId = $swatch.data('product-id')) {
            if (typeof(this.swatchesByProduct[productId]) == 'undefined') {
                this.swatchesByProduct[productId] = [];
            }
            this.swatchesByProduct[productId].push($swatch);

            $swatch.find('a').on('click', function() {
                that.handleSwatchSelect($swatch,$product,image_type);
                return false;
            });
        }
    },

    handleSwatchSelect: function($swatch,$product,image_type)
    {
        var productId = $swatch.data('product-id');
        var label;
        if (label = $swatch.data('option-label')) {
            ConfigurableMediaImages.swapListImageByOption(productId, label,$product,image_type);
        }

        jQuery.each(this.swatchesByProduct[productId], function(key, $productSwatch) {
            $productSwatch.removeClass('selected');
        });

        $swatch.addClass('selected');
    }
}

jQuery(document).on('configurable-media-images-init', function(){
    ConfigurableSwatchesList.init();
});
