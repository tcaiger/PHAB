<?php

class HomePage extends Page {



}

class HomePage_Controller extends Page_Controller {

    public function init() {
        parent::init();


        // Combine and include js
        Requirements::combine_files(
            'main.js',
            array(
                "{$this->ThemeDir()}/js/jquery.min.js",
                "{$this->ThemeDir()}/js/bootstrap.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/jquery.themepunch.tools.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/jquery.themepunch.revolution.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.parallax.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.video.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.slideanims.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.navigation.min.js",
                "{$this->ThemeDir()}/js/slider-revolution/revolution.extension.layeranimation.min.js",
                "{$this->ThemeDir()}/js/jquery.countdown.min.js",
                "{$this->ThemeDir()}/js/owl.carousel.min.js",
                "{$this->ThemeDir()}/js/jquery.countTo.js",
                "{$this->ThemeDir()}/js/jquery.appear.js",
                "{$this->ThemeDir()}/js/jquery.prettyPhoto.js",
                "{$this->ThemeDir()}/js/parallax.js",
                "{$this->ThemeDir()}/js/main.js",
                "{$this->ThemeDir()}/js/scripts.js"
            ));

    }



}