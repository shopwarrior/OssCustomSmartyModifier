<?php

/**
 * @param string|array $string
 *
 * @return string
 */
function smarty_modifier_split_and_shuffle($string)
{
    return Shopware()->Container()->get(
        'oss_custom_smarty_modifier.services.handler'
    )->shuffle($string);
}
