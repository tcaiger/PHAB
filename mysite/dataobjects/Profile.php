<?php

class Profile extends dataobject {

    private static $db = array(
        'Name' => 'Varchar(100)',
        'Position' => 'Varchar(100)',
        'SortOrder'      => 'Int'
    );

    private static $has_one = array(
        'AboutPage' => 'AboutPage',
        'ProfileImage' => 'PHABImage'
    );

    private static $summary_fields = array(
        'ProfileImage.CMSThumbnail' => 'Profile',
        'Name' => 'Name',
        'Position' => 'Position'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->removeByName(array(
            'AboutPageID',
            'SortOrder'
        ));

        $fields->addFieldsToTab('Root.Main', array(
            $profile = UploadField::create('ProfileImage')->setDescription('Image should be <strong>260px</strong> wide and <strong>310px</strong> high'),
        ));

        // Place images into a specific folder
        $folderDir = 'Uploads/Profiles/';
        $profile->setFolderName($folderDir);

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
