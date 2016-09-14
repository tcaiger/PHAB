<?php

class GalleryImageExtension extends DataExtension {

    private static $has_one = array('GalleryPage' => 'GalleryPage');

    function canCreate($member = null) {
        return true;
    }

    function canEdit($member = null) {
        return true;
    }

    function canDelete($member = null) {
        return true;
    }

    function canView($member = null) {
        return true;
    }
}