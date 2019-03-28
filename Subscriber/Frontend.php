<?php

namespace OssCustomSmartyModifier\Subscriber;

use Enlight\Event\SubscriberInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;

/**
 * Class Frontend
 * @package OssCustomSmartyModifier\Subscriber
 * @author  Odessite <alexey.palamar@odessite.com.ua>
 */
class Frontend implements SubscriberInterface
{
    /**
     * @var ContainerInterface
     */
    private $container;

    /**
     * @var \Enlight_Template_Manager
     */
    private $templateManager;

    /**
     * @param ContainerInterface $container
     * @param \Enlight_Template_Manager $templateManager
     */
    public function __construct(ContainerInterface $container, \Enlight_Template_Manager $templateManager)
    {
        $this->container = $container;
        $this->templateManager = $templateManager;
    }

    /**
     * @return array
     */
    public static function getSubscribedEvents()
    {
        return [
            'Theme_Inheritance_Smarty_Directories_Collected' => 'collectSmartyModifiers',
            'Enlight_Controller_Action_PreDispatch' => 'onPreDispatch'
        ];
    }

    public function onPreDispatch()
    {
        $this->templateManager->addTemplateDir(
            $this->container->getParameter('oss_custom_smarty_modifier.plugin_dir') . '/Resources/views'
        );
    }

    public function collectSmartyModifiers(\Enlight_Event_EventArgs $args)
    {
        $directories = $args->getReturn();
        $directories[] = $this->container->getParameter(
            'oss_custom_smarty_modifier.plugin_dir'
            ).'/Resources/smarty/';

        $args->setReturn($directories);
    }
}
