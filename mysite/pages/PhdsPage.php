<?php

class PhdsPage extends Page {

    private static $allowed_children = 'none';

    private static $db = [
        'Location'           => 'Varchar(100)',
        'Time'               => 'Varchar',
        'Day'                => 'Varchar',
        'MoreDetails'        => 'Boolean',
        'MoreDetailsContent' => 'HTMLText'
    ];

    private static $defaults = [
        'Content'  => 'TBC. Please contact us to find out more information.',
        'Location' => 'TBC',
        'Time'     => 'TBC',
        'Day'      => 'TBC'
    ];

    private static $has_one = [
        'BannerImage' => 'PHABImage'
    ];

    private static $summary_fields = [
        'Title'    => 'Title',
        'Location' => 'Location',
        'Day'      => 'Day'
    ];

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            $bannerImg = UploadField::create('BannerImage')->setDescription('Image should be <strong>900px</strong> wide and <strong>600px</strong> high.'),
            TextField::create('Location')
                ->setDescription('Albany House'),
            TextField::create('Time')
                ->setDescription('6:00PM - 8:30PM'),
            TextField::create('Day')
                ->setDescription('eg. Every Monday'),
            HtmlEditorField::create('Content'),
            HeaderField::create('DetailsHeader', 'More Details'),
            FieldGroup::create(
                CheckboxField::create('MoreDetails', '(Ticking the box will show the more details tab)')
            )->setTitle('Include More Details Section'),
            HTMLEditorField::create('MoreDetailsContent', 'More Details Content')
        ], 'Metadata');

        // Place images into a specific folder
        $folderDir = 'Uploads/ClubImages/';
        $bannerImg->setFolderName($folderDir);

        return $fields;
    }
}

class PhdsPage_Controller extends Page_Controller {


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
                "{$this->ThemeDir()}/js/jquery.countdown.min.js",
                "{$this->ThemeDir()}/js/main.js"
            ));

    }

}