<?php

class FundersPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $db = [

    ];

    private static $has_many = [
        'Logos' => 'Logo'
    ];

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            HTMLEditorField::create('Content'),
            GridField::create('Logos', 'Logos', $this->Logos(),
                GridFieldConfig_RecordEditor::create()
                    ->addComponents(
                        new GridFieldOrderableRows('SortOrder'),
                        new GridFieldBulkUpload()
                    )
            ),
            TextareaField::create('FooterContent')
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

class FundersPage_Controller extends Page_Controller {


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