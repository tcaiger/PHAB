<?php

class GalleryPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $has_many = array(
        'GalleryImages' => 'PHABImage'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->removeByName('Content');

        $fields->addFieldsToTab('Root.Main', [
            $images = UploadField::create('GalleryImages', 'Gallery Images')
                ->setDescription('Image should be no wider than <strong>1000px</strong>, no higher than <strong>1000px</strong> and no bigger than <strong>1MB</strong>'),
        ], 'Metadata');

        $images->getValidator()->setAllowedExtensions(array(
            'png', 'jpeg', 'jpg', 'gif'
        ));
        $images->setFolderName('gallery-images');
        $images->setAllowedMaxFileNumber(27);
        $sizeMB = 2; // 2 MB
        $size = $sizeMB * 1024 * 1024; // 2 MB in bytes
        $images->getValidator()->setAllowedMaxFileSize($size);

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