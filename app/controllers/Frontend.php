<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Frontend extends MY_Controller {

    function __construct() {
        parent::__construct();
    }

    function register() {
        $this->page_register('auth/register', '');
    }

    function login() {
        $this->page_register('auth/login_init', '');
    }

}
