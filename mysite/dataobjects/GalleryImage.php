<?php

class GalleryImage extends dataobject {

    private static $db = [
        'Caption' => 'Varchar(200)',
        'SortOrder'      => 'Int'
    ];

    private static $has_one = [
        'GalleryPage' => 'GalleryPage',
        'Image' => 'PHABImage'
    ];

    private static $summary_fields = [
        'Image.CMSThumbnail' => 'Image',
        'Caption' => 'Caption'
    ];

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->removeByName([
            'GalleryPageID',
            'SortOrder'
        ]);

        $fields->addFieldsToTab('Root.Main', [
            $image = UploadField::create('Image')
                ->setDescription('Image should be no wider than <strong>1000px</strong>, no higher than <strong>1000px</strong> and no bigger than <strong>1MB</strong>. Max of 18 images'),
            TextareaField::create('Caption', 'Caption (Optional)')
        ]);

        // Validate image
        $image->getValidator()->setAllowedExtensions([
            'png', 'jpeg', 'jpg', 'gif'
        ]);
        $image->setFolderName('gallery-images');
        $image->setAllowedMaxFileNumber(18);
        $sizeMB = 1; // 2 MB
        $size = $sizeMB * 1024 * 1024; // 2 MB in bytes
        $image->getValidator()->setAllowedMaxFileSize($size);

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
