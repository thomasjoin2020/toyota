/* Control Panel Settings */
<?php if (is_array($selectors)): foreach ($selectors as $selector): ?>
    <?php if (count($selector['properties'])): ?>
        <?php echo $selector['selector'] . "{" . implode($selector['properties'], ';') . "}" . PHP_EOL; ?>
    <?php endif; ?>
<?php endforeach; endif; ?>


/* Swipebox Loader */
<?php if ($this->journal2->settings->get('ajax_loader')): ?>
    #swipebox-slider .slide {
    background-image: url('image/<?php echo $this->journal2->settings->get('ajax_loader'); ?>');
    }
    .mfp-iframe-scaler iframe{
    background-image: url('image/<?php echo $this->journal2->settings->get('ajax_loader'); ?>');
    background-repeat: no-repeat;
    background-position: center;
    }
    .social{
    background-image: url('image/<?php echo $this->journal2->settings->get('ajax_loader'); ?>');
    }
<?php endif; ?>

@media only screen and (min-width: 760px){
.ui-pnotify{
  width:<?php echo $this->journal2->settings->get('notification_width', 350); ?>px !important;
}
}

<?php if ($this->journal2->settings->get('leading_element')): ?>
    .home-page #container:before{
    content: url('image/<?php echo $this->journal2->settings->get('leading_element'); ?>');
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_page_qty_status', 'on') === 'off'): ?>
    .product-info .right .cart div .qty{
      display:none;
    }
    .product-info .right .cart div .button{
      width:100%;
    }
    .quickview #button-cart {
      width: calc(98% - 40px);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('hide_cart', 'off') === 'on'): ?>
    .journal-cart{
    display:none;
    }
<?php endif; ?>

/* Site width */
#container, #header, #footer, .bottom-footer > div, .bottom-footer.boxed-bar {
max-width: <?php echo $this->journal2->settings->get('site_width', 1024); ?>px;
}

.extended-container:before{
display:<?php echo $this->journal2->settings->get('breadcrumb_status'); ?>;
}

<?php if($this->journal2->settings->get('bottom_caption', 'on') === 'off'): ?>
    div.lg-sub-html{
        top:0;
        bottom:auto;
        background-color:<?php echo $this->journal2->settings->get('gallery_bars_bg'); ?>;
    }
    .lg-outer.lg-pull-caption-up.lg-thumb-open .lg-sub-html{
        bottom:auto;
    }
    .lg-toolbar{
        background-color:transparent;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('pp_bottom_caption', 'on') === 'off'): ?>
    .product-page div.lg-sub-html{
        top:0;
        bottom:auto;
        padding: 13px 95px 13px 70px;
        background-color:<?php echo $this->journal2->settings->get('pp_gallery_bars_bg'); ?>;
    }
    .product-page .lg-outer.lg-pull-caption-up.lg-thumb-open .lg-sub-html{
        bottom:auto;
    }
    .product-page .lg-toolbar{
        background-color:transparent;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('pp_bottom_caption', 'on') === 'on'): ?>
    .product-page div.lg-sub-html{
        top:auto;
        bottom:0;
        padding: 13px 70px;
        background-color:<?php echo $this->journal2->settings->get('pp_gallery_caption_bar_bg'); ?>;
    }
    .product-page .lg-toolbar{
        background-color:<?php echo $this->journal2->settings->get('pp_gallery_bars_bg'); ?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_page_options_sold_count_position', 'none') === 'inline-block'): ?>
    .product-sold-count.ps-left{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_page_title_overflow', 'on') === 'off'): ?>
    .product-page .heading-title{
    white-space:normal;
    height:auto;
    min-height:40px;
    line-height:1.2;
    padding-bottom:10px;
    padding-top:10px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('category_page_title_overflow', 'on') === 'off'): ?>
    .category-page .heading-title{
    white-space:normal;
    height:auto;
    min-height:40px;
    line-height:1.2;
    padding-bottom:10px;
    padding-top:10px;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('hide_category_image', '1') === '0'): ?>
    .category-info .image{
    display:none;
    }
<?php endif; ?>


/*Notification Position*/

<?php if($this->journal2->settings->get('notification_position', 'top-right') === 'top-left'): ?>
    .ui-pnotify{
    left:20px;
    }
    html[dir="rtl"] .ui-pnotify{
    right:20px;
    left:auto;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('notification_position', 'top-right') === 'top-center'): ?>
    .ui-pnotify{
    left:50%;
    transform: translateX(-50%);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('notification_position', 'top-right') === 'top-right'): ?>
    .ui-pnotify{
    right:20px;
    }
    html[dir="rtl"] .ui-pnotify{
    left:20px;
    right:auto;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('notification_position', 'top-right') === 'center'): ?>
    .ui-pnotify{
    left:50%;
    top:50% !important;
    transform: translate(-50%, -50%);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('notification_shadow', '0') === '1'): ?>
    .ui-pnotify{
    box-shadow:0px 1px 12px rgba(0, 0, 0, 0.2);
    }
<?php endif; ?>



<?php if($this->journal2->settings->get('notification_show_close', 'hover') === 'hover'): ?>
    .ui-pnotify:hover .ui-pnotify-closer{
    opacity:1;
    }
<?php endif; ?>
<?php if($this->journal2->settings->get('notification_show_close', 'hover') === 'always'): ?>
    .ui-pnotify-closer{
    opacity:1;
    }
<?php endif; ?>
<?php if($this->journal2->settings->get('notification_show_close', 'hover') === 'never'): ?>
    .ui-pnotify-closer:hover{
    display:none;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('breadcrumb_align', 'left') === 'left'): ?>
    .breadcrumb{
    text-align:left;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('breadcrumb_align', 'left') === 'center'): ?>
    .breadcrumb{
    text-align:center
    }
    html[dir="rtl"] .breadcrumb{
    text-align:center;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('breadcrumb_align', 'left') === 'right'): ?>
    .breadcrumb{
    text-align:right;
    }
     html[dir="rtl"] .breadcrumb{
    text-align:left;
    }
<?php endif; ?>


/* Product Grid Shadow */

<?php if($this->journal2->settings->get('product_grid_box_shadow', 'none') === 'default' && $this->journal2->settings->get('product_grid_shadow_2', 'hover') === 'hover'): ?>
    .product-grid-item:hover .product-wrapper{
    box-shadow: 0 0 18px rgba(0, 0, 0, 0.3);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_box_shadow', 'none') === 'default' && $this->journal2->settings->get('product_grid_shadow_2', 'hover') === 'always'): ?>
    .product-grid-item  .product-wrapper{
    box-shadow: 0 0 18px rgba(0, 0, 0, 0.3);
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('product_grid_box_shadow', 'none') === 'custom' && $this->journal2->settings->get('product_grid_shadow_2', 'hover') === 'always'): ?>
    .product-grid-item  .product-wrapper{
    box-shadow: <?php echo $this->journal2->settings->get('product_grid_shadow_custom');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_box_shadow', 'none') === 'custom' && $this->journal2->settings->get('product_grid_shadow_2', 'hover') === 'hover'): ?>
    .product-grid-item:hover .product-wrapper{
    box-shadow: <?php echo $this->journal2->settings->get('product_grid_shadow_custom');?>;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('carousel_product_grid_box_shadow', 'inherit') === 'custom' && $this->journal2->settings->get('carousel_product_grid_shadow_2', 'hover') === 'hover'): ?>
    .journal-carousel .product-grid-item:hover .product-wrapper{
    box-shadow: <?php echo $this->journal2->settings->get('carousel_product_grid_shadow_custom');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('carousel_product_grid_box_shadow', 'inherit') === 'custom' && $this->journal2->settings->get('carousel_product_grid_shadow_2', 'hover') === 'always'): ?>
    .journal-carousel .product-grid-item .product-wrapper{
    box-shadow: <?php echo $this->journal2->settings->get('carousel_product_grid_shadow_custom');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('carousel_product_grid_box_shadow', 'inherit') === 'none'): ?>
    .journal-carousel .product-grid-item .product-wrapper{
    box-shadow: none !important;
    }
<?php endif; ?>



<?php if($this->journal2->settings->get('cs_product_grid_box_shadow', 'inherit') === 'custom' && $this->journal2->settings->get('cs_product_grid_shadow_2', 'hover') === 'hover'): ?>
    .custom-sections .product-grid-item .product-wrapper:hover{
    box-shadow: <?php echo $this->journal2->settings->get('cs_product_grid_shadow_custom');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('cs_product_grid_box_shadow', 'inherit') === 'custom' && $this->journal2->settings->get('cs_product_grid_shadow_2', 'hover') === 'always'): ?>
    .custom-sections .product-grid-item .product-wrapper{
    box-shadow: <?php echo $this->journal2->settings->get('cs_product_grid_shadow_custom');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('cs_product_grid_box_shadow', 'inherit') === 'none'): ?>
    .custom-sections .product-grid-item .product-wrapper{
    box-shadow: none !important;
    }
<?php endif; ?>




<?php if($this->journal2->settings->get('product_grid_latest_label_status', 'block') === 'none'): ?>
    .product-grid-item .image .label-latest + .label-sale{
    top: 5px;
    margin-top: 0;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('left_column_on_tablet', 'on') === 'off'): ?>
    @media only screen and (min-width : 760px) and (max-width: 1024px) {
    #column-left{
    display: none;
    }
    #column-left + #content,
    #column-left + #column-right + #content {
    margin-left:0 !important;
    }
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('right_column_on_tablet', 'on') === 'off'): ?>
    @media only screen and (min-width : 760px) and (max-width: 1024px) {
    #column-right{
    display: none;
    }
    #column-right + #content,
    #column-left + #column-right + #content {
    margin-right:0 !important;
    }
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('product_grid_button_icon_display', 'text') === 'text'): ?>
    .product-grid-item .cart .button-left-icon:before{
      display:none;
    }
<?php endif; ?>

.product-grid-item .enquiry-button .button i{
  color:<?php echo $this->journal2->settings->get('product_grid_button_icon:color');?>;
}
.product-list-item .enquiry-button .button i{
  color:<?php echo $this->journal2->settings->get('product_list_button_icon:color');?>;
}

footer .contacts > div > span .contact-icon:hover{
  background-color:<?php echo $this->journal2->settings->get('contacts_icon_bg_hover');?>;
}


<?php if($this->journal2->settings->get('product_grid_button_icon_display', 'text') === 'icon'): ?>
    .product-grid-item .cart .button-left-icon:before{
    float:none;
    }
    .product-grid-item .cart .button-right-icon:before{
    margin-left:0;
    }
    .product-grid-item .cart .button-cart-text{
    display:none;
    }
    .product-grid-item .cart .button[data-hint]:after,
    .product-grid-item .cart .hint--top:before{
    display:block;
    }
    .product-grid-item .cart .hint--top:before{
    border-top-color: <?php echo $this->journal2->settings->get('product_grid_button_tooltip_bg_color');?>;
    }
    .product-grid-item .cart .hint--right:before{
    border-right-color: <?php echo $this->journal2->settings->get('product_grid_button_tooltip_bg_color');?>;
    }
    .product-grid-item .cart .hint--left:before{
    border-left-color: <?php echo $this->journal2->settings->get('product_grid_button_tooltip_bg_color');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_button_icon_display', 'text') === 'both'): ?>
    .product-grid-item .cart .button-left-icon::before,
    .product-grid-item .enquiry-button i::before{
    margin-right: 6px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_button_icon_position', 'left') === 'left'): ?>
    .product-grid-item .cart .button-right-icon{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_button_icon_position', 'left') === 'right'): ?>
    .product-grid-item .cart .button-left-icon{
    display:none !important;
    }
    .button-right-icon:before{
    margin-left: 6px;
    }
<?php endif; ?>



/* BLOG */

<?php if($this->journal2->settings->get('post_grid_button_icon_position', 'left') === 'right' || $this->journal2->settings->get('posts_grid_button_icon_position', 'left') === 'right'): ?>
    .post-button-left-icon{
    display:none;
    }
    .post-button-right-icon{
    display:inline;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('one_page_title_status', 'on') === 'off'): ?>
.one-page-checkout h1.heading-title{
  display:none;
}
<?php endif; ?>

<?php if($this->journal2->settings->get('post_grid_box_shadow', 'none') === 'none'): ?>
    .post-wrapper{
      box-shadow: none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_grid_box_shadow', 'none') === 'default' && $this->journal2->settings->get('post_grid_shadow_2', 'hover') === 'hover'): ?>
    .post-wrapper:hover{
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_grid_box_shadow', 'none') === 'default' && $this->journal2->settings->get('post_grid_shadow_2', 'hover') === 'always'): ?>
    .post-wrapper{
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_grid_box_shadow', 'none') === 'custom' && $this->journal2->settings->get('post_grid_shadow_2', 'hover') === 'hover'): ?>
    .post-wrapper:hover{
      box-shadow: <?php echo $this->journal2->settings->get('post_grid_shadow_custom');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_grid_box_shadow', 'none') === 'custom' && $this->journal2->settings->get('post_grid_shadow_2', 'hover') === 'always'): ?>
    .post-wrapper{
      box-shadow: <?php echo $this->journal2->settings->get('post_grid_shadow_custom');?>;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('posts_grid_box_shadow', 'none') === 'none'): ?>
    .post-item .post-wrapper{
      box-shadow: none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('posts_grid_box_shadow', 'none') === 'default' && $this->journal2->settings->get('posts_grid_shadow_2', 'hover') === 'hover'): ?>
    .post-item .post-wrapper{
      box-shadow: none;
    }
    .post-item .post-wrapper:hover{
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('posts_grid_box_shadow', 'none') === 'default' && $this->journal2->settings->get('posts_grid_shadow_2', 'hover') === 'always'): ?>
    .post-item .post-wrapper{
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('posts_grid_box_shadow', 'none') === 'custom' && $this->journal2->settings->get('posts_grid_shadow_2', 'hover') === 'hover'): ?>
    .post-item .post-wrapper{
      box-shadow: none;
    }
    .post-item .post-wrapper:hover{
      box-shadow: <?php echo $this->journal2->settings->get('posts_grid_shadow_custom');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('posts_grid_box_shadow', 'none') === 'custom' && $this->journal2->settings->get('posts_grid_shadow_2', 'hover') === 'always'): ?>
    .post-item .post-wrapper{
      box-shadow: <?php echo $this->journal2->settings->get('posts_grid_shadow_custom');?>;
    }
<?php endif; ?>



<?php if($this->journal2->settings->get('post_list_box_shadow', 'none') === 'none'): ?>
    .blog-list-view .post-wrapper{
      box-shadow: none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_list_box_shadow', 'none') === 'default' && $this->journal2->settings->get('post_list_shadow_2', 'hover') === 'hover'): ?>
    .blog-list-view .post-wrapper{
      box-shadow:none;
    }
    .blog-list-view .post-wrapper:hover{
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_list_box_shadow', 'none') === 'default' && $this->journal2->settings->get('post_list_shadow_2', 'hover') === 'always'): ?>
    .blog-list-view .post-wrapper{
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_list_box_shadow', 'none') === 'custom' && $this->journal2->settings->get('post_list_shadow_2', 'hover') === 'hover'): ?>
    .blog-list-view .post-wrapper{
      box-shadow:none;
    }
    .blog-list-view .post-wrapper:hover{
      box-shadow: <?php echo $this->journal2->settings->get('post_list_shadow_custom');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_list_box_shadow', 'none') === 'custom' && $this->journal2->settings->get('post_list_shadow_2', 'hover') === 'always'): ?>
    .blog-list-view .post-wrapper{
      box-shadow: <?php echo $this->journal2->settings->get('post_list_shadow_custom');?>;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('product_grid_details_tip', 'always') === 'hover'): ?>
    .product-details:before {
    visibility:hidden;
    opacity:0;
    transition: all 0.2s;
    }
    .product-grid-item:hover .product-details:before {
    visibility:visible;
    opacity:1;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_details_tip', 'always') === 'never'): ?>
    .product-details:before {
    display:none;
    }
<?php endif; ?>



/* Product Grid Quickview*/

<?php if($this->journal2->settings->get('product_grid_quickview_status', 'hover') === 'hover'): ?>
    .product-grid-item:hover .quickview-button {
    opacity: 1;
    visibility: visible;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_status', 'hover') === 'always'): ?>
    .product-grid-item .quickview-button {
    opacity: 1;
    visibility: visible;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_status', 'hover') === 'never'): ?>
    .product-grid-item .quickview-button {
    display:none;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('product_grid_quickview_align', 'center') === 'bottom' && $this->journal2->settings->get('product_grid_quickview_status', 'hover') === 'hover'): ?>
  .product-grid-item:hover .rating{
    margin-top:-28px;
    transition: all 0.1s ease-out;
   }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_align', 'center') === 'bottom' && $this->journal2->settings->get('product_grid_quickview_status', 'hover') === 'always'): ?>
  .product-grid-item .rating{
    margin-top:-28px;
   }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_button_icon_position', 'left') === 'left'): ?>
    .product-grid-item .quickview-button .button-right-icon{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_button_icon_position', 'left') === 'right'): ?>
    .product-grid-item .quickview-button .button-left-icon{
    display:none;
    }
    .button-right-icon:before{
    margin-left: 6px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_button_icon_display', 'text') === 'text'): ?>
    .product-grid-item .quickview-button .button-left-icon:before,
    .product-grid-item .quickview-button .button-right-icon:before{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_button_icon_display', 'text') === 'icon'): ?>
    .product-grid-item .quickview-button .button-left-icon:before{
    float:none;
    }
    .product-grid-item .quickview-button .button-right-icon:before{
    margin-left:0;
    }
    .product-grid-item .quickview-button .button-cart-text{
    display:none;
    }
    .product-grid-item .quickview-button [data-hint]:after,
    .product-grid-item .quickview-button .hint--top:before{
    display:block;
    }
    .product-grid-item .quickview-button .hint--top:before{
    border-top-color: <?php echo $this->journal2->settings->get('product_grid_quickview_button_tooltip_bg_color');?>;
    }
    .product-grid-item .quickview-button .hint--right:before{
    border-right-color: <?php echo $this->journal2->settings->get('product_grid_quickview_button_tooltip_bg_color');?>;
    }
    .product-grid-item .quickview-button .hint--left:before{
    border-left-color: <?php echo $this->journal2->settings->get('product_grid_quickview_button_tooltip_bg_color');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_button_icon_display', 'text') === 'both'): ?>
    .product-grid-item .quickview-button .button-left-icon:before{
    margin-right: 6px;
    }
<?php endif; ?>




/* Product Grid Wishlist/Compare */

<?php if($this->journal2->settings->get('product_grid_wishlist_icon_display', 'text') === 'text'): ?>
    .product-grid-item .wishlist a i,
    .product-grid-item .compare a i{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_wishlist_icon_display', 'text') === 'icon'): ?>
    .product-grid-item .button-wishlist-text,
    .product-grid-item .button-compare-text{
    display: none;
    }
    .product-grid-item .wishlist [data-hint]:after,
    .product-grid-item .wishlist .hint--top:before,
    .product-grid-item .compare [data-hint]:after,
    .product-grid-item .compare .hint--top:before{
    display:block;
    }

    .product-grid-item .wishlist .hint--top:before,
    .product-grid-item .compare .hint--top:before{
    border-top-color: <?php echo $this->journal2->settings->get('product_grid_wishlist_icon_tip_bg');?>;
    }
    .product-grid-item .wishlist .hint--right:before,
    .product-grid-item .compare .hint--right:before{
    border-right-color: <?php echo $this->journal2->settings->get('product_grid_wishlist_icon_tip_bg');?>;
    }
    .product-grid-item .wishlist .hint--left:before,
    .product-grid-item .compare .hint--left:before{
    border-left-color: <?php echo $this->journal2->settings->get('product_grid_wishlist_icon_tip_bg');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_wishlist_icon_display', 'text') === 'both'): ?>
    .product-grid-item .wishlist a i,
    .product-grid-item .compare a i{
    border:0;
    background-color:transparent !important;
    padding:0 5px;
    }
    .product-grid-item .wishlist a i:before,
    .product-grid-item .compare a i:before{
    line-height:100%;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('product_grid_wishlist_icon_position', 'button') === 'image' && $this->journal2->settings->get('product_grid_wishlist_icon_display', 'icon') === 'icon'): ?>
    .product-grid-item .product-details .wishlist,
    .product-grid-item .product-details .compare,
    .product-list-item .image .wishlist,
    .product-list-item .image .compare,
    .product-grid-item .image .button-wishlist-text,
    .product-grid-item .image .button-compare-text{
    display:none !important;
    }
<?php endif; ?>



<?php if($this->journal2->settings->get('product_grid_wishlist_icon_on_hover', 'on') == 'on' && $this->journal2->settings->get('product_grid_wishlist_icon_position', 'button') == 'image' && $this->journal2->settings->get('product_grid_wishlist_icon_display', '') == 'icon'): ?>
    .product-grid-item .image .wishlist,
    .product-grid-item .image .compare{
    visibility:hidden;
    opacity:0;
    }
    .product-grid-item:hover .image .wishlist,
    .product-grid-item:hover .image .compare{
    visibility:visible;
    opacity:1;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('product_list_button_icon_display', 'icon') === 'icon'): ?>
    .product-list-item .cart .button{
    width:<?php echo $this->journal2->settings->get('product_list_button_width_px');?>px;
    height:<?php echo $this->journal2->settings->get('product_list_button_height_px');?>px;
    line-height:<?php echo $this->journal2->settings->get('product_list_button_height_px');?>px;
    padding:0;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_quickview_button_icon_display', 'icon') === 'icon'): ?>
    .product-list-item .quickview-button .button{
    width:<?php echo $this->journal2->settings->get('product_list_quickview_button_width_px');?>px;
    height:<?php echo $this->journal2->settings->get('product_list_quickview_button_height_px');?>px;
    line-height:<?php echo $this->journal2->settings->get('product_list_quickview_button_height_px');?>px;
    padding:0;
    }
<?php endif; ?>



<?php if($this->journal2->settings->get('product_grid_button_icon_display', 'icon') === 'icon'): ?>
    .product-grid-item .cart .button{
    width:<?php echo $this->journal2->settings->get('product_grid_button_width_px');?>px;
    height:<?php echo $this->journal2->settings->get('product_grid_button_height_px');?>px;
    line-height:<?php echo $this->journal2->settings->get('product_grid_button_height_px');?>px;
    padding:0;
    }
    .product-grid-item .cart{
    height:<?php echo $this->journal2->settings->get('product_grid_button_height_px');?>px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_button_icon_display', 'icon') === 'icon'): ?>
    .product-grid-item .quickview-button .button{
    width:<?php echo $this->journal2->settings->get('product_grid_quickview_button_width_px');?>px;
    height:<?php echo $this->journal2->settings->get('product_grid_quickview_button_height_px');?>px;
    line-height:<?php echo $this->journal2->settings->get('product_grid_quickview_button_height_px');?>px;
    padding:0;
    }
<?php endif; ?>


/* Product List */

<?php if($this->journal2->settings->get('product_list_shadow', 'never') === 'hover'): ?>
    .product-list-item:hover{
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.15);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_shadow', 'never') === 'always'): ?>
    .product-list-item{
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.15);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_shadow', 'never') === 'never'): ?>
    .product-list-item{
    box-shadow: none;
    }
<?php endif; ?>



<?php if($this->journal2->settings->get('product_list_button_icon_display', 'text') === 'text'): ?>
    .product-list-item .cart .button-left-icon:before{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_button_icon_display', 'text') === 'icon'): ?>
    .product-list-item .cart .button-left-icon:before{
    float:none;
    }
    .product-list-item .cart .button-right-icon:before{
    margin-left:0;
    }
    .product-list-item .cart .button-cart-text{
    display:none;
    }
    .product-list-item .cart .button[data-hint]:after,
    .product-list-item .cart .hint--top:before{
    display:block;
    }
    .product-list-item .cart .hint--top:before{
    border-top-color: <?php echo $this->journal2->settings->get('product_list_button_tooltip_bg_color');?>;
    }
    .product-list-item .cart .hint--right:before{
    border-right-color: <?php echo $this->journal2->settings->get('product_list_button_tooltip_bg_color');?>;
    }
    .product-list-item .cart .hint--left:before{
    border-left-color: <?php echo $this->journal2->settings->get('product_list_button_tooltip_bg_color');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_button_icon_display', 'text') === 'both'): ?>
    .product-list-item .cart .button-left-icon:before,
    .product-list-item .enquiry-button i:before{
    margin-right: 8px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_button_icon_position', 'left') === 'left'): ?>
    .product-list-item .cart .button-right-icon{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_button_icon_position', 'left') === 'right'): ?>
    .product-list-item .cart .button-left-icon{
    display:none;
    }
    .button-right-icon:before{
    margin-left: 8px;
    }
<?php endif; ?>




/* Product List Quickview*/
<?php if($this->journal2->settings->get('product_list_quickview_status', 'hover') === 'hover'): ?>
    .product-list-item:hover .quickview-button {
    opacity: 1;
    visibility: visible;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_quickview_status', 'hover') === 'always'): ?>
    .product-list-item .quickview-button {
    opacity: 1;
    visibility: visible;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_quickview_status', 'hover') === 'never'): ?>
    .product-list-item .quickview-button {
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_quickview_button_icon_position', 'left') === 'left'): ?>
    .product-list-item .quickview-button .button-right-icon{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_quickview_button_icon_position', 'left') === 'right'): ?>
    .product-list-item .quickview-button .button-left-icon{
    display:none;
    }
    .button-right-icon:before{
    margin-left: 8px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_quickview_button_icon_display', 'text') === 'text'): ?>
    .product-list-item .quickview-button .button-left-icon:before{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_quickview_button_icon_display', 'text') === 'icon'): ?>
    .product-list-item .quickview-button .button-left-icon:before{
    float:none;
    }
    .product-list-item .quickview-button .button-right-icon:before{
    margin-left:0;
    }
    .product-list-item .quickview-button .button-cart-text{
    display:none;
    }
    .product-list-item .quickview-button .button[data-hint]:after,
    .product-list-item .quickview-button .hint--top:before{
    display:block;
    }
    .product-list-item .quickview-button .hint--top:before{
    border-top-color: <?php echo $this->journal2->settings->get('product_list_quickview_button_tooltip_bg_color');?>;
    }
    .product-list-item .quickview-button .hint--right:before{
    border-right-color: <?php echo $this->journal2->settings->get('product_list_quickview_button_tooltip_bg_color');?>;
    }
    .product-list-item .quickview-button .hint--left:before{
    border-left-color: <?php echo $this->journal2->settings->get('product_list_quickview_button_tooltip_bg_color');?>;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_list_quickview_button_icon_display', 'text') === 'both'): ?>
    .product-list-item .quickview-button .button-left-icon:before{
    margin-right: 8px;
    }
<?php endif; ?>


/* Product Page */

#product-gallery.image-additional-grid a{
width: <?php echo 100 / $this->journal2->settings->get('product_page_additional_width', 5) ?>%;
}

<?php if($this->journal2->settings->get('product_page_gallery_carousel', '1') === '0'): ?>
    .product-info .left .image-additional{
    margin-right: -<?php echo $this->journal2->settings->get('product_page_additional_spacing');?>px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_page_button_icon_position', 'left') === 'left'): ?>
    #button-cart .button-cart-text:after{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_page_button_icon_position', 'left') === 'right'): ?>
    #button-cart .button-cart-text:before{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_page_gallery_carousel_arrows', 'hover') === 'hover'): ?>
    .product-info .left .image-additional .swiper-button-prev,
    .product-info .left .image-additional .swiper-button-next{
    display:none;
    }
    .product-info .left .image-additional:hover .swiper-button-prev,
    .product-info .left .image-additional:hover .swiper-button-next{
    display:block;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('boxed_header', '0') === '1' && $this->journal2->settings->get('boxed_header_above', 'on') === 'off'): ?>
    @media only screen and (min-width: 980px){
    #top-modules > div:first-of-type.journal2_slider{
      margin-top:-<?php echo $this->journal2->settings->get('boxed_top_spacing') + 120; ?>px;
      position:relative;
    }
    }
<?php endif; ?>

.compare-info td{
border-right-style:<?php echo $this->journal2->settings->get('shopping_divider_style'); ?>;
}
table.list{
border-bottom-style:<?php echo $this->journal2->settings->get('shopping_divider_style'); ?>;
border-left-style:<?php echo $this->journal2->settings->get('shopping_divider_style'); ?>;
}
table.list td{
border-right-style:<?php echo $this->journal2->settings->get('shopping_divider_style'); ?>;
border-top-style:<?php echo $this->journal2->settings->get('shopping_divider_style'); ?>;
}



/* Product Labels*/

.label-latest + .label-sale{
top: <?php echo $this->journal2->settings->get('label_latest_height'); ?>px;
}

<?php if($this->journal2->settings->get('label_latest_status', 'always') === 'hover'): ?>
    .label-latest{
    visibility:hidden;
    opacity:0;
    }
    .product-wrapper:hover .label-latest, .product-list-item:hover .label-latest, .product-info .image:hover .label-latest{
    visibility:visible;
    opacity:1;
    }
<?php endif; ?>
<?php if($this->journal2->settings->get('label_latest_status', 'always') === 'never'): ?>
    .label-latest{
    display:none !important;
    }
<?php endif; ?>
<?php if($this->journal2->settings->get('label_special_status', 'always') === 'hover'): ?>
    .label-sale{
    visibility:hidden;
    opacity:0;
    }
    .product-wrapper:hover .label-sale, .product-list-item:hover .label-sale, .product-info .image:hover .label-sale{
    visibility:visible;
    opacity:1;
    }


<?php endif; ?>
<?php if($this->journal2->settings->get('out_of_stock_status', 'always') === 'hover'): ?>
    .label-outofstock{
    visibility:hidden;
    opacity:0;
    }
    .product-wrapper:hover .label-outofstock, .product-list-item:hover .label-outofstock, .product-info .image:hover .label-outofstock{
    visibility:visible;
    opacity:1;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('out_of_stock_status', 'always') === 'never'): ?>
    .label-outofstock{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('out_of_stock_style', 'diagonal') === 'normal'): ?>
    span.label-outofstock {
    padding: .4em .55em .3em;
    transform: translate(5px, 5px) rotate(0deg);
    min-width:inherit;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('product_list_latest_label_status', 'block') === 'none'): ?>
    .product-list-item .image .label-latest + .label-sale{
    top: 5px;
    margin-top: 0;
    }
<?php endif; ?>

#more-details.hint--top:before{
border-top-color: <?php echo $this->journal2->settings->get('quickview_more_details_tip_bg');?>;
}

.boxed-header header{
max-width:<?php echo $this->journal2->settings->get('site_width');?>px;
}
.boxed-header .super-menu > li:first-of-type{
border-left-width:0;
}
.boxed-header .super-menu > li:last-of-type{
border-right-width:0;
}

<?php if($this->journal2->settings->get('boxed_menu_off', '1') === '0'): ?>
    @media only screen and (min-width: 760px){
    .boxed-header .is-sticky header .header{
        max-width:<?php echo $this->journal2->settings->get('site_width');?>px;
            left: 50%;
            transform: translateX(-50%);
        }
    }
    .is-sticky .header {
        box-shadow: none;
        background: transparent;
    }
   .is-sticky .journal-menu-bg {
        background-color:transparent;
        background-image:none;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('pp_gallery_name_overflow', 'on') === 'off'): ?>
    div.lg-sub-html > span{
    white-space:normal;
    }
    div.lg-sub-html {
    padding: 20px;
    }
<?php endif; ?>

@media only screen and (max-width: 760px){
.journal-language .dropdown-toggle,
.journal-currency .dropdown-toggle{
color:<?php echo $this->journal2->settings->get('full_text_font_phone');?>;
}
.journal-header-center #language,
.journal-header-center #currency{
border-color:<?php echo $this->journal2->settings->get('lang_divider_phone');?>;
}
}

.sticky-menu .is-sticky .journal-header-default .header{
background-color: <?php echo $this->journal2->settings->get('main_menu_bg_color');?>;
}

<?php if($this->journal2->settings->get('one_page_phone_required', 'block') === 'none'): ?>
    .phone-input label::before{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('one_page_phone_required', 'block') === 'none' && $this->journal2->settings->get('one_page_show_phone', 'block') === 'none'): ?>
    .phone-input{
    display:none;
    }
<?php endif; ?>

html[dir="rtl"] .journal-carousel .htabs a:last-of-type{
border-left-color:<?php echo $this->journal2->settings->get('carousel_title_divider');?>;
}

.boxed-header .journal-header-center .journal-links{
padding-left: 10px;
}
.boxed-header .journal-header-center .journal-search{
padding-left: 20px;
}
.boxed-header .journal-header-center .journal-secondary{
padding-right: 10px;
}


<?php if($this->journal2->settings->get('cart_header_shadow', 'none') === 'none'): ?>
#cart{
  box-shadow:none;
}
<?php endif; ?>

.journal-header-center .journal-center-bg{
  top:<?php echo $this->journal2->settings->get('top_bar_height', '40');?>px;
}

<?php if($this->journal2->settings->get('cart_header_shadow', 'none') === 'default'): ?>
#cart {
    box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.25);
}
<?php endif; ?>


<?php if($this->journal2->settings->get('cart_content_shadow', 'none') === 'none'): ?>
#cart .cart-wrapper{
  box-shadow:none;
}
<?php endif; ?>

<?php if($this->journal2->settings->get('cart_content_shadow', 'none') === 'default'): ?>
#cart .cart-wrapper {
    box-shadow: 0 3px 15px -3px rgba(0, 0, 0, 0.25);
}
<?php endif; ?>


<?php if($this->journal2->settings->get('search_shadow', 'none') === 'none'): ?>
#search input{
  box-shadow:none;
}
<?php endif; ?>

<?php if($this->journal2->settings->get('search_shadow', 'none') === 'default'): ?>
#search input{
    box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.25);
}
<?php endif; ?>

<?php if($this->journal2->settings->get('search_autosuggest_shadow', 'none') === 'none'): ?>
.autocomplete2-suggestions{
  box-shadow:none;
}
<?php endif; ?>

<?php if($this->journal2->settings->get('search_autosuggest_shadow', 'none') === 'default'): ?>
.autocomplete2-suggestions{
    box-shadow: 0 3px 15px -3px rgba(0, 0, 0, 0.25);
}
<?php endif; ?>


@media only screen and (max-width: 760px) {
ul.super-menu > li > a,
ul.super-menu > li:hover > a{
color:<?php echo $this->journal2->settings->get('mobile_menu_item_color_phone');?>;
}
ul.super-menu > li,
ul.super-menu > li:hover{
background-color:<?php echo $this->journal2->settings->get('mobile_menu_item_bg_phone');?>;
}
.boxed-header .journal-header-center .journal-search,
.boxed-header .journal-header-center .journal-links{
padding-left: 0;
}
.boxed-header .journal-header-center .journal-cart,
.boxed-header .journal-header-center .journal-secondary{
padding-right: 0;
}
.button-search{
background-color:<?php echo $this->journal2->settings->get('search_button_bg_mobile');?>;
}
.button-search i:before{
color:<?php echo $this->journal2->settings->get('search_icon_color_mobile');?> !important;
}
}


<?php if($this->journal2->settings->get('catalog_grid_compare', 'inline-block') === 'inline-block'): ?>
.product-filter .product-compare {
    display: flex;
}
<?php endif; ?>

<?php if($this->journal2->settings->get('product_compare_link_status', 'on') === 'off'): ?>
.product-filter .product-compare{
        display:none;
    }
<?php endif; ?>


@media only screen and (max-width: 980px) {
.mobile-menu-on-tablet ul.super-menu > li > a,
.mobile-menu-on-tablet ul.super-menu > li:hover > a{
color:<?php echo $this->journal2->settings->get('mobile_menu_item_color_phone');?>;
}
.mobile-menu-on-tablet ul.super-menu > li,
.mobile-menu-on-tablet ul.super-menu > li:hover{
background-color:<?php echo $this->journal2->settings->get('mobile_menu_item_bg_phone');?>;
}
}

<?php if($this->journal2->settings->get('responsive_design') === '1'): ?>
    @media only screen and (min-width:760px) and (max-width:<?php echo $this->journal2->settings->get('site_width') + 15;?>px) {
    .journal-header-center .journal-search{
    padding-left: 15px;
    }
    .journal-header-center .journal-cart{
    padding-right: 15px;
    }
    .journal-header-center .journal-cart{
    width:calc(25% - 20px);
    padding-right:0;
    }
    html[dir="rtl"] .journal-header-center .journal-search{
    padding-right: 15px;
    }
    }
    @media only screen and (max-width:760px) {
    .journal-header-center .journal-search,
    html[dir="rtl"] .journal-header-center .journal-search{
    padding-left: 0;
    padding-right: 0;
    }
    .journal-header-center .journal-cart,
    html[dir="rtl"] .journal-header-center .journal-cart{
    padding-right: 0;
    padding-left: 0;
    }
    }
<?php endif; ?>


@media only screen and (min-width: 760px){
.boxed-header .journal-header-center .journal-cart{
padding-right:15px;
}
html[dir="rtl"] .boxed-header .journal-header-center .journal-cart{
padding-right:0;
padding-left:15px;
}
}

@media only screen and (min-width: <?php echo $this->journal2->settings->get('site_width');?>px) {
.sticky-menu:not(.boxed-header) .is-sticky .journal-header-compact #header .journal-menu .super-menu > li:first-of-type > a {
margin-left: 0;
}
.skin-16 .journal-header-mega .journal-search {
    padding-right: 0;
}
}

@media only screen and (max-width: <?php echo $this->journal2->settings->get('site_width') + 15;?>px) {
.super-menu, .mega-menu, .html-menu{
    border-radius:0;
}
.bottom-footer.fullwidth-bar .copyright{
padding-left: 15px;
}
.bottom-footer.fullwidth-bar .payments{
padding-right: 15px;
}

#top-modules > div:not(.gutter),
#bottom-modules > div:not(.gutter){
padding-left: 20px;
padding-right: 20px;
}

#top-modules .journal2_slider,
#bottom-modules .journal2_slider,
#top-modules .journal2_headline_rotator{
  padding-left: 0 !important;
  padding-right: 0 !important;
}

.no-secondary .journal-header-center #currency{
border-right-width:0;
}
.no-secondary .journal-header-center #language{
border-left-width:0;
}
html[dir="rtl"].no-secondary .journal-header-center #currency{
border-left-width:0;
border-right-width:1px;
}
html[dir="rtl"].no-secondary .journal-header-center #language{
border-right-width:0;
border-left-width:1px;
}
.journal-header-compact #header .journal-search {
padding-right:15px !important;
}
html[dir="rtl"] .journal-header-compact #header .journal-search {
padding-right:0 !important;
padding-left:15px !important;
}
.sticky-menu .is-sticky .journal-header-default .journal-menu .super-menu > li:first-of-type{
border-left-width:0;
}
.sticky-menu .is-sticky .journal-header-default .journal-menu .super-menu > li:last-of-type{
border-right-width:0;
}
.boxed-header body{
padding:0;
}
.fullwidth-footer .columns{
padding-left: 15px;
}
.copyright{
padding-left: 15px;
}
.journal-header-mega .journal-logo{
padding-left:15px;
}
html[dir="rtl"] .journal-header-mega .journal-logo{
padding-left:0;
padding-right:15px;
}
}

@media only screen and (max-width: 760px){
.journal-header-mega .journal-logo{
padding-left:0;
}
html[dir="rtl"] .journal-header-mega .journal-logo{
padding-left:0;
padding-right:0;
}
}

.boxed-header .journal-header-mega .journal-logo{
padding-left:15px;
}
html[dir="rtl"].boxed-header .journal-header-mega .journal-logo{
padding-left:0;
padding-right:15px;
}

@media only screen and (min-width : 760px) {
.side-blocks-active .journal-fullwidth-slider .tp-leftarrow,
.side-blocks-active .journal-fullwidth-slider .tp-leftarrow.default {
left: 60px !important;
}
.side-blocks-active .journal-fullwidth-slider .tp-rightarrow,
.side-blocks-active .journal-fullwidth-slider .tp-rightarrow.default {
right: 60px !important;
}
html[dir="rtl"].side-blocks-active .journal-fullwidth-slider .tp-leftarrow,
html[dir="rtl"].side-blocks-active .journal-fullwidth-slider .tp-leftarrow.default {
right: 60px !important;
left: auto !important;
}
html[dir="rtl"].side-blocks-active .journal-fullwidth-slider .tp-rightarrow,
html[dir="rtl"].side-blocks-active .journal-fullwidth-slider .tp-rightarrow.default {
left: 60px !important;
right: auto !important;
}
}


<?php if($this->journal2->settings->get('mega_header_align_2', 'center') === 'left'): ?>
    @media only screen and (min-width: 760px){
    .journal-header-mega #logo a img{
          left: 0;
          transform: translate(0, -50%);
      }
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('mega_header_align_2', 'center') === 'left'): ?>
    @media only screen and (min-width: 760px){
      html[dir="rtl"] .journal-header-mega #logo a img{
          left: auto;
          right:0;
      }
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('top_menu_shadow', 'none') === 'none'): ?>
    header .links a, 
    header .links .no-link{
    border-bottom-color:#e4e4e4;
    }
<?php endif; ?>

.boxed-header.default-header .journal-top-header{
clip: rect(0px,<?php echo $this->journal2->settings->get('site_width');?>px,45px,0px);
}

.journal-header-default .links .no-link{
border-color:<?php echo $this->journal2->settings->get('top_menu_border_color');?>
}

.journal-header-center #cart .content:before,
.oc2 #cart .content .cart-wrapper:before{
color:<?php echo $this->journal2->settings->get('cart_content_bg');?>
}

.journal-header-center .autocomplete2-suggestions:before{
color:<?php echo $this->journal2->settings->get('autosuggest_bg');?>
}

<?php if($this->journal2->settings->get('top_menu_icons_display', 'inline') === 'block'): ?>
    header .links a i,
    .links .no-link i,
    .journal-header-default #header .journal-links .top-menu > li > a{
    display:block;
    }
    header .links a i,
    .links .no-link i{
    margin-top:3px;
    }
    header .links .top-menu-link{
    position:relative;
    top:-2px;
    }
    .has-dropdown::after {
    margin-left: 2px;
    top: -3px;
    }
<?php endif; ?>

.journal-language .dropdown-menu:before,
.journal-currency .dropdown-menu:before{
color:<?php echo $this->journal2->settings->get('lang_drop_bg');?>
}

#header .top-menu .top-dropdown li:first-of-type {
border-top-left-radius: <?php echo $this->journal2->settings->get('top_menu_radius');?>px;
border-top-right-radius: <?php echo $this->journal2->settings->get('top_menu_radius');?>px;
}
#header .top-menu .top-dropdown li:last-of-type {
border-bottom-left-radius: <?php echo $this->journal2->settings->get('top_menu_radius');?>px;
border-bottom-right-radius: <?php echo $this->journal2->settings->get('top_menu_radius');?>px;
}
#header .top-menu .top-dropdown li:first-of-type::before{
color:<?php echo $this->journal2->settings->get('top_menus_dropdown_bg_color');?>
}

#search ::-webkit-input-placeholder {
color:<?php echo $this->journal2->settings->get('search_placeholder_color');?>;
font-family: inherit;
}
#search :-moz-placeholder {
color:<?php echo $this->journal2->settings->get('search_placeholder_color');?>;
font-family: inherit;
}
#search ::-moz-placeholder {
color:<?php echo $this->journal2->settings->get('search_placeholder_color');?>;
font-family: inherit;
}
#search :-ms-input-placeholder {
color:<?php echo $this->journal2->settings->get('search_placeholder_color');?>;
font-family: inherit;
}

.button-search{
border-right-style:<?php echo $this->journal2->settings->get('search_divider_type');?>;
border-right-color:<?php echo $this->journal2->settings->get('search_divider');?>;
}
html[dir="rtl"] .button-search{
border-left-style:<?php echo $this->journal2->settings->get('search_divider_type');?>;
border-left-color:<?php echo $this->journal2->settings->get('search_divider');?>;
}

<?php if($this->journal2->settings->get('top_divider_phone', 'off') === 'on'): ?>
    @media only screen and (max-width: 760px){
    .center-header #search, .default-header #search{
    border-top-width:1px;
    border-top-style:<?php echo $this->journal2->settings->get('search_divider_type');?>;
    border-top-color:<?php echo $this->journal2->settings->get('search_divider');?>;
    }
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('search_button_pos', 'left') === 'right'): ?>
    .button-search {
    right: 0;
    }
    html[dir="rtl"] .button-search {
    right: auto;
    left:0;
    }
    #search input {
    padding-left: 12px;
    padding-right: 50px;
    }
    .button-search{
    border-right-width:0;
    border-left-width:1px;
    border-left-style:<?php echo $this->journal2->settings->get('search_divider_type');?>;
    border-left-color:<?php echo $this->journal2->settings->get('search_divider');?>;
    }
    html[dir="rtl"] .button-search{
    border-left-width:0;
    border-right-width:1px;
    border-right-style:<?php echo $this->journal2->settings->get('search_divider_type');?>;
    border-right-color:<?php echo $this->journal2->settings->get('search_divider');?>;
    }
<?php endif; ?>


header .journal-login{
border-bottom-color:<?php echo $this->journal2->settings->get('search_divider');?>;
}


.super-menu > li:last-of-type{
border-right-color:<?php echo $this->journal2->settings->get('menu_divider');?>;
border-right-style:<?php echo $this->journal2->settings->get('menu_divider_type');?>;
}

@media only screen and (max-width: 760px) {
.default-header .journal-login{
background-color: <?php echo $this->journal2->settings->get('secondary_menu_bg_color_mobile');?>
}
.journal-header-center #search input,
.journal-header-center .button-search{
border-radius:0;
}
.center-header #search input, .default-header #search input{
background-color:<?php echo $this->journal2->settings->get('search_bg_mobile');?>;
}
.center-header header #cart, .default-header header #cart{
background-color:<?php echo $this->journal2->settings->get('cart_heading_bg_mobile');?>;
}
.journal-menu .mobile-menu > li{
border-color:<?php echo $this->journal2->settings->get('menu_divider');?>;
border-style:<?php echo $this->journal2->settings->get('menu_divider_type');?>;
}
}

.inline-button .product-details{
padding-bottom:0;
}

<?php if($this->journal2->settings->get('product_grid_button_block_button', 'block-button') === 'inline-button' && $this->journal2->settings->get('catalog_grid_cart', 'block') === 'block' ): ?>
    .product-grid-item .cart{
    display:inline-block !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_main_menu_cart', 'block') === 'none' ): ?>
    .mega-menu .product-grid-item .cart{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_cart', 'block') === 'none'): ?>
    .product-grid-item .cart{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_product_page_cart', 'block') === 'none'): ?>
    .quickview .product-info .right .cart{
    display:table;
    }
    .product-info .right .cart div .qty,
    .product-info .right .cart div #button-cart{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_cs_cart', 'block') === 'none'): ?>
    .custom-sections .product-grid-item .product-details .cart{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_side_carousel_cart', 'block') === 'none'): ?>
    .side-column .product-grid-item .product-details .cart{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_carousel_cart', 'block') === 'none'): ?>
    #content .journal-carousel .product-grid-item .product-details .cart,
    #top-modules .journal-carousel .product-grid-item .product-details .cart,
    #bottom-modules .journal-carousel .product-grid-item .product-details .cart{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_page_title_status', '1') === '0'): ?>
    .product-info .right .options h3{
    display:none;
    }
    .product-info .right .option-image:first-of-type{
    margin-top:0;
    }
<?php endif; ?>

.product-info .right .options.push-1 .option-image li.selected span img{
border-color:<?php echo $this->journal2->settings->get('product_page_options_push_image_border_hover');?>;
}

.mega-menu-categories .mega-menu-item,
.mega-menu-brands .mega-menu-item,
.mega-menu-html .mega-menu-item,
#header .mega-menu .product-grid-item{
margin-bottom:<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
}

html[dir="rtl"].journal-desktop .menu-floated .float-right:last-of-type{
border-right-style:<?php echo $this->journal2->settings->get('menu_divider_type');?>;
}

html[dir="rtl"].journal-desktop .menu-floated .float-right:last-of-type{
border-color:<?php echo $this->journal2->settings->get('menu_divider');?>;
}

.mega-menu > div{
margin-bottom:-<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px !important;
margin-right:-<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
}

html[dir="rtl"] .mega-menu-item > div,
html[dir="rtl"] #header .mega-menu .product-wrapper{
margin-right:0;
margin-left:<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
}

.mega-menu .mega-menu-column:last-of-type > div{
margin-right:-<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
}
html[dir="rtl"] .mega-menu .mega-menu-column.mega-menu-products > div{
margin-left:-<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
}

.mega-menu-column > div > h3, .mega-menu .mega-menu-column .menu-cms-block{
margin-right:<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
}
html[dir="rtl"] .mega-menu-column > div > h3, html[dir="rtl"] .mega-menu .mega-menu-column .menu-cms-block{
margin-right:0;
margin-left:<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
}
.mega-menu .mega-menu-column:last-of-type > h3,
.mega-menu .mega-menu-column:last-of-type > div > h3,
.mega-menu .mega-menu-column:last-of-type > .menu-cms-block,
.mega-menu .mega-menu-column.mega-menu-html-block > div{
margin-right:0;
}

@media only screen and (max-width: 760px) {
.super-menu{
border-width:0;
}
.mega-menu .mega-menu-column > div{
margin-right:-<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
}
html[dir="rtl"] .mega-menu .mega-menu-column > div{
margin-left:-<?php echo $this->journal2->settings->get('menu_categories_item_margin');?>px;
margin-right:0;
}
}

.journal-sf .sf-image .box-content ul{
margin-bottom:-<?php echo $this->journal2->settings->get('filter_image_section_margin_bottom');?>px;
margin-right:-<?php echo $this->journal2->settings->get('filter_image_section_margin_right');?>px;
}

<?php if($this->journal2->settings->get('blog_show_author', 'on') === 'off'): ?>
    .p-author, .p-posted{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('blog_show_date', 'on') === 'off'): ?>
    .p-date{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('blog_show_comments', 'on') === 'off'): ?>
    .p-comment{
    display:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('blog_show_author', 'on') === 'off' && $this->journal2->settings->get('blog_show_date', 'on') === 'off' && $this->journal2->settings->get('blog_show_comments', 'on') === 'off'): ?>
    .comment-date{
    display:none !important;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('one_page_coupon_status', 'on') === 'off' && $this->journal2->settings->get('one_page_voucher_status', 'on') === 'off'): ?>
    .journal-checkout .coupon-voucher{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('one_page_coupon_status', 'on') === 'off'): ?>
    .journal-checkout .coupon-voucher .checkout-coupon{
    display:none;
    }
    .journal-checkout .coupon-voucher .checkout-voucher{
    width:100%;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('one_page_voucher_status', 'on') === 'off'): ?>
    .journal-checkout .coupon-voucher .checkout-coupon{
    width:100%;
    padding-right:0;
    }
    .journal-checkout .coupon-voucher .checkout-voucher{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('dropdown_shadow', 'none') === 'none'): ?>
    .drop-down ul{
    box-shadow:none !important;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_product_page_wishlist', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_product_page_compare', 'inline-block') === 'none'): ?>
    .product-info .right .wishlist-compare{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_name', 'table') === 'none' || $this->journal2->settings->get('catalog_grid_carousel_name', 'table') === 'none' || $this->journal2->settings->get('catalog_grid_side_carousel_name', 'table') === 'none' || $this->journal2->settings->get('catalog_grid_cs_name', 'table') === 'none' || $this->journal2->settings->get('catalog_grid_main_menu_name', 'table') === 'none'): ?>
    .product-details{
    padding-top:13px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_cart', 'block') === 'none' || $this->journal2->settings->get('catalog_grid_carousel_cart', 'block') === 'none' || $this->journal2->settings->get('catalog_grid_side_carousel_cart', 'block') === 'none' || $this->journal2->settings->get('catalog_grid_cs_cart', 'block') === 'none' || $this->journal2->settings->get('catalog_grid_main_menu_cart', 'block') === 'none'): ?>
    .product-grid-item .price + hr,
    .product-grid-item .price + .rating + hr{
    display:block;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('catalog_grid_cart', 'block') === 'none' && $this->journal2->settings->get('catalog_grid_wishlist', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_compare', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_price', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_name', 'table') === 'none'): ?>
    .product-details{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_carousel_cart', 'block') === 'none' && $this->journal2->settings->get('catalog_grid_carousel_wishlist', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_carousel_compare', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_carousel_price', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_carousel_name', 'table') === 'none'): ?>
    .product-details{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_side_carousel_cart', 'block') === 'none' && $this->journal2->settings->get('catalog_grid_side_carousel_wishlist', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_side_carousel_compare', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_side_carousel_price', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_side_carousel_name', 'table') === 'none'): ?>
    .product-details{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_cs_cart', 'block') === 'none' && $this->journal2->settings->get('catalog_grid_cs_wishlist', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_cs_compare', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_cs_price', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_cs_name', 'table') === 'none'): ?>
    .product-details{
    display:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('catalog_grid_main_menu_cart', 'block') === 'none' && $this->journal2->settings->get('catalog_grid_main_menu_wishlist', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_main_menu_compare', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_main_menu_price', 'inline-block') === 'none' && $this->journal2->settings->get('catalog_grid_main_menu_name', 'table') === 'none'): ?>
    .product-details{
    display:none;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('contacts_display', 'off') === 'on'): ?>
    footer .contacts{
    text-align:center;
    }
    footer .contacts-left,
    html[dir="rtl"] footer .contacts-left{
    float: none;
    }
    footer .contacts-right{
    display: none;
    }
<?php endif; ?>

.has-cta .rotator-tex{
line-height:<?php echo $this->journal2->settings->get('cta_button_height');?>px;
}

footer .contacts .hint--top:before{
border-top-color: <?php echo $this->journal2->settings->get('footer_tooltip_bg_color');?>;
}


.side-column .box-category,
.side-column .box-content,
.side-column .box-content > div,
.side-column .box-content > ul > li:last-of-type,
.side-column .oc-module .product-grid-item:last-of-type{
border-bottom-left-radius: inherit;
border-bottom-right-radius: inherit;
border-radius:inherit;
}


.journal-sf ul li label:hover{
color:<?php echo $this->journal2->settings->get('filter_active_text');?>;
}
.sf-icon:before{
border-top-color:<?php echo $this->journal2->settings->get('reset_tip_bg');?>;
}

/*
.journal-sf ul li label:hover img{
border-color:<?php echo $this->journal2->settings->get('filter_active_border');?>;
} */

.sf-price .value:after{
border-bottom-color:<?php echo $this->journal2->settings->get('filter_price_tip');?>;
}

.mobile-trigger{
background-color:<?php echo $this->journal2->settings->get('main_menu_bg_color');?>;
}


.journal-header-default .links > a{
border-bottom-color: transparent;
}

@media only screen and (max-width: 760px) {
.super-menu{
background-color:<?php echo $this->journal2->settings->get('mega_menu_bg');?>;
}
.journal-header-default .links > a{
border-bottom-color: <?php echo $this->journal2->settings->get('top_menu_border_color');?>;
}
}
.nav-numbers a:hover,
.nav-numbers li.active a{
-webkit-backface-visibility: hidden;
-webkit-transform: scale(<?php echo $this->journal2->settings->get('text_rotator_bullet_scale');?>);
-moz-transform: scale(<?php echo $this->journal2->settings->get('text_rotator_bullet_scale');?>);
-ms-transform: scale(<?php echo $this->journal2->settings->get('text_rotator_bullet_scale');?>);
transform: scale(<?php echo $this->journal2->settings->get('text_rotator_bullet_scale');?>);
}
.headline-mode .nav-numbers a:hover,
.headline-mode .nav-numbers li.active a{
-webkit-backface-visibility: hidden;
-webkit-transform: scale(<?php echo $this->journal2->settings->get('headline_bullet_scale');?>);
-moz-transform: scale(<?php echo $this->journal2->settings->get('headline_bullet_scale');?>);
-ms-transform: scale(<?php echo $this->journal2->settings->get('headline_bullet_scale');?>);
transform: scale(<?php echo $this->journal2->settings->get('headline_bullet_scale');?>);
}
.tp-bullets.simplebullets.round .bullet.selected,
.tp-bullets.simplebullets.round .bullet:hover,
.journal-simple-slider .owl-controls .owl-page.active span,
.journal-simple-slider .owl-controls.clickable .owl-page:hover span{
transform: scale(<?php echo $this->journal2->settings->get('slider_bullet_scale');?>);
}

.swiper-pagination-bullet:hover, .swiper-pagination-bullet-active{
transform: scale(<?php echo $this->journal2->settings->get('carousel_bullet_scale');?>);
}

@media only screen and (max-width: 980px) {
.journal-header-default .mega-menu{
width: 100%;
}
}

@media only screen and (max-width: 760px) {
.journal-header-center .journal-secondary{
background-color:<?php echo $this->journal2->settings->get('top_bar_bg_color');?>;
}
}

.mega-menu{
max-width:<?php echo $this->journal2->settings->get('site_width');?>px;
}

@media only screen and (max-width: 760px){
.bottom-menu-bar #header .top-menu > li{
border-color:<?php echo $this->journal2->settings->get('top_menu_border_color');?>;
}
.bottom-menu-bar #header .journal-links{
background-color:<?php echo $this->journal2->settings->get('top_menu_bg_color');?>;
}
.bottom-menu-bar .journal-header-center .journal-secondary {
border-top-width: 0;
}
.bottom-menu-bar #header .journal-links ul.top-menu > li{
border-color:<?php echo $this->journal2->settings->get('bottom_bar_border_color');?>;
}
.bottom-menu-bar #header div.journal-links, .bottom-menu-bar #header .links a:hover{
background-color:<?php echo $this->journal2->settings->get('bottom_bar_bg_color');?>;
}
.bottom-menu-bar #header .journal-links ul.top-menu > li > a,
.bottom-menu-bar #header .journal-links ul.top-menu > li > a:hover,
.bottom-menu-bar #header .journal-links ul.top-menu > li > .no-link{
color:<?php echo $this->journal2->settings->get('bottom_bar_color');?>;
}
}

.boxed-header .is-sticky .header {
    max-width:<?php echo $this->journal2->settings->get('site_width');?>px;
    left: 50%;
    transform: translateX(-50%);
}

<?php if($this->journal2->settings->get('sticky_header_style', 'default') === 'menu'): ?>
.is-sticky .super-menu, .is-sticky .journal-menu-bg {
    box-shadow: none;
}
<?php endif; ?>

<?php if($this->journal2->settings->get('sticky_header_style', 'default') === 'menu' && $this->journal2->settings->get('boxed_menu_off', '0') === '1'): ?>
html.boxed-header .is-sticky .header {
    max-width:100%;
    left:0;
    transform: translateX(0);
}
<?php endif; ?>


.bottom-menu-bar #header .journal-links .top-menu .top-dropdown li:last-of-type::after{
  color:<?php echo $this->journal2->settings->get('top_menus_dropdown_bg_color');?>;
}

@media only screen and (min-width : 760px) and (max-width: 980px) {
.mobile-menu-on-tablet .mobile-menu > li > ul,
.mobile-menu-on-tablet .mobile-menu > li > .mega-menu{
  border-style:<?php echo $this->journal2->settings->get('main_menu_mobile_border_type');?>;
  border-color:<?php echo $this->journal2->settings->get('main_menu_mobile_border_color');?>;
}
.mobile-menu-on-tablet ul.menu-centered{
  height:auto;
}
}

@media only screen and (max-width: 760px){
.mobile-menu > li > ul,
.mobile-menu > li > .mega-menu{
  border-style:<?php echo $this->journal2->settings->get('main_menu_mobile_border_type');?>;
  border-color:<?php echo $this->journal2->settings->get('main_menu_mobile_border_color');?>;
}
}

@media only screen and (min-width: 760px) {
.journal-header-center .j-100{
height:<?php echo $this->journal2->settings->get('header_height_input', '100');?>px;
}
.journal-header-center .journal-menu-bg{
top:<?php echo $this->journal2->settings->get('header_height_input', '100') + 40 + $this->journal2->settings->get('top_bar_height', '40') - 40?>px;
}
.journal-header-center .top-bar > .j-min, .journal-header-center .top-menu > li > .m-item, .journal-header-center .journal-top-header{
height:<?php echo $this->journal2->settings->get('top_bar_height', '40');?>px;
}
.journal-header-center .journal-menu,
.journal-header-center .journal-menu-bg,
.journal-header-center .mobile-trigger,
ul.menu-centered{
height:<?php echo $this->journal2->settings->get('main_menu_height', '40');?>px;
}
.journal-header-center .mobile-trigger,
.journal-header-center .super-menu > li > a{
line-height:<?php echo $this->journal2->settings->get('main_menu_height', '40');?>px;
}
.journal-header-center .journal-language form .dropdown-menu,
.journal-header-center .journal-currency form .dropdown-menu{
top:<?php echo $this->journal2->settings->get('top_bar_height', '40')?>px;
}

.sticky-default.center-header .is-sticky .journal-header-center .j-100{
height:<?php echo $this->journal2->settings->get('sticky_header_height_input', '');?>px;
}
.sticky-default.center-header .is-sticky .journal-menu-bg{
top:<?php echo $this->journal2->settings->get('sticky_header_height_input', '')?>px;
}

.is-sticky .journal-header-center .journal-menu,
.is-sticky .journal-header-center .journal-menu-bg,
.is-sticky .journal-header-center .mobile-trigger{
height:<?php echo $this->journal2->settings->get('sticky_main_menu_height', '40');?>px;
}
.is-sticky .journal-header-center .mobile-trigger,
.is-sticky .journal-header-center .super-menu > li > a{
line-height:<?php echo $this->journal2->settings->get('sticky_main_menu_height', '40');?>px;
}
}

@media only screen and (max-width: 760px){
#header .journal-logo{
height:<?php echo $this->journal2->settings->get('header_height_input_phone', '');?>px !important;
}
}

.center-header body.is-sticky .header-assets.top-bar{
  background-color:<?php echo $this->journal2->settings->get('top_bar_bg_color');?>;
}

<?php if($this->journal2->settings->get('logo_on_phone', 'on') === 'off'): ?>
    @media only screen and (max-width: 760px){
    #header .journal-logo {
    display: none;
    }
    .journal-header-center .journal-secondary {
    border-bottom-width: 0;
    }
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('mega_menu_animate', 'on') === 'off' && $this->journal2->settings->get('mobile_menu_on', 'phone') === 'tablet'): ?>
    @media only screen and (min-width: 980px){
    .super-menu>li:hover .mega-menu,
    .super-menu>li:hover > ul{
    display:block !important;
    }
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('mega_menu_animate', 'on') === 'off' && $this->journal2->settings->get('mobile_menu_on', 'phone') === 'phone'): ?>
    @media only screen and (min-width: 760px){
    .super-menu>li:hover .mega-menu,
    .super-menu>li:hover > ul{
    display:block !important;
    }
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('header_box_shadow_type', 'none') === 'default'): ?>
    .header{
    box-shadow:0 0 5px rgba(0, 0, 0, 0.4);
    }
<?php endif; ?>

@media only screen and (min-width : 760px) and (max-width: 980px) {
.mobile-menu-on-tablet .journal-header-center .journal-menu{
height:auto;
}
.mobile-menu-on-tablet .journal-header-center .super-menu > li > a{
line-height:40px;
}
}

<?php if($this->journal2->settings->get('mobile_menu_show_category_images', 'on') === 'off'): ?>
    @media only screen and (max-width: 760px){
    .mega-menu-categories .mega-menu-item ul,
    .mega-menu-categories .mega-menu-item.menu-image-left ul{
    width:100%;
    }
    .mega-menu-categories .mega-menu-item img {
    display: none !important;
    }
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('remove_top_bar', 'on') === 'off'): ?>
    @media only screen and (min-width: 760px){
    .header-assets.top-bar,
    .journal-top-header{
    display:none;
    }
    .journal-header-center .journal-menu-bg{
    top:<?php echo $this->journal2->settings->get('header_height_input', '100')?>px;
    }
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('side_modules_margin', 'on') === 'off'): ?>
    .side-column .box{
    margin-bottom:0;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('product_grid_price_full', 'inline-block') === 'block'): ?>
    .product-grid-item .price{
    width:100%;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('filter_image_size', 'medium') === 'tiny'): ?>
    .product-grid-item .price{
    width:100%;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('cs_two_per_row', 'on') === 'off'): ?>
    @media only screen and (max-width: 760px){
    .box-sections ul li {
    width: 100%;
    border-right-width: 0;
    }
    .box-sections ul li:nth-last-child(2):nth-child(odd) {
    border-bottom-width: 1px;
    }
    html[dir="rtl"] .box-sections ul li {
      border-right-width: 0 !important;
    }
    }
<?php endif; ?>



#tabs{
  top:<?php echo ($this->journal2->settings->get('product_page_tabs_content_border:border-width'));?>;
}

.product-grid-item.display-icon .wishlist-icon:before,
.product-grid-item.display-icon .compare-icon:before{
line-height:<?php echo $this->journal2->settings->get('product_grid_wishlist_icon_bg_height');?>px;
}

.journal-header-center #cart .heading i{
height:<?php echo 40 - ($this->journal2->settings->get('cart_heading_border:border-width') * 2);?>px;
}

.journal-desktop .menu-floated .float-left{
border-right-style:<?php echo $this->journal2->settings->get('menu_divider_type');?>;
}

.column.products > h3{
margin-bottom:<?php echo 12 - $this->journal2->settings->get('footer_product_padding');?>px;
}
.column.products{
padding-bottom:<?php echo 12 - $this->journal2->settings->get('footer_product_padding');?>px;
}

.side-column .journal-gallery .box-heading{
margin-bottom:<?php echo 10 - $this->journal2->settings->get('side_gallery_padding');?>px;
}

.side-column .box-category > ul li ul li a{
padding-left: <?php echo (int)$this->journal2->settings->get('side_category_link_padding_left') + (int)$this->journal2->settings->get('side_category_sub_left_padding');?>px;
}
.side-column .box-category > ul li ul li ul li a{
padding-left: <?php echo (int)$this->journal2->settings->get('side_category_link_padding_left') + 2 * (int)$this->journal2->settings->get('side_category_sub_left_padding');?>px;
}
.side-column .box-category > ul li ul li ul li ul li a{
padding-left: <?php echo (int)$this->journal2->settings->get('side_category_link_padding_left') + 3 * (int)$this->journal2->settings->get('side_category_sub_left_padding');?>px;
}
.side-column .box-category > ul li ul li ul li ul li ul li a{
padding-left: <?php echo (int)$this->journal2->settings->get('side_category_link_padding_left') + 4 * (int)$this->journal2->settings->get('side_category_sub_left_padding');?>px;
}
.side-column .box-category > ul li ul li ul li ul li ul li ul li a{
padding-left: <?php echo (int)$this->journal2->settings->get('side_category_link_padding_left') + 5 * (int)$this->journal2->settings->get('side_category_sub_left_padding');?>px;
}

@media only screen and (max-width: <?php echo $this->journal2->settings->get('site_width') + 15;?>px) {
.breadcrumb{
padding-left:10px;
}
.super-menu > li:first-of-type{
border-left-width:0;
}
.super-menu > li:last-of-type{
border-right-width:0;
}
html[dir="rtl"] .super-menu > li:first-of-type{
border-left-width:1px;
border-right-width:0;
}
html[dir="rtl"] .super-menu > li:last-of-type{
border-left-width:0;
}
html[dir="rtl"] .super-menu.menu-floated > li:first-of-type
border-right-width:0;
}
}

.super-menu.menu-floated{
border-right-width:1px;
border-left-width:1px;
border-color:<?php echo $this->journal2->settings->get('menu_divider');?>;
border-style:<?php echo $this->journal2->settings->get('menu_divider_type', 'solid');?>;
}

<?php if($this->journal2->settings->get('cs_fullwidth_divider', 'off') === 'on'): ?>
    .custom-sections .box-heading.box-sections{
    border-left-width:1px;
    border-right-width:1px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_button_unite', '1') === '0' && $this->journal2->settings->get('product_grid_wishlist_icon_display', 'icon') === 'icon' && $this->journal2->settings->get('product_grid_wishlist_icon_position', 'button') === 'button'): ?>

.product-grid-item .wishlist,
.product-grid-item .compare{
    padding:0;
}
.product-grid-item .button-group{
    display: flex;
    justify-content: center;
}
<?php endif; ?>


.custom-sections .box-heading.box-sections{
border-left-style:<?php echo $this->journal2->settings->get('cs_title_divider_type');?>;
}

.journal-carousel:not(.journal-gallery) .box-content .swiper-container{
padding: <?php echo $this->journal2->settings->get('carousel_shadow_mask', '');?>px;
margin: -<?php echo $this->journal2->settings->get('carousel_shadow_mask', '');?>px;
}

.journal-carousel.arrows-top .swiper-button-prev,
.journal-carousel.arrows-top .swiper-button-next{
    margin-top:<?php echo $this->journal2->settings->get('carousel_shadow_mask', '');?>px;
}

.side-column .journal-carousel.arrows-top .swiper-button-prev,
.side-column .journal-carousel.arrows-top .swiper-button-next,
.related-products.journal-carousel.arrows-top .swiper-button-prev,
.related-products.journal-carousel.arrows-top .swiper-button-next{
    margin-top:0;
}

<?php if($this->journal2->settings->get('footer_top_margin', '0') === '20'): ?>
div#footer{
    margin-top:<?php echo $this->journal2->settings->get('footer_custom_top_margin', '20');?>px;
}
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_bottom_margin', '0') === '20'): ?>
div#footer{
    margin-bottom:<?php echo $this->journal2->settings->get('footer_custom_bottom_margin', '20');?>px;
}
<?php endif; ?>

.extended-container + .boxed-footer #footer{
    margin-top:<?php echo $this->journal2->settings->get('footer_custom_top_margin') - $this->journal2->settings->get('container_bottom_spacing');?>px;
}


<?php if($this->journal2->settings->get('carousel_title_side_margin', 'on') === 'off'): ?>
.side-column .journal-carousel .htabs {
    margin-bottom: 0;
}
.side-column .arrows-top:not(.journal-gallery) .swiper-button-prev,
.side-column .arrows-top:not(.journal-gallery) .swiper-button-next {
    margin-top:20px;
}
<?php endif; ?>


<?php if($this->journal2->settings->get('menu_brands_title_align', 'left') === 'center'): ?>
.mega-menu-brands div > h3 {
    justify-content: center;
}
<?php endif; ?>

<?php if($this->journal2->settings->get('menu_brands_title_align', 'left') === 'right'): ?>
.mega-menu-brands div > h3 {
    justify-content: flex-end;
}
<?php endif; ?>

.side-column .journal-carousel .box-content .swiper-container{
    padding:0;
    margin:0;
}
html[dir="rtl"] .journal-carousel.arrows-top .swiper-button-next{
right:auto;
left:<?php echo $this->journal2->settings->get('carousel_icon_offset_left', '');?>px;
}

html[dir="rtl"] .journal-carousel.arrows-top .swiper-button-prev{
right:auto;
left:<?php echo $this->journal2->settings->get('carousel_icon_offset_right', '');?>px;
}

html[dir="rtl"] .journal-carousel:not(.arrows-top) .swiper-button-next{
right:auto;
left:<?php echo $this->journal2->settings->get('carousel_side_icon_offset_left', '');?>px;
}

html[dir="rtl"] .journal-carousel:not(.arrows-top) .swiper-button-prev{
left:auto;
right:<?php echo $this->journal2->settings->get('carousel_side_icon_offset_right', '');?>px;
}

<?php if($this->journal2->settings->get('post_grid_button_align', 'left') === 'center'): ?>
    html[dir="rtl"] .post-button{
    text-align:center;
    }
<?php endif; ?>
<?php if($this->journal2->settings->get('post_grid_button_align', 'left') === 'right'): ?>
    html[dir="rtl"] .post-button{
    text-align:left;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_module_button_align', 'left') === 'center'): ?>
    html[dir="rtl"] .post-module .post-button{
    text-align:center;
    }
<?php endif; ?>
<?php if($this->journal2->settings->get('post_module_button_align', 'left') === 'right'): ?>
    html[dir="rtl"] .post-module .post-button{
    text-align:left;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('menu_categories_title_align', 'left') === 'center'): ?>
    html[dir="rtl"] .mega-menu-categories .mega-menu-item h3{
      text-align:center;
      justify-content: center;
    }
    .mega-menu-categories .mega-menu-item h3{
      justify-content: center;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('menu_categories_title_align', 'left') === 'right'): ?>
    html[dir="rtl"] .mega-menu-categories .mega-menu-item h3{
      text-align:left;
      justify-content: flex-start;
    }
    .mega-menu-categories .mega-menu-item h3{
      justify-content: flex-end;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_links_align', 'left') === 'left'): ?>
    html[dir="rtl"] footer .column-menu-wrap > ul li{
    text-align:right;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_links_align', 'left') === 'right'): ?>
    html[dir="rtl"] footer .column-menu-wrap > ul li{
    text-align:left;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_links_align', 'left') === 'center'): ?>
    html[dir="rtl"] footer .column-menu-wrap > ul li{
    text-align:center;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_titles_align', 'left') === 'left'): ?>
    html[dir="rtl"] footer .column>h3{
    text-align:right;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_titles_align', 'left') === 'right'): ?>
    html[dir="rtl"] footer .column>h3{
    text-align:left;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_titles_align', 'left') === 'center'): ?>
    html[dir="rtl"] footer .column>h3{
    text-align:center;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('post_title_overflow', 'on') === 'off'): ?>
    .blog-post .heading-title{
    white-space:normal;
    height:auto;
    line-height:1.2;
    padding:8px 0;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('module_title_overflow', 'on') === 'off'): ?>
    .post-module .box-heading{
    white-space:normal;
    height:auto;
    line-height:1.2;
    padding-top:8px;
    padding-bottom:8px;
    }
<?php endif; ?>

.posts.blog-list-view .post-item-details{
width: <?php echo 100 - $this->journal2->settings->get('post_list_image_width', '33.333333'); ?>%;
}

.side-column .box.cms-blocks .box-heading{
margin-bottom:<?php echo $this->journal2->settings->get('side_cms_margin');?>px;
}

@media only screen and (min-width: <?php echo $this->journal2->settings->get('site_width') + 15;?>px) {
.safari5 #footer,
.safari5.boxed-header header{
   width: <?php echo $this->journal2->settings->get('site_width', 1024); ?>px;
}
.tp-banner{
  height:100% !important;
}
}

<?php if($this->journal2->settings->get('logo_ratio', 'on') === 'off'): ?>
#logo a img{
  height:auto;
}
<?php endif; ?>

@media only screen and (max-width: <?php echo $this->journal2->settings->get('site_width') + 15;?>px) {

.tp-banner-container{
   height:auto !important;
}

.side-column .oc-module .product-details {
max-width: 130px;
}
.checkout-page #content {
padding-left: 20px;
padding-right: 20px;
}
}

@media only screen and (max-width: 760px){
    .product-grid-item .has-countdown + .product-details .rating{
        top:-50px;
    }
    .product-grid-item .image.has-countdown .wishlist,
    .product-grid-item .image.has-countdown .compare{
        margin-bottom:42px;
    }
}

<?php if($this->journal2->settings->get('show_countdown', 'never') === 'always'): ?>
    .product-grid-item .countdown,
    .product-list-item .countdown {
        opacity: 1;
        visibility: visible;
    }
    .product-grid-item .has-countdown + .product-details .rating{
        top:-70px;
    }
    .product-grid-item .image.has-countdown .wishlist,
    .product-grid-item .image.has-countdown .compare{
        margin-bottom:42px;
    }
<?php endif; ?>
<?php if($this->journal2->settings->get('show_countdown', 'never') === 'hover'): ?>
    .product-grid-item:hover .countdown,
    .product-list-item:hover .countdown {
        opacity: 1;
        visibility: visible;
    }
    .product-grid-item:hover .has-countdown + .product-details .rating{
        top:-70px;
    }
    .product-grid-item:hover .image.has-countdown .wishlist,
    .product-grid-item:hover .image.has-countdown .compare{
        margin-bottom:42px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('show_countdown', 'never') === 'hidden'): ?>
    .product-grid-item .countdown,
    .product-list-item .countdown {
    display:none;
    }
<?php endif; ?>

    
<?php if($this->journal2->settings->get('product_grid_quickview_align', 'center') === 'bottom' && $this->journal2->settings->get('show_countdown', 'hover') === 'hover'): ?>
    .product-grid-item:hover .has-countdown .quickview-button{
        margin-top:-40px;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_align', 'center') === 'bottom' && $this->journal2->settings->get('show_countdown', 'hover') === 'always'): ?>
    .product-grid-item .has-countdown .quickview-button{
        margin-top:-40px;
    }
<?php endif; ?>



<?php if ($this->journal2->settings->get('product_page_cloud_zoom_inner') === '0'): ?>
    .zm-viewer{
    display:none;
    border-left:1px solid white;
    }
<?php endif; ?>

.option li.hint--top:before{
border-top-color:<?php echo $this->journal2->settings->get('product_page_push_tooltip_bg'); ?>;
}

<?php if($this->journal2->settings->get('mobile_menu_cart_display', 'on') === 'on'): ?>
    @media only screen and (max-width: 470px) {
    .journal-cart{
    background-color:<?php echo $this->journal2->settings->get('cart_heading_bg');?>;
    background-color:<?php echo $this->journal2->settings->get('cart_heading_bg_mobile');?>;
    }
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('mobile_menu_cart_display', 'on') === 'off' && $this->journal2->settings->get('catalog_header_cart2', 'visible') === 'visible'): ?>
    @media only screen and (max-width: 470px) {
    .phone-sticky-cart.menu-cart-off .journal-menu .mobile-trigger{
    width:100%;
    }
    header .journal-menu .mobile-trigger {
    width: 50%;
    margin-top: -40px;
    z-index: 3;
    background-color:transparent;
    }
    .journal-cart{
    z-index:2;
    background-color:<?php echo $this->journal2->settings->get('cart_heading_bg'); ?>
    }
    }
<?php endif; ?>

.phone-sticky-cart.phone-sticky-menu:not(.menu-cart-off) .journal-menu{
z-index:1;
}

<?php if($this->journal2->settings->get('mobile_menu_cart_display', 'on') === 'off' && $this->journal2->settings->get('catalog_header_search', 'block') === 'block'): ?>
    @media only screen and (max-width: 470px){
    div.mobile-trigger, .mobile-menu-on-tablet div.mobile-trigger{
    color:<?php echo $this->journal2->settings->get('mobile_trigger_text_color_cart_same_line');?>;
    }
    div.mobile-trigger:before, .mobile-menu-on-tablet div.mobile-trigger:before{
    color:<?php echo $this->journal2->settings->get('mobile_trigger_icon_color_cart_same_line');?>;
    }
    }
<?php endif; ?>

.journal-header-center #header .menu-dropdown::before{
border-bottom-color:<?php echo $this->journal2->settings->get('top_menus_dropdown_bg_color'); ?>
}

.header-notice > div{
max-width:<?php echo $this->journal2->settings->get('site_width', 1024); ?>px;
}

@media only screen and (max-width:<?php echo $this->journal2->settings->get('site_width', 1024) + 15; ?>px){
.header-notice > div{
padding-left:15px;
padding-right: 15px;
}
.header-notice.floated-icon > div{
padding-bottom:10px;
}
button.close-notice {
    right: 8px;
  }
  html[dir="rtl"] button.close-notice {
    right: auto;
    left: 8px;
  }
}

<?php if($this->journal2->settings->get('product_grid_quickview_align', 'center') === 'top'): ?>
  .product-grid-item .quickview-button{
      top:0;
      transform: translate(-50%, 0);
  }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_grid_align', 'left') === 'center'): ?>
  .post-item-details .comment-date{
      margin:0 auto;
  }
  .blog-grid-view .post-button{
      align-self:center;
  }
<?php endif; ?>

<?php if($this->journal2->settings->get('post_grid_align', 'left') === 'right'): ?>
  .post-item-details .comment-date{
      width:100%;
  }
  .blog-grid-view .post-button{
      align-self:flex-end;
  }
  html[dir="rtl"] .blog-grid-view .post-button{
      align-self:flex-start;
  }
<?php endif; ?>

<?php if($this->journal2->settings->get('product_grid_quickview_align', 'center') === 'bottom'): ?>
  .product-grid-item .quickview-button{
      top:100%;
      transform: translate(-50%, -100%);
  }
<?php endif; ?>

<?php if($this->journal2->settings->get('main_title_align', 'left') === 'center'): ?>
    html[dir="rtl"] .heading-title, html[dir="rtl"] .box-heading:not(.box-sections), html[dir="rtl"] #blogArticle
    .articleHeader h1, html[dir="rtl"] .journal-carousel .htabs.single-tab a, html[dir="rtl"] .oc-filter .panel-heading, html[dir="rtl"] .post-module .box-heading, html[dir="rtl"] #content h1.heading-title{
    text-align:center;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('main_title_align', 'left') === 'right'): ?>
    html[dir="rtl"] .heading-title, html[dir="rtl"] .box-heading:not(.box-sections), html[dir="rtl"] #blogArticle
    .articleHeader h1, html[dir="rtl"] .journal-carousel .htabs.single-tab a, html[dir="rtl"] .oc-filter .panel-heading, html[dir="rtl"] .post-module .box-heading, html[dir="rtl"] #content h1.heading-title{
    text-align:left;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('secondary_title_align', 'left') === 'center'): ?>
    html[dir="rtl"] .secondary-title, html[dir="rtl"] #content #review-title{
    text-align:center;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('secondary_title_align', 'left') === 'right'): ?>
    html[dir="rtl"] .secondary-title, html[dir="rtl"] #content #review-title{
    text-align:left;
    }
<?php endif; ?>


<?php if($this->journal2->settings->get('scroll_to_top_pos', 'right') === 'left'): ?>
    .scroll-top{
    left:5px;
    right:auto;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_side_margin', '15') === '0'): ?>
    footer .columns {
    padding-left:0;
    }
    html[dir="rtl"] footer .columns {
    padding-right:0;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_shadow_type', 'none') === 'default'): ?>
    footer{
    box-shadow: 0 -2px 15px -3px rgba(0, 0, 0, 0.3);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('footer_shadow_type', 'none') === 'none'): ?>
    footer{
    box-shadow: none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('top_bar_shadow_type', 'none') === 'default'): ?>
    .journal-top-header{
    box-shadow:0 0 5px rgba(0, 0, 0, 0.4);
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('top_bar_shadow_type', 'none') === 'none'): ?>
    .journal-top-header{
    box-shadow:none;
    }
<?php endif; ?>

<?php if($this->journal2->settings->get('top_bar_shadow_type', 'none') !== 'none'): ?>
    .journal-header-default .links a, .journal-header-default .links .no-link {
    border-bottom-width: 0;
    }
<?php endif; ?>

/* Content Margin */

@media only screen and (min-width: 760px){
#column-left + #content {
margin-left: <?php echo $this->journal2->settings->get('left_column_width', 220); ?>px;
}
#column-right + #content {
margin-right: <?php echo $this->journal2->settings->get('right_column_width', 220); ?>px;
}

#column-left + #column-right + #content{
margin-left: <?php echo $this->journal2->settings->get('left_column_width', 220); ?>px;
margin-right: <?php echo $this->journal2->settings->get('right_column_width', 220); ?>px;
}
}

/* Tablet Column Width + Content Margin */

@media only screen and (min-width:760px) and (max-width:980px) {
#column-left {
width: <?php echo $this->journal2->settings->get('left_column_width_tablet', 220); ?>px;
}
#column-right{
width: <?php echo $this->journal2->settings->get('right_column_width_tablet', 220); ?>px;
}
#column-left + #content {
margin-left: <?php echo $this->journal2->settings->get('left_column_width_tablet', 220); ?>px;
}
#column-right + #content {
margin-right: <?php echo $this->journal2->settings->get('right_column_width_tablet', 220); ?>px;
}
#column-left + #column-right + #content{
margin-left: <?php echo $this->journal2->settings->get('left_column_width_tablet', 220); ?>px;
margin-right: <?php echo $this->journal2->settings->get('right_column_width_tablet', 220); ?>px;
}
}

/* Extended Layout Margins */

@media only screen and (min-width:760px) and (max-width: <?php echo $this->journal2->settings->get('site_width') + 15;?>px) {
.skin-16 .journal-header-center .journal-search {
    padding-left: 30px;
}
.extended-layout #column-left{
padding-left:20px;
}
.extended-layout #column-right{
padding-right:20px;
}
.extended-layout #content,
.extended-layout #column-left + #content,
.extended-layout #column-right + #content{
padding-left:20px;
padding-right:20px;
}
html[dir="rtl"].extended-layout #column-left{
padding-right:20px!important;
}
html[dir="rtl"].extended-layout #column-right{
padding-left:20px !important;
}
html[dir="rtl"].extended-layout #column-left + #content {
margin-right: <?php echo $this->journal2->settings->get('left_column_width', 220); ?>px;
margin-left: 0;

}
html[dir="rtl"].extended-layout #column-right + #content {
margin-right: 0;
}
}

.mega-menu .mega-menu-column .menu-cms-block{
    margin-bottom:<?php echo $this->journal2->settings->get('menu_categories_item_margin'); ?>px;
}

.fly-drop-down ul li{
    min-height:<?php echo $this->journal2->settings->get('flyout_menu_item_height', 40); ?>px;
}
  
@media only screen and (max-width: 760px){
.product-grid-item .rating{
    margin-left:<?php echo $this->journal2->settings->get('rating_offset_x_phone'); ?>px;
}    
.product-grid-item .rating{
    top:<?php echo $this->journal2->settings->get('rating_offset_y_phone'); ?>px;
}  
}

/* RTL Columns */

<?php if($this->journal2->settings->get('rtl_columns', '1') === '1'): ?>

    html[dir="rtl"] .flyout-left .fly-mega-menu,
    html[dir="rtl"] .flyout-left .fly-drop-down > ul {
    left: auto;
    right: 100%;
    }
    html[dir="rtl"] .flyout-right .fly-mega-menu,
    html[dir="rtl"] .flyout-right .fly-drop-down > ul {
    left: 100% !important;
    right: auto;
    }
    html[dir="rtl"] .flyout-menu .flyout > ul > li > a i.menu-plus {
    left: 5px;
    right: auto;
    transform: scale(-1);
    }
    html[dir="rtl"] #column-right .flyout-menu .flyout > ul > li > a i.menu-plus {
    left: auto;
    right: 8px;
    transform: scale(1);
    }
    html[dir="rtl"] .flyout-menu .flyout > ul > li > a {
    padding: 7px 12px 7px 25px;
    }
    html[dir="rtl"] #column-right .flyout-menu .flyout > ul > li > a {
    padding: 7px 25px 7px 12px;
    text-align:left;
    }


    html[dir="rtl"] #column-left {
    float: right;
    }
    html[dir="rtl"] #column-right {
    float: left;
    }


    @media only screen and (min-width: 760px){

    html[dir="rtl"] #column-left {
    padding: 20px 20px 20px 0;
    }
    html[dir="rtl"] #column-right {
    padding: 20px 0 20px 20px;
    }

    html[dir="rtl"] #column-left + #content {
    margin-right: <?php echo $this->journal2->settings->get('left_column_width', 220); ?>px;
    margin-left: 0;

    }
    html[dir="rtl"] #column-right + #content {
    margin-left: <?php echo $this->journal2->settings->get('right_column_width', 220); ?>px;
    margin-right: 0;
    }

    html[dir="rtl"] #column-left + #column-right + #content{
    margin-right: <?php echo $this->journal2->settings->get('left_column_width', 220); ?>px;
    margin-left: <?php echo $this->journal2->settings->get('right_column_width', 220); ?>px;
    }

    }

    @media only screen and (min-width : 760px) and (max-width: 980px) {

    html[dir="rtl"] #column-left + #content {
    margin-right: <?php echo $this->journal2->settings->get('left_column_width_tablet', 220); ?>px;
    margin-left:0;
    }
    html[dir="rtl"] #column-right + #content {
    margin-left: <?php echo $this->journal2->settings->get('right_column_width_tablet', 220); ?>px;
    margin-right:0;
    }
    html[dir="rtl"] #column-left + #column-right + #content{
    margin-right: <?php echo $this->journal2->settings->get('left_column_width_tablet', 220); ?>px;
    margin-left: <?php echo $this->journal2->settings->get('right_column_width_tablet', 220); ?>px;
    }

    html[dir="rtl"].extended-layout #column-left + #content {
    margin-right: <?php echo $this->journal2->settings->get('left_column_width_tablet', 220); ?>px;
    margin-left: 0;

    }
    }

    @media only screen and (min-width: <?php echo $this->journal2->settings->get('site_width') + 15;?>px) {
    html[dir="rtl"].extended-layout #column-left{
    padding-right:0;
    }
    html[dir="rtl"].extended-layout #column-right{
    padding-left:0;
    }
    html[dir="rtl"].extended-layout #column-right + #content {
    padding-left: 20px;
    padding-right: 0;
    }
    html[dir="rtl"].extended-layout #column-left + #content {
    padding-right: 20px;
    padding-left: 0;
    }
    }

<?php endif; ?>


.refine-images::before,
#refine-images::before,
.category-list::before{
content:"<?php echo $this->journal2->settings->get('refine_text', ''); ?>";
margin-right:<?php echo $this->journal2->settings->get('refine_grid_item_spacing', ''); ?>px;
}
<?php if($this->journal2->settings->get('refine_text_status', 'none') === 'none'): ?>
    .refine-images::before,
    #refine-images::before,
    .category-list::before{
    display:none;
    }
<?php endif; ?>
.refine-image {
padding-right: <?php echo $this->journal2->settings->get('refine_grid_item_spacing', '15'); ?>px;
margin-bottom: <?php echo $this->journal2->settings->get('refine_grid_item_spacing', '15'); ?>px;
}
.refine-images {
margin-right: -<?php echo $this->journal2->settings->get('refine_grid_item_spacing', '15'); ?>px;
margin-bottom: <?php echo 15 - $this->journal2->settings->get('refine_grid_item_spacing', '15'); ?>px;;
}

.product-grid-item {
margin-bottom: <?php echo $this->journal2->settings->get('product_grid_item_spacing', '20'); ?>px;
}
.product-wrapper,
.ias-button,
.ias-loader,
.ias-noneleft{
margin-right: <?php echo $this->journal2->settings->get('product_grid_item_spacing', '20'); ?>px;
}
.ias-button,
.ias-loader,
.ias-noneleft{
margin-top: <?php echo 20 - $this->journal2->settings->get('product_grid_item_spacing', '20'); ?>px;
}
.product-grid, #content .box-product{
margin-right: -<?php echo $this->journal2->settings->get('product_grid_item_spacing', '20'); ?>px;
}

/* Mobile Product Spacing */

@media only screen and (max-width: 760px){
#cart .heading i::before{
    color:<?php echo $this->journal2->settings->get('cart_icon_mobile'); ?>;
}
#cart .heading i{
    background-color:<?php echo $this->journal2->settings->get('cart_icon_bg_mobile'); ?>;
}
div#container,
.home-page div#container {
    margin-top: 0;
    margin-bottom: 0;
    box-shadow:none;
}
  .product-grid-item:not(.swiper-slide) {
    margin-bottom: <?php echo $this->journal2->settings->get('product_grid_item_spacing_mobile', '20'); ?>px;
  }
  .product-grid-item:not(.swiper-slide) .product-wrapper,
  .ias-button,
  .ias-loader,
  .ias-noneleft{
    margin-right: <?php echo $this->journal2->settings->get('product_grid_item_spacing_mobile', '20'); ?>px;
  }
  .product-grid, #content .box-product{
    margin-right: -<?php echo $this->journal2->settings->get('product_grid_item_spacing_mobile', '20'); ?>px;
  }
}

.button:active{
    box-shadow:<?php echo $this->journal2->settings->get('button_shadow_active');?>;
}

#column-left .oc-module .product-details{
    max-width:<?php echo $this->journal2->settings->get('left_column_width', '220') - 220 + 145; ?>px;
}

#column-right .oc-module .product-details{
    max-width:<?php echo $this->journal2->settings->get('right_column_width', '220') - 220 + 145; ?>px;
}


<?php if(($bg = $this->journal2->settings->get('body_bg_image:background-image')) && $this->journal2->settings->get('body_bg_image:background-attachment') === 'fixed'): ?>
.mobile body,
.tablet body{
  background-image:none;
}
.mobile body::before,
.tablet body::before{
  content: "";
  top: 0;
  left: 0;
  right: 0;
  bottom:0;
  width: 100%;
  height: 100vh;
  position: fixed;
  background-image: <?php echo $bg; ?>;
  background-attachment: scroll;
  background-size: initial;
  background-repeat: inherit;
  background-position: center top;
  z-index:-1;
}
<?php endif; ?>

<?php if(($bg = $this->journal2->settings->get('body_bg_image_home:background-image')) && $this->journal2->settings->get('body_bg_image_home:background-attachment') === 'fixed'): ?>
.mobile.home-page body,
.tablet.home-page body{
  background-image:none;
}
.mobile.home-page body::before,
.tablet.home-page body::before{
  content: "";
  top: 0;
  left: 0;
  right: 0;
  bottom:0;
  width: 100%;
  height: 100vh;
  position: fixed;
  background-image: <?php echo $bg; ?>;
  background-attachment: scroll;
  background-size: initial;
  background-repeat: inherit;
  background-position: center top;
  z-index:-1;
}
<?php endif; ?>

/* Custom CSS */
<?php echo $this->journal2->settings->get('custom_css'); ?>

header .links a{
    font-size: 14px;
}
#logo a img{
    padding: 10px;
}
.post-details {
  
  background: #fff;
  }
.post-details figure img{
    width: 100%;
    padding: 20px;
}