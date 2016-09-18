<?php

class GalleryPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $has_many = array(
        'GalleryImages' => 'GalleryImage'
    );

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->removeByName('Content');

        $fields->addFieldsToTab('Root.Main', [
            GridField::create('GalleryImages','GalleryImages',$this->GalleryImages(),
                GridFieldConfig_RecordEditor::create()
                    ->addComponents(
                        new GridFieldOrderableRows('SortOrder')
                    )
                )
        ], 'Metadata');



        return $fields;
    }

}

class GalleryPage_Controller extends Page_Controller {


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
                "{$this->ThemeDir()}/js/jquery.prettyPhoto.js",
                "{$this->ThemeDir()}/js/main.js"
            ));

    }

}