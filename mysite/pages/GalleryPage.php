<?php

class GalleryPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $db = [
        'SubHeading' => 'Varchar',
        'Intro' => 'Varchar(200)'
    ];

    private static $has_many = array(
        'GalleryImages' => 'GalleryImage'
    );

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->removeByName('Content');

        $fields->addFieldsToTab('Root.Main', [
            TextField::create('SubHeading'),
            TextAreaField::create('Intro')
                ->setDescription('You need to save the gallery page before uploading images.'),
            $grid = GridField::create('GalleryImages','GalleryImages',$this->GalleryImages(),
                GridFieldConfig_RecordEditor::create()
                    ->addComponent(
                        new GridFieldBulkUpload()
                    )
                )
        ], 'Metadata');

        // Add the orderablerows component if the parent object has an ID
        if($this->ID){
            $grid->getConfig()->addComponent(
                new GridFieldOrderableRows('SortOrder')
            );
        }



        return $fields;
    }

    public function CoverImage() {
        $image = $this->GalleryImages()->Sort('SortOrder')->first();
        return $image;
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