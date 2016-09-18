<?php

class EventHolderPage extends Page {

    private static $can_be_root = false;
}

class EventHolderPage_Controller extends Page_Controller {


    public function init() {
        parent::init();

        Requirements::clear($this->ThemeDir() . '/js/jquery.min.js');
        Requirements::clear($this->ThemeDir() . '/js/main.js');

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

    /**
     * @return DataList
     */
    public function UpcomingEvents() {
        $events = EventPage::get()->filter('Date:GreaterThanOrEqual', strtotime('0 Days'))->sort('Date', 'ASC');

        return $events;
    }

    /**
     * @return DataList|SS_Limitable
     */
    public function RecentEvents() {
        $events = EventPage::get()->filter('Date:LessThan', strtotime('0 Days'))->sort('Date', 'ASC')->limit('4');

        return $events;
    }

}