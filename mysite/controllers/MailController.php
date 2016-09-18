<?php

class MailController extends Controller {

    public Function init() {
        parent::init();
    }

    /*
     * Setup
     */
    public function setup() {
        $mail = new PHPMailer;
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'tom@weareonfire.co.nz';
        $mail->Password = 'Pin!tom32';
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;

        $mail->From = 'admin@phab.co.nz';
        $mail->FromName = "PHAB Website";

        $mail->isHTML(true);

        return $mail;
    }


    /*
     * Contact Form Email
     */
    Public Function ContactFormEmail($enquiry, $admin) {
        $mail = $this->setup();

        $mail->addAddress($admin);

        $mail->Subject = 'PHAB Website Contact Form';

        $body = $enquiry->renderWith('ContactFormEmail');

        $mail->MsgHTML($body);

        if ( ! $mail->send()) {
            return false;
        } else {
            return true;
        }
    }
}