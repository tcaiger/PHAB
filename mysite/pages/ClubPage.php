<?php

class ClubPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';

    private static $db = [
        'IncludeOnHomePage' => 'Boolean',
        'SummaryText' => 'Varchar(100)',
        'Location'    => 'Varchar(100)',
        'Time'        => 'Varchar',
        'Day'   => 'Varchar',
        'MoreDetails' => 'Boolean',
        'MoreDetailsContent' => 'HTMLText'
    ];

    private static $defaults = [
        'SummaryText' => 'TBC. Please contact us to find out more information.',
        'Content'     => 'TBC. Please contact us to find out more information.',
        'Location'    => 'TBC',
        'Time'        => 'TBC',
        'Day'   => 'TBC'
    ];

    private static $has_one = [
        'BannerImage' => 'PHABImage'
    ];

    private static $summary_fields = [
        'Title'     => 'Title',
        'Location'  => 'Location',
        'Day' => 'Day'
    ];

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            CheckboxField::create('IncludeOnHomePage'),
            TextField::create('SummaryText')->setDescription('This text is displayed on the clubs overview page.'),
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

class ClubPage_Controller extends Page_Controller {


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