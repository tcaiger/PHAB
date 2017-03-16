<?php

class PhusionPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $db = [
        'Heading1' => 'Varchar',
        'Heading2' => 'Varchar',
        'PageIntro'   => 'Varchar(200)',
        'PageContent' => 'Text',
        'Quote'       => 'Text'
    ];

    private static $has_one = [
        'SideImage' => 'PHABImage'
    ];

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            HeaderField::create('MainHeader', 'Main Content', '4'),
            TextField::create('Heading1', ''),
            TextField::create('Heading2', ''),
            TextAreaField::create('PageIntro', 'Page Introduction'),
            UploadField::create('SideImage'),
            HTMLEditorField::create('Content'),
            HeaderField::create('QuoteHeading', 'Blockquote', '4'),
            TextareaField::create('Quote', 'Blockquote')
        ], 'Metadata');


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