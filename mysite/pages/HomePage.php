<?php

class HomePage extends Page {

    private static $allowed_children = 'none';

    private static $db = array(
        'Banner1Heading'    => 'Varchar',
        'Banner1Subheading' => 'Varchar',
        'Banner2Heading'    => 'Varchar',
        'Banner2Subheading' => 'Varchar',
        'Bullet1'           => 'Varchar(200)',
        'Bullet2'           => 'Varchar(200)',
        'Bullet3'           => 'Varchar(200)',
        'Bullet4'           => 'Varchar(200)',
        'SectionSubheading' => 'Varchar(200)',
        'Clubs'             => 'Int',
        'Members'           => 'Int',
        'Mentors'           => 'Int',
        'Event'             => 'Boolean',
        'EventSummary'      => 'Text'
    );

    private static $has_one = array(
        'BannerImage1' => 'PHABImage',
        'BannerImage2' => 'PHABImage',
        'EventBanner'  => 'PHABImage'
    );

    public function getCMSFields($member = null) {

        $fields = parent::getCMSFields();

        $fields->addFieldsToTab('Root.Main', array(
            HeaderField::create('Banner1', 'Banner 1', '4'),
            TextField::create('Banner1Heading', 'Heading'),
            TextField::create('Banner1Subheading', 'Subheading'),
            $bannerImg1 = UploadField::create('BannerImage1', 'Banner 1 Image')->setDescription('Image should be <strong>1920px</strong> wide and <strong>850px</strong> high'),
            HeaderField::create('Banner2', 'Banner 2', '4'),
            TextField::create('Banner2Heading', 'Heading'),
            TextField::create('Banner2Subheading', 'Subheading'),
            $bannerImg2 = UploadField::create('BannerImage2', 'Banner 2 Image')->setDescription('Image should be <strong>1920px</strong> wide and <strong>850px</strong> high'),
            HeaderField::create('MainHeader', 'Main Content', '4'),
            HtmlEditorField::create('Content'),
            TextField::create('Bullet1', 'Bullet 1'),
            TextField::create('Bullet2', 'Bullet 2'),
            TextField::create('Bullet3', 'Bullet 3'),
            TextField::create('Bullet4', 'Bullet 4'),
            HeaderField::create('SectionHeader', 'Clubs And Events', '4'),
            TextAreaField::create('SectionSubheading', 'Clubs And Events Summary'),
            HeaderField::create('NumbersHeader', 'Numbers', '4'),
            NumericField::create('Clubs'),
            NumericField::create('Members'),
            NumericField::create('Mentors'),
            HeaderField::create('EventHeader', 'Upcoming Event'),
            FieldGroup::create(
                CheckboxField::create('Event', '')
            )->setTitle('Include Upcoming Event'),
            LiteralField::create('EventLiteral', '<p>If selected, the soonest upcoming event will be displayed at the bottom of the homepage.<br>You will also need to add the event description and a banner image to go behind the event information</p>'),
            TextAreaField::create('EventSummary'),
            $eventBanner = UploadField::create('EventBanner', 'Event Banner Image')->setDescription('Image should be <strong>1920px</strong> wide and <strong>900px</strong> high')

        ), 'Metadata');

        // Place images into a specific folder
        $folderDir = 'Uploads/Homepage/';
        $bannerImg1->setFolderName($folderDir);
        $bannerImg2->setFolderName($folderDir);

        // Remove delicate fields from content authors
        if ( ! Permission::check('CMS_ACCESS_PAGES', 'any', $member)) {
            $fields->removebyName(array(
                'BannerImage1',
                'BannerImage2',
                'Title',
                'URLSegment',
                'MenuTitle'
            ));
        }

        return $fields;
    }

    /**
     * @return DataObject
     */
    public function getUpcomingEvent() {
        return EventPage::get()->filter('Date:GreaterThanOrEqual', strtotime('0 Days'))->Sort('Date', 'ASC')->first();
    }


}

class HomePage_Controller extends Page_Controller {

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

    /**
     * @return DataList|SS_Limitable
     */
    public function getClubsEvents(){
        $clubs = ClubPage::get()->filter('IncludeOnHomePage', '1')->limit(5);
        return $clubs;
    }

    /**
     * @return DataObject
     */
    public function getUpcomingEvent() {
        return EventPage::get()->filter('Date:GreaterThanOrEqual', strtotime('0 Days'))->Sort('Date', 'ASC')->first();
    }
}