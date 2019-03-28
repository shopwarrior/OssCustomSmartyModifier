{extends file='parent:frontend/listing/product-box/button-detail.tpl'}

{block name="frontend_listing_product_box_button_detail_title"}
    {$title = {$sArticle.articleName|split_and_shuffle|escapeHtml} }
{/block}
