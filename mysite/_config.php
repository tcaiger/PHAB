<?php

global $project;
$project = 'mysite';

global $database;
$database = 'phab';

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');

FulltextSearchable::enable();

// Import custom stylesheet for cms ('require_css' not deprecated according to silverstripe docs v3.3)
LeftAndMain::require_css('mysite/css/editor.css');


// Customise the default TinMCE Editor
HtmlEditorConfig::get('cms')->setOptions(array(
    'height' => '350',
    'width'  => '700'
));

HtmlEditorConfig::get('cms')->setButtonsForLine(1, 'bold', 'italic', 'underline', 'separator', 'bullist', 'numlist', 'separator', 'styleselect', 'formatselect', 'link', 'code');
HtmlEditorConfig::get('cms')->setButtonsForLine(2, '');
