<?php

class PasifikaPage extends Page {

    private static $db = [
        'Heading1' => 'Varchar',
        'Heading2' => 'Varchar',
        'PageIntro'    => 'Varchar(200)',
        'Blockquote' => 'Varchar(200)'
    ];

    private static $has_one = [
        'SideImage' => 'Image'
    ];

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            HeaderField::create('MainHeader', 'Main Content', '4'),
            TextField::create('Heading1', ''),
            TextField::create('Heading2', ''),
            TextAreaField::create('PageIntro', 'Page Introduction'),
            UploadField::create('SideImage'),
            HtmlEditorField::create('Content'),
            HeaderField::create('QuoteHeading', 'Blockquote', '4'),
            TextAreaField::create('Blockquote')

        ], 'Metadata');


        return $fields;
    }


}

class PasifikaPage_Controller extends Page_Controller {


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