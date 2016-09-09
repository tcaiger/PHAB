<?php

class HomePage extends Page {

    private static $allowed_children = 'none';

    private static $db = array(
        'Banner1Heading' => 'Varchar',
        'Banner1Subheading' => 'Varchar',
        'Banner2Heading' => 'Varchar',
        'Banner2Subheading' => 'Varchar'
    );

    private static $has_one = array(
      'BannerImage1' => 'PHABImage',
      'BannerImage2' => 'PHABImage'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', array(
            HeaderField::create('Banners', 'Banners', '4'),
            TextField::create('Banner1Heading'),
            TextField::create('Banner1Subheading'),
            $bannerImg1 = UploadField::create('BannerImage1')->setDescription('Image should be <strong>1920px</strong> wide and <strong>850px</strong> high'),
            TextField::create('Banner2Heading'),
            TextField::create('Banner2Subheading'),
            $bannerImg2 = UploadField::create('BannerImage2')->setDescription('Image should be <strong>1920px</strong> wide and <strong>850px</strong> high')
        ), 'Metadata');

        // Place images into a specific folder
        $folderDir = 'Uploads/Homepage/';
        $bannerImg1->setFolderName($folderDir);
        $bannerImg2->setFolderName($folderDir);

        return $fields;
    }

}

class HomePage_Controller extends Page_Controller {

    public function init() {
        parent::init();

        Requirements::clear($this->ThemeDir().'/js/jquery.min.js');
        Requirements::clear($this->ThemeDir().'/js/main.js');


        // Combine and include js
        Requirements::combine_files(
            'main.js',
            array(
                "{$this->ThemeDir()}/js/jquery.min.js",
                "{$this->ThemeDir()}/js/bootstrap.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/jquery.themepunch.tools.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/jquery.themepunch.revolution.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.parallax.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.video.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.slideanims.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.navigation.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.layeranimation.min.js",
                "{$this->ThemeDir()}/js/jquery.countdown.min.js",
                "{$this->ThemeDir()}/js/owl.carousel.min.js",
                "{$this->ThemeDir()}/js/jquery.countTo.js",
                "{$this->ThemeDir()}/js/jquery.appear.js",
                "{$this->ThemeDir()}/js/jquery.prettyPhoto.js",
                "{$this->ThemeDir()}/js/parallax.js",
                "{$this->ThemeDir()}/js/main.js",
                "{$this->ThemeDir()}/js/scripts.js"
            ));

    }



}