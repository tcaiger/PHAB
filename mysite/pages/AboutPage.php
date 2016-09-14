<?php

class AboutPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $db = [
        'PageIntro'      => 'Varchar(200)',
        'V1Heading'      => 'Varchar',
        'V1Text'         => 'Text',
        'V2Heading'      => 'Varchar',
        'V2Text'         => 'Text',
        'V3Heading'      => 'Varchar',
        'V3Text'         => 'Text',
        'SectionIntro'   => 'Varchar(200)'
    ];

    private static $has_many = [
      'Profiles' => 'Profile'
    ];

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            HeaderField::create('MainHeader', 'Main Content', '4'),
            TextAreaField::create('PageIntro', 'Page Introduction'),
            HtmlEditorField::create('Content'),
            HeaderField::create('ValuesHeading', 'Values Section', '4'),
            TextField::create('V1Heading', 'Value 1 Heading'),
            TextAreaField::create('V1Text', 'Value 1 Text'),
            TextField::create('V2Heading', 'Value 2 Heading'),
            TextAreaField::create('V2Text', 'Value 2 Text'),
            TextField::create('V3Heading', 'Value 3 Heading'),
            TextAreaField::create('V3Text', 'Value 3 Text'),
            HeaderField::create('TeamHeading', 'Team Section', '4'),
            TextAreaField::create('SectionIntro', 'Team Section Introduction'),
            GridField::create('Profiles', 'Profiles', $this->Profiles(),
                GridFieldConfig_RecordEditor::create()
                    ->addComponents(
                        new GridFieldOrderableRows('SortOrder')
                    )
            )
        ], 'Metadata');

        return $fields;
    }


}

class AboutPage_Controller extends Page_Controller {


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
                "{$this->ThemeDir()}/js/main.js"
            ));

    }

}