<?php

class PhdsPage extends Page {

    private static $allowed_children = 'none';

    private static $db = [
        'Stream1Title'        => 'Varchar(100)',
        'Stream1Details'        => 'Varchar(100)',
        'Stream2Title'        => 'Varchar(100)',
        'Stream2Details'        => 'Varchar(100)',
        'Stream3Title'        => 'Varchar(100)',
        'Stream3Details'        => 'Varchar(100)',
        'Stream1Content' => 'HTMLText',
        'Stream2Content' => 'HTMLText',
        'Stream3Content' => 'HTMLText'
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

        $fields->removeByName('Content');

        $fields->addFieldsToTab('Root.Main', [
            $bannerImg = UploadField::create('BannerImage')->setDescription('Image should be <strong>900px</strong> wide and <strong>600px</strong> high.'),
            HeaderField::create('Stream1Header', 'Stream 1', 4),
            TextField::create('Stream1Title', 'Stream 1 Title')
                ->setDescription('eg. Stream 1'),
            TextField::create('Stream1Details', 'Stream 1 Details')
                ->setDescription('eg. 7px Every Monday at Takapuna Events Center'),
            HTMLEditorField::create('Stream1Content', 'Stream 1 Content'),
            HeaderField::create('Stream2Header', 'Stream 2', 4),
            TextField::create('Stream2Title', 'Stream 2 Title'),
            TextField::create('Stream2Details', 'Stream 2 Details'),
            HTMLEditorField::create('Stream2Content', 'Stream 2 Content'),
            HeaderField::create('Stream3Header', 'Stream 3', 4),
            TextField::create('Stream3Title', 'Stream 3 Title'),
            TextField::create('Stream3Details', 'Stream 3 Details'),
            HTMLEditorField::create('Stream3Content', 'Stream 3 Content')
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