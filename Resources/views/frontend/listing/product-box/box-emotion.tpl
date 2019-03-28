{extends file='parent:frontend/listing/product-box/box-emotion.tpl'}

{block name="frontend_listing_box_article_product_name"}
    {$productName = $sArticle.articleName|split_and_shuffle}
    {if $sArticle.additionaltext}
        {$productName = $productName|cat:' '|cat:$sArticle.additionaltext}
    {/if}
{/block}