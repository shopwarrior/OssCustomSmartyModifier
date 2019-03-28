{extends file='parent:frontend/compare/col.tpl'}

{block name="frontend_compare_article_picture"}
    <li class="list--entry entry--picture">
        {* Product image - uses the picturefill polyfill for the HTML5 "picture" element *}
        <a href="{$sArticle.linkDetails}" title="{$sArticle.articleName|split_and_shuffle|escape}" class="box--image">
                            <span class="image--element">
                                <span class="image--media">

                                    {$desc = $sArticle.articleName|split_and_shuffle|escape}

                                    {if isset($sArticle.image.thumbnails)}

                                        {if $sArticle.image.description}
                                            {$desc = $sArticle.image.description|escape}
                                        {/if}

                                        <img srcset="{$sArticle.image.thumbnails[0].sourceSet}"
                                             alt="{$desc}"
                                             title="{$desc|truncate:160}" />
                                    {else}

                                        <img src="{link file='frontend/_public/src/img/no-picture.jpg'}"
                                             alt="{$desc}"
                                             title="{$desc|truncate:160}" />
                                    {/if}
                                </span>
                            </span>
        </a>
    </li>
{/block}

{block name='frontend_compare_article_name'}
    <li class="list--entry entry--name">
        <a class="link--name" href="{$sArticle.linkDetails}"
           title="{$sArticle.articleName|split_and_shuffle|escape}">{$sArticle.articleName|split_and_shuffle|truncate:47}</a>

        {block name='frontend_compare_article_name_button'}
            <a href="{$sArticle.linkDetails}" title="{$sArticle.articleName|split_and_shuffle|escape}"
               class="btn is--primary is--center is--full is--icon-right btn--product">
                {s name='ListingBoxLinkDetails' namespace="frontend/listing/box_article"}{/s}
                <i class="icon--arrow-right"></i>
            </a>
        {/block}
    </li>
{/block}