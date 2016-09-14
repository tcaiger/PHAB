<?php

class EventHolderPage extends Page {

    private static $can_be_root = false;
    private static $allowed_children = 'none';


}

class EventHolderPage_Controller extends Page_Controller {


    public function init() {
        parent::init();

        Requirements::clear($this->ThemeDir().'/js/jquery.min.js');
        Requirements::clear($this->ThemeDir().'/js/main.js');

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