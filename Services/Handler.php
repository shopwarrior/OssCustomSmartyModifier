<?php

namespace OssCustomSmartyModifier\Services;

/**
 * Class Handler
 *
 * @package OssCustomSmartyModifier\Services
 * @author  Odessite <alexey.palamar@odessite.com.ua>
 */
class Handler
{
    /**
     * @param string|array $string
     * @return string|array
     */
    public function shuffle($string)
    {
        if (empty($string)) {
            return $string;
        }

        if (is_array($string)) {
            foreach ($string as &$item) {
                $item = $this->shuffle($item);
            }

            return $string;
        }
        $list = explode(' ', $string);
        shuffle($list);

        return implode(' ', $list);
    }
}
