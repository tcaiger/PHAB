<?php


class ContactEnquiry extends DataObject {

    public static $db = array(
        'Name'    => 'Varchar',
        'Email'   => 'Varchar(250)',
        'Subject' => 'Varchar(200)',
        'Message' => 'Text'
    );

    private static $summary_fields = array(
        'Name'         => 'Name',
        'Subject'      => 'Subject',
        'Email'        => 'Email',
        'Created.Nice' => 'Created'
    );

    private static $default_sort = 'Created';


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