<?php

class EventPage extends Page {

    private static $allowed_children = 'none';

    private static $db = [
        'SummaryText' => 'Varchar(200)',
        'Location'    => 'Varchar(200)',
        'Time'        => 'Varchar'
    ];

    private static $defaults = [
        'SummaryText' => 'TBC. Please contact us to find out more information.',
        'Content'     => 'TBC. Please contact us to find out more information.',
        'Location'    => 'TBC',
        'Time'        => 'TBC'
    ];

    private static $has_one = [
        'BannerImage' => 'PHABImage'
    ];

    private static $summary_fields = [
        'Title'    => 'Title',
        'Location' => 'Location',
        'Time'     => 'Time'
    ];

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', [
            TextareaField::create('SummaryText')->setDescription('This text is displayed on the clubs overview page.'),
            $bannerImg = UploadField::create('BannerImage')->setDescription('Image should be <strong>900px</strong> wide and <strong>600px</strong> high.'),
            TextField::create('Location'),
            DateField::create('Date'),
            HtmlEditorField::create('Content')
        ], 'Metadata');

        // Place images into a specific folder
        $folderDir = 'Uploads/EventImages/';
        $bannerImg->setFolderName($folderDir);

        return $fields;
    }
}

class EventPage_Controller extends Page_Controller {


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