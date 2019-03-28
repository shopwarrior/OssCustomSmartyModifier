{extends file='parent:frontend/checkout/items/product.tpl'}

{block name="frontend_checkout_cart_item_image_container_inner"}

    {$image = $sBasketItem.additional_details.image}
    {$desc = $sBasketItem.articlename|split_and_shuffle|escape}

    {if $image.thumbnails[0]}
        <a href="{$detailLink}" title="{$sBasketItem.articlename|split_and_shuffle|strip_tags|escape}" class="table--media-link"
                {if {config name=detailmodal} && {controllerAction|lower} === 'confirm'}
            data-modalbox="true"
            data-content="{url controller="detail" action="productQuickView" ordernumber="{$sBasketItem.ordernumber}" fullPath}"
            data-mode="ajax"
            data-width="750"
            data-sizing="content"
            data-title="{$sBasketItem.articlename|split_and_shuffle|strip_tags|escape}"
            data-updateImages="true"
                {/if}>

            {if $image.description}
                {$desc = $image.description|escape}
            {/if}

            <img srcset="{$image.thumbnails[0].sourceSet}" alt="{$desc}" title="{$desc|truncate:160}" />
        </a>
    {else}
        <img src="{link file='frontend/_public/src/img/no-picture.jpg'}" alt="{$desc}" title="{$desc|truncate:160}" />
    {/if}
{/block}

{* Product name *}
{block name='frontend_checkout_cart_item_details_title'}

    <a class="content--title" href="{$detailLink}" title="{$sBasketItem.articlename|split_and_shuffle|strip_tags|escape}"
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