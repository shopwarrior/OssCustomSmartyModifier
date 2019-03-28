{extends file='parent:frontend/note/item.tpl'}

{* Article picture *}
{block name="frontend_note_item_image"}
    <div class="note--image-container">
        {$desc = $sBasketItem.articlename|split_and_shuffle|escape}
        {if $sBasketItem.image.thumbnails[0]}
            {if $sBasketItem.image.description}
                {$desc = $sBasketItem.image.description|escape}
            {/if}
            <a href="{$detailLink}" title="{$sBasketItem.articlename|split_and_shuffle|escape}" class="note--image-link">
                <img srcset="{$sBasketItem.image.thumbnails[0].sourceSet}" alt="{$desc}" title="{$desc|truncate:160}" class="note--image" />
            </a>

            {* Zoom picture *}
            {block name="frontend_note_item_image_zoom"}{/block}
        {else}
            <a href="{$detailLink}" title="{$sBasketItem.articlename|split_and_shuffle|escape}" class="note--image-link">
                <img src="{link file='frontend/_public/src/img/no-picture.jpg'}" alt="{$desc}" title="{$desc|truncate:160}" class="note--image" />
            </a>
        {/if}
    </div>
{/block}

{* Article name *}
{block name="frontend_note_item_details_name"}
    <a class="note--title" href="{$detailLink}" title="{$sBasketItem.articlename|split_and_shuffle|escape}">
        {$sBasketItem.articlename|split_and_shuffle|truncate:40}
    </a>
{/block}