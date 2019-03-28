{extends file='parent:frontend/checkout/items/rebate.tpl'}

{* Product name *}
{block name='frontend_checkout_cart_item_rebate_details_title'}
    <span class="content--title">{$sBasketItem.articlename|split_and_shuffle|strip_tags|truncate:60}</span>
{/block}