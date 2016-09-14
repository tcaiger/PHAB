<?php

class Testimonial extends dataobject {

    private static $db = array(
        'Quote' => 'Varchar(200)',
        'Author' => 'Varchar(200)',
        'SortOrder'      => 'Int'
    );

    private static $has_one = array(
        'HistoryPage' => 'HistoryPage',
        'AuthorImage' => 'PHABImage'
    );

    private static $summary_fields = array(
        'AuthorImage.CMSThumbnail' => 'Profile',
        'Quote' => 'Quote',
        'Author' => 'Author'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->removeByName(array(
            'HistoryPageID',
            'SortOrder'
        ));

        $fields->addFieldsToTab('Root.Main', array(
            TextareaField::create('Quote'),
            $image = UploadField::create('AuthorImage')->setDescription('Image should be <strong>350px</strong> wide and <strong>520px</strong> high'),
        ));

        // Place images into a specific folder
        $folderDir = 'Uploads/Blockquotes/';
        $image->setFolderName($folderDir);

        return $fields;
    }

    public function canCreate($member = null) {
        return true;
    }

    public function canEdit($member = null) {
        return true;
    }

    public function canDelete($member = null) {
        return true;
    }

    public function canView($member = null) {
        return true;
    }
}
