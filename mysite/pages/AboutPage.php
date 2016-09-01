<?php

class AboutPage extends Page {



}

class AboutPage_Controller extends Page_Controller {


    public function init() {
        parent::init();

        // Combine and include js
        Requirements::combine_files(
            'main.js',
            array(
                "{$this->ThemeDir()}/js/jquery.min.js",
                "{$this->ThemeDir()}/js/bootstrap.min.js",
                "{$this->ThemeDir()}/js/owl.carousel.min.js",
                "{$this->ThemeDir()}/js/main.js"
            ));

    }

}