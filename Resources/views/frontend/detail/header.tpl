{extends file='parent:frontend/detail/header.tpl'}

{* Meta title *}
{block name="frontend_index_header_title"}{if $sArticle.metaTitle}{$sArticle.metaTitle|escapeHtml} | {{config name=sShopname}|escapeHtml}{else}{$sArticle.articleName|split_and_shuffle} | {$smarty.block.parent}{/if}{/block}

{* Meta opengraph tags *}
{block name='frontend_index_header_meta_tags_opengraph'}
    <meta property="og:type" content="product" />
    <meta property="og:site_name" content="{{config name=sShopname}|escapeHtml}" />
    <meta property="og:url" content="{url sArticle=$sArticle.articleID title=$sArticle.articleName}" />
    <meta property="og:title" content="{$sArticle.articleName|split_and_shuffle|escapeHtml}" />
    <meta property="og:description" content="{$sArticle.description_long|strip_tags|trim|truncate:$SeoDescriptionMaxLength:'…'|escapeHtml}" />
    <meta property="og:image" content="{$sArticle.image.source}" />

    <meta property="product:brand" content="{$sArticle.supplierName|escapeHtml}" />
    <meta property="product:price" content="{$sArticle.price}" />
    <meta property="product:product_link" content="{url sArticle=$sArticle.articleID title=$sArticle.articleName}" />

    <meta name="twitter:card" content="product" />
    <meta name="twitter:site" content="{{config name=sShopname}|escapeHtml}" />
    <meta name="twitter:title" content="{$sArticle.articleName|split_and_shuffle|escapeHtml}" />
    <meta name="twitter:description" content="{$sArticle.description_long|strip_tags|trim|truncate:$SeoDescriptionMaxLength:'…'|escapeHtml}" />
    <meta name="twitter:image" content="{$sArticle.image.source}" />
{/block}
