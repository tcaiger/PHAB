<?php

class HomePage extends Page {

    private static $allowed_children = 'none';

    private static $db = array(
        'Banner1Heading'    => 'Varchar',
        'Banner1Subheading' => 'Varchar',
        'Banner2Heading'    => 'Varchar',
        'Banner2Subheading' => 'Varchar',
        'Bullet1'           => 'Varchar(200)',
        'Bullet2'           => 'Varchar(200)',
        'Bullet3'           => 'Varchar(200)',
        'Bullet4'           => 'Varchar(200)',
        'SectionSubheading' => 'Varchar(200)',
        'Box1Heading' => 'Varchar(200)',
        'Box1Text' => 'Varchar(200)',
        'Box2Heading' => 'Varchar(200)',
        'Box2Text' => 'Varchar(200)',
        'Box3Heading' => 'Varchar(200)',
        'Box3Text' => 'Varchar(200)',
        'Box3Heading' => 'Varchar(200)',
        'Box3Text' => 'Varchar(200)',
        'Box4Heading' => 'Varchar(200)',
        'Box4Text' => 'Varchar(200)',
        'Box5Heading' => 'Varchar(200)',
        'Box5Text' => 'Varchar(200)',
        'Box6Heading' => 'Varchar(200)',
        'Box6Text' => 'Varchar(200)'
    );

    private static $has_one = array(
        'BannerImage1' => 'PHABImage',
        'BannerImage2' => 'PHABImage'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', array(
            HeaderField::create('Banners', 'Banners', '4'),
            TextField::create('Banner1Heading', 'Banner 1 Heading'),
            TextField::create('Banner1Subheading', 'Banner 1 Subheading'),
            $bannerImg1 = UploadField::create('BannerImage1', 'Banner 1 Image')->setDescription('Image should be <strong>1920px</strong> wide and <strong>850px</strong> high'),
            TextField::create('Banner2Heading', 'Banner 2 Heading'),
            TextField::create('Banner2Subheading', 'Banner 2 Subheading'),
            $bannerImg2 = UploadField::create('BannerImage2', 'Banner 2 Image')->setDescription('Image should be <strong>1920px</strong> wide and <strong>850px</strong> high'),
            HtmlEditorField::create('Content'),
            TextField::create('Bullet1', 'Bullet 1'),
            TextField::create('Bullet2', 'Bullet 2'),
            TextField::create('Bullet3', 'Bullet 3'),
            TextField::create('Bullet4', 'Bullet 4'),
            HeaderField::create('SectionHeader', 'Programmes', '4'),
            TextAreaField::create('SectionSubheading', 'Programme Section Text'),
            HeaderField::create('Box1Header', 'Box 1', '4'),
            TextField::create('Box1Heading', 'Heading'),
            TextField::create('Box1Text', 'Text'),
            HeaderField::create('Box2Header', 'Box 2', '4'),
            TextField::create('Box2Heading', 'Heading'),
            TextField::create('Box2Text', 'Text'),
            HeaderField::create('Box3Header', 'Box 3', '4'),
            TextField::create('Box3Heading', 'Heading'),
            TextField::create('Box3Text', 'Text'),
            HeaderField::create('Box4Header', 'Box 4', '4'),
            TextField::create('Box4Heading', 'Heading'),
            TextField::create('Box4Text', 'Text'),
            HeaderField::create('Box5Header', 'Box 5', '4'),
            TextField::create('Box5Heading', 'Box 5 Heading'),
            TextField::create('Box5Text', 'Text'),
            HeaderField::create('Box6Header', 'Box 6', '4'),
            TextField::create('Box6Heading', 'Heading'),
            TextField::create('Box6Text', 'Text')
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

        Requirements::clear($this->ThemeDir() . '/js/jquery.min.js');
        Requirements::clear($this->ThemeDir() . '/js/main.js');


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