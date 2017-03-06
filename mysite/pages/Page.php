<?php

class Page extends SiteTree {

}

class Page_Controller extends ContentController {

    public $FacebookURL = 'https://www.facebook.com/phabnz/';

    private static $allowed_actions = array(
        'EnquiryForm'
    );


    public function init() {
        parent::init();
        Requirements::css("//fonts.googleapis.com/css?family=Oswald:300,700,400");
        Requirements::css("//fonts.googleapis.com/css?family=Libre+Baskerville:400,400italic,700");
        Requirements::css("//fonts.googleapis.com/css?family=Montserrat:400,700");
        Requirements::css("{$this->ThemeDir()}/css/main.min.css");

        // Combine and include js
        Requirements::combine_files(
            'main.js',
            array(
                "{$this->ThemeDir()}/js/jquery.min.js",
                "{$this->ThemeDir()}/js/main.js"
            ));
    }

    /**
     * @return BootstrapForm
     */
    public function EnquiryForm() {

        $fields = new FieldList(
            CompositeField::create(
                TextField::create('Name', 'Your Name'),
                EmailField::create('Email'),
                TextField::create('Phone', 'Phone Number')
            ),
            TextareaField::create('Message')
        );

        $actions = new FieldList(
            FormAction::create('SubmitEnquiryForm')
                ->addExtraClass('btn btn-primary center-block')
                ->setTitle('Send Query')
        );

        $required = new RequiredFields(array(
            'Name', 'Email', 'Message'
        ));

        $form = new BootstrapForm($this, __Function__, $fields, $actions, $required);

        $form->addExtraClass('enquiry-form');

        return $form;
    }

    /**
     * @param $data
     * @param $form
     * @return bool|SS_HTTPResponse
     */
    function SubmitEnquiryForm($data, $form) {

        // Get enquiry data
        $enquiry = new ContactEnquiry;
        foreach ($data as $name => $value) {
            $enquiry->$name = $value;
        }

        // Send email
        $mail = new MailController;
        $to = $this->GetPage('ContactPage')->ContactFormEmail;
        $mail->ContactFormEmail($enquiry, $to);

        // Write the enquiry to the database
        if ($enquiry->write()) {
            $form->sessionMessage("Your enquiry has been sent. You will receive a response soon.", 'good');
        } else {
            $form->sessionMessage("There was a problem with the form. Please try again.", 'bad');
        }

        return $this->redirectBack();
    }


    /**
     * @param $pagetype string
     *
     * @return Page
     */
    public function GetPage($pagetype) {
        if ($page = DataObject::get_one($pagetype)) {
            return $page;
        }
    }

    /**
     * @param $pagetype string
     *
     * @return string
     */
    public function PageLink($pagetype) {
        if ($page = DataObject::get_one($pagetype)) {
            return $page->Link();
        }
    }

    /**
     * @return string
     */
    public function GetUrl() {
        $base = Director::absoluteBaseURL();
        $base = trim($base, "/");
        $url = $base . $_SERVER['REQUEST_URI'];

        return $url;
    }

    public function getAdminEmail(){
        return ContactPage::get()->first()->Email;
    }
}
