{extends file='parent:frontend/compare/index.tpl'}

{block name='frontend_compare_product_dropdown_article_name'}
    <a href="{url controller=detail sArticle=$compare.articleId}" title="{$compare.articlename|split_and_shuffle|escape}" class="compare--link">{$compare.articlename|split_and_shuffle}</a>
{/block}