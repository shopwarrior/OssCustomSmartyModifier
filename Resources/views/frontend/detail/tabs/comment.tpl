{extends file='parent:frontend/detail/tabs/comment.tpl'}

{* Review title *}
{block name="frontend_detail_tabs_rating_title"}
    <div class="content--title">
        {s name="DetailCommentHeader"}{/s} "{$sArticle.articleName|split_and_shuffle}"
    </div>
{/block}