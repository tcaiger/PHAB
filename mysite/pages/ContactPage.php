<?php

class ContactPage extends Page {



}

class ContactPage_Controller extends Page_Controller {


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
                "{$this->ThemeDir()}/js/jquery.form.min.js",
                "{$this->ThemeDir()}/js/jquery.validate.min.js",
                "http://maps.google.com/maps/api/js",
                "{$this->ThemeDir()}/js/main.js"
            ));

    }

}