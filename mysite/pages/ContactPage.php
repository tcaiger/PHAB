<?php

class ContactPage extends Page {

    private static $allowed_children = 'none';

    private static $db = array(
        'Street'           => 'Varchar',
        'Suburb'           => 'Varchar',
        'City'             => 'Varchar',
        'Phone'            => 'Varchar',
        'Email'            => 'Varchar',
        'ContactFormEmail' => 'Varchar(200)'
    );

    public function getCMSFields() {

        $fields = parent::getCMSFields();

        $fields->removeByName('Content');

        $fields->addFieldsToTab('Root.Main', array(
            HeaderField::create('ContactDetails', 'Contact Details', '4'),
            TextField::create('Street'),
            TextField::create('Suburb'),
            TextField::create('City'),
            TextField::create('Phone'),
            TextField::create('Email'),
            HeaderField::create('FormEmail', 'Contact Form', '4'),
            TextField::create('ContactFormEmail')
        ), 'Metadata');


        return $fields;
    }


}

class ContactPage_Controller extends Page_Controller {

    private static $allowed_actions = array(
        'ContactForm'
    );


    public function init() {
        parent::init();

        Requirements::clear($this->ThemeDir() . '/js/jquery.min.js');
        Requirements::clear($this->ThemeDir() . '/js/main.js');

        Requirements::javascript("http://maps.google.com/maps/api/js?key=AIzaSyAYhHrTm5Dnvx7-Oqr91yfN8Cw684GhMGk");

        // Combine and include js
        Requirements::combine_files(
            'main.js',
            array(
                "{$this->ThemeDir()}/js/jquery.min.js",
                "{$this->ThemeDir()}/js/bootstrap.min.js",
                "{$this->ThemeDir()}/js/jquery.form.min.js",
                "{$this->ThemeDir()}/js/jquery.validate.min.js",
                "{$this->ThemeDir()}/js/main.js"
            ));

    }

    public function ContactForm() {

        $fields = new FieldList(
            TextField::create('Name', 'Your Name'),
            EmailField::create('Email'),
            TextField::create('Subject'),
            TextareaField::create('Message')
        );

        $actions = new FieldList(
            FormAction::create('SubmitContactForm')
                ->addExtraClass('btn btn-primary')
                ->setTitle('Send Query')
        );

        $required = new RequiredFields(array(
            'Name', 'Email', 'Subject', 'Message'
        ));

        $form = new BootstrapForm($this, __Function__, $fields, $actions, $required);

        $form->addExtraClass('main-contact-form');

        return $form;
    }

    function SubmitContactForm($data, $form) {

        // Get enquiry data
        $enquiry = new ContactEnquiry;
        foreach ($data as $name => $value) {
            $enquiry->$name = $value;
        }

        // Send email
        $mail = new MailController;
        $mail->ContactFormEmail($data, $this->ContactFormEmail);

        // Write the enquiry to the database
        if ($enquiry->write()) {
            $form->sessionMessage("Your enquiry has been sent. You will receive a response soon.", 'good');
        } else {
            $form->sessionMessage("There was a problem with the form. Please try again.", 'bad');
        }

        return $this->redirectBack();
    }

}