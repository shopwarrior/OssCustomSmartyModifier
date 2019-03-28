{extends file='parent:frontend/detail/tabs/description.tpl'}

{* Headline *}
{block name='frontend_detail_description_title'}
    <div class="content--title">
        {s name="DetailDescriptionHeader"}{/s} "{$sArticle.articleName|split_and_shuffle}"
    </div>
{/block}

{* Further links title *}
{block name='frontend_detail_description_links_title'}
    <div class="content--title">
        {s name="ArticleTipMoreInformation"}{/s} "{$sArticle.articleName|split_and_shuffle}"
    </div>
{/block}

{* Comment title  *}
{block name='frontend_detail_description_our_comment_title'}
    <div class="content--title">
        {s name='DetailDescriptionComment'}{/s} "{$sArticle.articleName|split_and_shuffle}"
    </div>
{/block}