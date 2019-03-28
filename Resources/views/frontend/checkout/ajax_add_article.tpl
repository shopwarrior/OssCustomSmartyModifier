{extends file='parent:frontend/checkout/ajax_add_article.tpl'}

{* Article image *}
{block name='checkout_ajax_add_information_image'}
    <div class="article--image block">
        <a href="{$detailLink}" class="link--article-image" title="{$sArticle.articlename|split_and_shuffle|escape}">

            {$image = $sArticle.additional_details.image}
            {$alt = $sArticle.articlename|split_and_shuffle|escape}

            {if $image.description}
                {$alt = $image.description|escape}
            {/if}

            <span class="image--media">
                            {if isset($image.thumbnails)}
                                <img srcset="{$image.thumbnails[0].sourceSet}" alt="{$alt}" title="{$alt|truncate:160}" />
                            {else}
                                {block name='frontend_detail_image_fallback'}
                                <img src="{link file='frontend/_public/src/img/no-picture.jpg'}" alt="{$alt}" title="{$alt|truncate:160}" />
                            {/block}
                            {/if}
                        </span>
        </a>
    </div>
{/block}

{* Article Name *}
{block name='checkout_ajax_add_information_name'}
    <div class="article--name">
        <ul class="list--name list--unstyled">
            <li class="entry--name">
                <a class="link--name" href="{$detailLink}" title="{$sArticle.articlename|split_and_shuffle|escape}">
                    {$sArticle.articlename|split_and_shuffle|escape|truncate:35}
                </a>
            </li>
            <li class="entry--ordernumber">{s name="AjaxAddLabelOrdernumber"}{/s}: {$sArticle.ordernumber}</li>
        </ul>
    </div>
{/block}