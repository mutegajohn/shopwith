<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class EngineManagement extends CI_Controller {

    function backup($db) {

        $mysqlDatabaseName = $db;
        $mysqlUserName = 'java';
        $mysqlPassword = 'java';
        $mysqlHostName = 'localhost';
        $mysqlExportPath = 'public/dumps/' . $db . '.sql';

        exec("mysqldump --user={$mysqlUserName} --password={$mysqlPassword} --host={$mysqlHostName} {$mysqlDatabaseName} --result-file={$mysqlExportPath} 2>&1", $output);
        //  var_dump($output);
    }

    function initalize($my) {
        $this->db->query("DROP DATABASE IF EXISTS $my");
        $this->db->query("CREATE DATABASE  $my");
        $this->createTables($my);
    }

    function createTables($db) {
        $conn = new mysqli('localhost', 'java', 'java', $db);

        $query = '';
        $sqlScript = file('public/sql.sql');
        foreach ($sqlScript as $line) {

            $startWith = substr(trim($line), 0, 2);
            $endWith = substr(trim($line), -1, 1);

            if (empty($line) || $startWith == '--' || $startWith == '/*' || $startWith == '//') {
                continue;
            }

            $query = $query . $line;
            if ($endWith == ';') {
                mysqli_query($conn, $query) or die('<div class="error-response sql-import-response">Problem in executing the SQL query <b>' . $query . '</b></div>');
                $query = '';
            }
        }
    }

    function verify() {
        $email = $this->input->post('email');
        $res = $this->db->query("SELECT * FROM sma_company_users WHERE email='$email'")->result();

        if (count($res) > 0) {
            $_SESSION['company'] = $res[0]->company;
            $_SESSION['user_email'] = $res[0]->email;
            redirect('admin/login');
        } else {
            $this->session->set_flashdata('message', "Wrong Username / Password");
            $this->session->set_flashdata('type', "danger");
            redirect('Frontend/login');
        }
    }

    function registerCompany() {
        //echo 1;
        // die;

        $date_time = date('Y-m-d H:i:s');
        $default_pass = sha1($this->input->post('password'));
        $company = str_replace([',', ' ', '-', '.', '/', '\\'], "_", $this->input->post('orgname'));
        $email = $this->input->post('email');
        $pname = $this->input->post('first_name');
        $lname = $this->input->post('last_name');
        $pphone = $this->input->post('phone');

        $this->db->insert('organizations', [
            'name' => $company,
            'phone' => $pphone,
            'email' => $email,
        ]);

        $this->initalize($company);

        $this->db->query("INSERT INTO $company.sma_users (`first_name`, `last_name`, `email`,phone,`password`,`active`,`company`,`group_id`) VALUES
                                                         ('$pname','$lname','$email','$pphone','$default_pass','1','$company','1')");


        $this->db->query("INSERT INTO `sma_company_users` (`company`, `email`, `group`)
                                               VALUES ('$company', '$email', 'NONE');");


        $this->session->set_flashdata('message', "Welcome $company, Please login with your account details to access your account ");
        $this->session->set_flashdata('type', "success");

        redirect('Frontend/login');
    }

    function registerOutlet() {
        $date_time = date('Y-m-d H:i:s');
        $default_pass = '$2y$10$yM.9o4Z48H./ZaTHYyGnLO8T4OBSeb3P6U9.dhqbjJpMpmmxchrva';
        $company = str_replace([',', ' ', '-', '.', '/', '\\'], "_", $this->input->post('orgname'));
        $email = $this->input->post('email');
        $phone = $this->input->post('phoneNumber');
        $county = $this->input->post('county');
        $subcounty = $this->input->post('subcounty');
        $zone = $this->input->post('zone');
        $longitude = $this->input->post('longitude');
        $latitude = $this->input->post('latitude');
        $pname = $this->input->post('yourname');
        $pemail = $this->input->post('youremail');

        $execute = $this->load->database('default', TRUE);
        $execute->insert('organizations', [
            'name' => $company,
            'phone' => $phone,
            'email' => $email,
            'county' => $county,
            'sub_county' => $subcounty,
            'zone' => $zone,
            'owner_id' => $pemail,
            'longitude' => $longitude,
            'latitude' => $latitude
        ]);

        $this->initalize($company);

        $this->db->query("INSERT INTO $company.admin (`first_name`, `last_name`, `email`, `mobile1`, `mobile2`, `password`, `role`, `created_on`, `last_login`, `last_seen`, `last_edited`, `account_status`, `deleted`) VALUES
                                                    ('$pname','$pname','$pemail','$phone','','$default_pass','Role','$date_time','$date_time','$date_time','$date_time','1','0');");
        $this->db->query("INSERT INTO $company.settings (`name`, `phone`, `email`, `address`, `postal_code`, `county`, `city`, `image`) VALUES
                                                 ('$company','$phone','$email','-','-','-','-','public/');");
        $this->db->query("INSERT INTO $company.user_roles (`user_id`, `role_id`) VALUES
                                                    (1,	1),
                                                    (1,	2),
                                                    (1,	3),
                                                    (1,	4),
                                                    (1,	5),
                                                    (1,	6),
                                                    (1,	7),
                                                    (1,	8),
                                                    (1,	9),
                                                    (1,	10),
                                                    (1,	11),
                                                    (1,	12),
                                                    (1,	13),
                                                    (1,	14),
                                                    (1,	15),
                                                    (1,	16),
                                                    (1,	17),
                                                    (1,	18),
                                                    (1,	19),
                                                    (1,	20),
                                                    (1,	21),
                                                    (1,	22),
                                                    (1,	23),
                                                    (1,	24),
                                                    (1,	25),
                                                    (1,	26),
                                                    (1,	27),
                                                    (1,	28),
                                                    (1,	29)");
//$this->db->query("INSERT INTO `company_users` (`company`, `email`, `group`)
//VALUES ('$company', '$pemail', 'NONE');");

        $execute->query("UPDATE  organizations SET owner_id='$pemail' WHERE name= '$company';");

        echo json_encode(['status' => 1]);
    }

    function getOutlet() {
        $email = $this->input->post('email');
        $res = $this->db->where('email', $email)->get('company_users')->result();
        if (count($res) > 0) {
            $res['status'] = '1';
        } else {
            $res['status'] = '0';
        }
        echo $this->response($res);
    }

    function downSynch() {
        $db = $this->input->post('db');
        $users = $this->db->query("SELECT * FROM $db.admin")->result();
        $items = empty($this->db->query("SELECT * FROM $db.items")->result()) ? '[]' : $this->db->query("SELECT * FROM $db.items")->result();
        $transactions = empty($this->db->query("SELECT * FROM $db.transactions")->result()) ? '[]' : $this->db->query("SELECT * FROM $db.transactions")->result();
        $roles = empty($this->db->query("SELECT * FROM $db.user_roles")->result()) ? '[]' : $this->db->query("SELECT * FROM $db.user_roles")->result();
        echo $this->response(['users' => $users, 'items' => $items, 'transactions' => $transactions, 'company' => $db, 'roles' => $roles]);
    }

    function getUpSynch() {
        //   unlink('public/logs/synchup.sql');
        $db = 'One_Shop_Point_Ltd';


        $company = $this->input->post('company');
        $query = str_replace('plus', '+', $this->input->post('query'));



        $myfile = fopen("public/logs/synchup.sql", "wb") or die("Unable to open file!");
        fwrite($myfile, $query);
        fclose($myfile);

        $db_name = $db;
        $db_user = 'java';
        $db_password = 'java';
        $db_host = 'localhost';
        $script_file = 'public/logs/synchup.sql';

// Connect to MySQL server
        $con = new mysqli($db_host, $db_user, $db_password, $db_name);

// Check connection
        if ($con->connect_errno) {
            echo "Failed to connect to MySQL: " . $con->connect_errno;
            echo "<br/>Error: " . $con->connect_error;
        }

// Temporary variable, used to store current query
        $templine = '';
// Read in entire file
        $lines = file($script_file);
// Loop through each line
        foreach ($lines as $line) {
// Skip it if it's a comment
            if (substr($line, 0, 2) == '--' || $line == '')
                continue;

// Add this line to the current segment
            $templine .= $line;
// If it has a semicolon at the end, it's the end of the query
            if (substr(trim($line), -1, 1) == ';') {
                // Perform the query
                $con->query($templine) or print('Error performing query \'<strong>' . $templine . '\': ' . $con->error() . '<br /><br />');
                // Reset temp variable to empty
                $templine = '';
            }
        }
        //echo "Tables imported successfully";
        $con->close();

        $this->JSONResponse(['status' => '1']);
    }

}
