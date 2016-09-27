<?php

class Logo extends dataobject {

    private static $db = array(
        'SortOrder'      => 'Int'
    );

    private static $has_one = array(
        'FundersPage' => 'FundersPage',
        'Logo' => 'PHABImage'
    );

    private static $summary_fields = array(
        'Logo.CMSThumbnail' => 'Logo'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->removeByName(array(
            'FundersPageID',
            'SortOrder'
        ));

        $fields->addFieldsToTab('Root.Main', array(
            $logo = UploadField::create('Logo')->setDescription('Logo should be <strong>260px</strong> wide and <strong>310px</strong> high'),
        ));

        // Place images into a specific folder
        $folderDir = 'Uploads/Logos/';
        $logo->setFolderName($folderDir);

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
