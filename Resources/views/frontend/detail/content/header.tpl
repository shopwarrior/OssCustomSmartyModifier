{extends file='parent:frontend/detail/content/header.tpl'}

{* Product name *}
{block name='frontend_detail_index_name'}
    <h1 class="product--title" itemprop="name">
        {$sArticle.articleName|split_and_shuffle}
    </h1>
{/block}