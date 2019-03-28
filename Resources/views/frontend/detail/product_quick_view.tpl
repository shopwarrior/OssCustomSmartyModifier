{extends file='parent:frontend/detail/product_quick_view.tpl'}

{block name='frontend_detail_product_quick_view_image_link'}
    <a class="quick-view--image-link" href="{$sArticle.linkDetails}" title="{if $sArticle.image.res.description}{$sArticle.image.res.description|escape}{else}{$sArticle.articlename|split_and_shuffle|escape}{/if}">
        {block name='frontend_detail_product_quick_view_image'}

            {$alt = $sArticle.articlename|split_and_shuffle|escape}

            {if $sArticle.image.description}
                {$alt = $sArticle.image.description|escape}
            {/if}

            <span class="quick-view--image">
                            {block name='frontend_detail_product_quick_view_image_inner'}
                                {if $sArticle.image.thumbnails}
                                    <img srcset="{$sArticle.image.thumbnails[1].sourceSet}" alt="{$alt}" />
                                {else}
                                    {block name='product_quick_view_image_fallback'}
                                    <img src="{link file='frontend/_public/src/img/no-picture.jpg'}" alt="{$alt}">
                                {/block}
                                {/if}
                            {/block}
                        </span>
        {/block}
    </a>
{/block}

{block name='frontend_detail_product_quick_view_title'}
    <a href="{$sArticle.linkDetails}" class="quick-view--title" title="{$sArticle.articleName|split_and_shuffle|escape}">
        {block name='frontend_detail_product_quick_view_title_inner'}
            {$sArticle.articleName|split_and_shuffle|escape}
        {/block}
    </a>
{/block}