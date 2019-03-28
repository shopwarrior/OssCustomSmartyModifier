{extends file='parent:frontend/checkout/premiums.tpl'}

{* Product image *}
{block name='frontend_checkout_premium_image'}
    <a href="{$premium.sArticle.linkDetails}" title="{$premium.sArticle.articleName|escape}" class="product--image">
        {if $premium.available}
            <div class="premium-product--badge">
                <i class="icon--check"></i>
            </div>
        {/if}

        {block name='frontend_checkout_premium_image_element'}
            <span class="image--element">
                                                            {if $premium.sArticle.image.thumbnails}
                                                                <img srcset="{$premium.sArticle.image.thumbnails[0].sourceSet}"
                                                                     alt="{$premium.sArticle.articleName|escape}" />
                                                            {else}
                                                                {s name="PremiumInfoNoPicture" assign="snippetPremiumInfoNoPicture"}{/s}
                                                                <img src="{link file='frontend/_public/src/img/no-picture.jpg'}"
                                                                     alt="{$snippetPremiumInfoNoPicture|escape}">
                                                            {/if}
                                                        </span>
        {/block}
    </a>
{/block}