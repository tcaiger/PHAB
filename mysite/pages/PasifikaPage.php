<?php

class PasifikaPage extends Page {

    //private static $can_be_root = false;
    //private static $allowed_children = 'none';

    private static $db = [
        'PageIntro'    => 'Varchar(200)',
        'M1Year'       => 'Varchar',
        'M1Month'       => 'Varchar',
        'M1Heading'    => 'Varchar',
        'M1Text'       => 'Varchar(200)',
        'M2Year'       => 'Varchar',
        'M2Month'       => 'Varchar',
        'M2Heading'    => 'Varchar',
        'M2Text'       => 'Varchar(200)',
        'M3Year'       => 'Varchar',
        'M3Month'       => 'Varchar',
        'M3Heading'    => 'Varchar',
        'M3Text'       => 'Varchar(200)',
        'Blockquote' => 'Varchar(200)'
    ];

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            HeaderField::create('MainHeader', 'Main Content', '4'),
            TextAreaField::create('PageIntro', 'Page Introduction'),
            HtmlEditorField::create('Content'),
            HeaderField::create('MilestonesHeading', 'Milestones Section', '4'),
            TextField::create('M1Year', 'Milestone 1 Year'),
            TextField::create('M1Month', 'Milestone 1 Month'),
            TextField::create('M1Heading', 'Milestone 1 Heading'),
            TextAreaField::create('M1Text', 'Milestone 1 Text'),
            TextField::create('M2Year', 'Milestone 2 Year'),
            TextField::create('M2Month', 'Milestone 2 Month'),
            TextField::create('M2Heading', 'Milestone 2 Heading'),
            TextAreaField::create('M2Text', 'Milestone 2 Text'),
            TextField::create('M3Year', 'Milestone 3 Year'),
            TextField::create('M3Month', 'Milestone 3 Month'),
            TextField::create('M3Heading', 'Milestone 3 Heading'),
            TextAreaField::create('M3Text', 'Milestone 3 Text'),
            HeaderField::create('QuoteHeading', 'Blockquote', '4'),
            TextAreaField::create('Blockquote')

        ], 'Metadata');

        // Remove delicate fields from content authors
        if ( !Permission::check('CMS_ACCESS_PAGES', 'any', $member)) {
            $fields->removebyName(array(
                'Title',
                'URLSegment',
                'MenuTitle',
                'Dependent'
            ));
        }

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