<?php

class NewsHolderPage extends Page {



}

class NewsHolderPage_Controller extends Page_Controller {


    public function init() {
        parent::init();

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