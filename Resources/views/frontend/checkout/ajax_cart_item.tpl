{extends file='parent:frontend/checkout/ajax_cart_item.tpl'}

{* Real product *}
{block name='frontend_checkout_ajax_cart_articleimage_product'}
    {if $basketItem.modus == $IS_PRODUCT || $basketItem.modus == $IS_PREMIUM_PRODUCT}
        {$desc = $basketItem.articlename|split_and_shuffle|escape}
        {if $basketItem.additional_details.image.thumbnails}
            {if $basketItem.additional_details.image.description}
                {$desc = $basketItem.additional_details.image.description|escape}
            {/if}
            <img srcset="{$basketItem.additional_details.image.thumbnails[0].sourceSet}" alt="{$desc}" title="{$desc|truncate:160}" class="thumbnail--image" />

        {elseif $basketItem.image.src.0}
            <img src="{$basketItem.image.src.0}" alt="{$desc}" title="{$desc|truncate:160}" class="thumbnail--image" />
        {/if}
    {/if}
{/block}

{* Article name *}
{block name='frontend_checkout_ajax_cart_articlename'}
    {$useAnchor = ($basketItem.modus != 4 && $basketItem.modus != 2 && $basketItem.modus != 3)}
    {if $useAnchor}
        <a class="item--link" href="{$detailLink}" title="{$basketItem.articlename|split_and_shuffle|escapeHtml}">
    {else}
        <div class="item--link">
    {/if}
    {block name="frontend_checkout_ajax_cart_articlename_quantity"}
        <span class="item--quantity">{$basketItem.quantity}{s name="AjaxCartQuantityTimes"}{/s}</span>
    {/block}
    {block name="frontend_checkout_ajax_cart_articlename_name"}
        <span class="item--name">
                    {if $theme.offcanvasCart}
                        {$basketItem.articlename|split_and_shuffle|escapeHtml}
                    {else}
                        {$basketItem.articlename|split_and_shuffle|truncate:28:"...":true|escapeHtml}
                    {/if}
                </span>
    {/block}
    {block name="frontend_checkout_ajax_cart_articlename_price"}
        <span class="item--price">{if $basketItem.amount}{$basketItem.amount|currency}{else}{s name="AjaxCartInfoFree"}{/s}{/if}{s name="Star"}{/s}</span>
    {/block}
    {if $useAnchor}
        </a>
    {else}
        </div>
    {/if}
{/block}