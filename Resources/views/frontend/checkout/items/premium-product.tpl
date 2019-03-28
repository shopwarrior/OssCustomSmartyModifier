{extends file='parent:frontend/checkout/items/premium-product.tpl'}

{* Product image *}
{block name='frontend_checkout_cart_item_premium_image'}
    <div class="panel--td column--image">
        <div class="table--media">
            {if $sBasketItem.image.src.2}
                {block name="frontend_checkout_cart_item_image_container"}
                    <div class="table--media-outer">
                        <div class="table--media-inner">
                            <a href="{$sBasketItem.linkDetails}" title="{$sBasketItem.articlename|split_and_shuffle|strip_tags}" class="table--media-link"
                                    {if {config name=detailmodal} && {controllerAction|lower} === 'confirm'}
                                data-modalbox="true"
                                data-content="{url controller="detail" action="productQuickView" ordernumber="{$sBasketItem.ordernumber}" fullPath}"
                                data-mode="ajax"
                                data-width="750"
                                data-sizing="content"
                                data-title="{$sBasketItem.articlename|split_and_shuffle|strip_tags|escape}"
                                data-updateImages="true"
                                    {/if}>
                                {$desc = $sBasketItem.articlename|split_and_shuffle|escape}
                                {if $sBasketItem.image.description}
                                    {$desc = $sBasketItem.image.description|escape}
                                {/if}
                                <img src="{$sBasketItem.image.src.2}" alt="{$desc}" title="{$desc|truncate:160}" />
                                <span class="cart--badge">
                                                <span>{s name="CartItemInfoFree"}{/s}</span>
                                            </span>
                            </a>
                        </div>
                    </div>
                {/block}
            {else}
                <div class="table--media">
                    <div class="basket--badge">
                        {s name="CartItemInfoFree"}{/s}
                    </div>
                </div>
            {/if}
        </div>
    </div>
{/block}

{* Product name *}
{block name='frontend_checkout_cart_item_premium_premium_details_title'}
    <a href="{$sBasketItem.linkDetails}" title="{$sBasketItem.articlename|split_and_shuffle|strip_tags}" class="content--title"
            {if {config name=detailmodal} && {controllerAction|lower} === 'confirm'}
        data-modalbox="true"
        data-content="{url controller="detail" action="productQuickView" ordernumber="{$sBasketItem.ordernumber}" fullPath}"
        data-mode="ajax"
        data-width="750"
        data-sizing="content"
        data-title="{$sBasketItem.articlename|split_and_shuffle|strip_tags|escape}"
        data-updateImages="true"
            {/if}>
        {$sBasketItem.articlename|split_and_shuffle|strip_tags|truncate:60}
    </a>
{/block}