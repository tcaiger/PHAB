<?php

class NewsPage extends Page {



}

class NewsPage_Controller extends Page_Controller {


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
                "{$this->ThemeDir()}/js/main.js"
            ));

    }

}