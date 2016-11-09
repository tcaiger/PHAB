<?php

class PhusionPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $db = [
        'PageIntro'      => 'Varchar(200)',
        'PageContent'      => 'Text',
        'Quote'      => 'Text'
    ];

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        //$fields->removeByName('Content');

        $fields->addFieldsToTab('Root.Main', [
            HeaderField::create('MainHeader', 'Main Content', '4'),
            TextAreaField::create('PageIntro', 'Page Introduction'),
            HTMLEditorField::create('Content'),
            HeaderField::create('QuoteHeading', 'Blockquote', '4'),
            TextareaField::create('Quote', 'Blockquote')
        ], 'Metadata');

        // Remove delicate fields from content authors
        if ( !Permission::check('CMS_ACCESS_PAGES', 'any', $member)) {
            $fields->removebyName(array(
                'Title',
                'URLSegment',
                'MenuTitle'
            ));
        }

        return $fields;
    }


}

class PhusionPage_Controller extends Page_Controller {


    public function init() {
        parent::init();

        Requirements::clear($this->ThemeDir() . '/js/jquery.min.js');
        Requirements::clear($this->ThemeDir() . '/js/main.js');

        // Combine and include js
        Requirements::combine_files(
            'main.js',
            array(
                "{$this->ThemeDir()}/js/jquery.min.js",
                "{$this->ThemeDir()}/js/bootstrap.min.js",
                "{$this->ThemeDir()}/js/owl.carousel.min.js",
                "{$this->ThemeDir()}/js/parallax.js",
                "{$this->ThemeDir()}/js/main.js"
            ));

    }

}