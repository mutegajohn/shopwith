<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8" />

        <title>Sign-Up</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">




        <style>
            .colorgraph {
                height: 5px;
                border-top: 0;
                background: #c4e17f;
                border-radius: 5px;

            }
        </style>
    </head>
    <body style="background: #428BCA;">
        <div class="container" >

            <div class="row">
                <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                    <form role="form"  id="SUBFORM" method="post" action="<?= base_url(); ?>EngineManagement/registerCompany" >
                        <center><img src="<?php echo base_url(); ?>/assets/uploads/logos/lifestyle-logo-pic1.png" alt="LOGO"></center>
                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="first_name" required id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="last_name" required  id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" name="orgname"  required id="user_name" class="form-control input-lg" placeholder="Company Name" tabindex="3">
                        </div>

                        <div class="form-group">
                            <input type="email" name="email" required  id="email" class="form-control input-lg" placeholder="Email Address" tabindex="5">
                        </div>
                        <div class="form-group">
                            <input type="text" name="phone" required  id="phone" class="form-control input-lg" placeholder="Phone Number" tabindex="5">
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="password" name="password"  required  id="password" class="form-control input-lg" placeholder="Password" tabindex="6">
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="password"  required name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" tabindex="7">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-4 col-sm-3 col-md-3">
                                <span class="button-checkbox">
                                    <input type="checkbox"  required name="t_and_c" id="t_and_c" class="" > I agree
                                </span>
                            </div>
                            <div class="col-xs-8 col-sm-9 col-md-9" style="background: #fff; padding: 3px;" >
                                By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> 
                            </div>
                        </div>

                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-12 col-md-6"><button type="submit" id="SAVEDATA" class="btn btn-danger btn-block btn-lg" tabindex="7">Register</button></div>
                            <div class="col-xs-12 col-md-6"><a href="<?php echo base_url(); ?>Frontend/login" class="btn btn-warning btn-block btn-lg">Sign In</a></div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
                        </div>
                        <div class="modal-body">
                            <p> Welcome to Step by Step	
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">I Agree</button>
                        </div>


                        <!-- Javascript -->

                        <!--Javascript--->        </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
        </div>
    </body>


    <!-- Javascript -->

    <!--Javascript--->
</html>


