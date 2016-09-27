<?php

class VolunteersPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $db = [
        'PageHeading' => 'Varchar'
    ];

    private static $has_one = [
        'IntroImage' => 'PHABImage',
        'Document' => 'File'
    ];

    private static $has_many = [
        'Logos' => 'Logo'
    ];

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            TextField::create('PageHeading'),
            $image = UploadField::create('IntroImage')->setDescription('Image should be <strong>770px</strong> wide and <strong>770px</strong> high'),
            HTMLEditorField::create('Content'),
            $document = UploadField::create('Document')
        ], 'Metadata');

        // Remove delicate fields from content authors
        if ( !Permission::check('CMS_ACCESS_PAGES', 'any', $member)) {
            $fields->removebyName(array(
                'Title',
                'URLSegment',
                'MenuTitle'
            ));
        }

        // Place images into a specific folder
        $folderDir = 'Uploads/Pages/';
        $image->setFolderName($folderDir);
        $document->setFolderName($folderDir);

        return $fields;
    }


}

class VolunteersPage_Controller extends Page_Controller {


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