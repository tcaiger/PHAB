<?php

class Page extends SiteTree {


    private static $db = array();

    private static $has_one = array();

}

class Page_Controller extends ContentController {


    public function init() {
        parent::init();
        Requirements::css("//fonts.googleapis.com/css?family=Oswald:300,700,400");
        Requirements::css("//fonts.googleapis.com/css?family=Libre+Baskerville:400,400italic,700");
        Requirements::css("//fonts.googleapis.com/css?family=Montserrat:400,700");
        Requirements::css("{$this->ThemeDir()}/css/main.min.css");


    }
}
