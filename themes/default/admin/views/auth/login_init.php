

<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8" />

        <title>Lifestyle | Login</title>

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <style>
            .colorgraph {
                height: 5px;
                border-top: 0;
                background: #c4e17f;
                border-radius: 5px;

            }
        </style>
    <body style="background: #428BCA;">
        <div class="container">


            <div class="row">
                <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
                    <form role="form" method="post" action="<?= base_url(); ?>EngineManagement/verify">
                        <center><img src="<?php echo base_url(); ?>/assets/uploads/logos/lifestyle-logo-pic1.png" alt="LOGO"></center>
                        <?php if ($this->session->flashdata('message')) { ?>
                            <div class="alert alert-<?php echo $this->session->flashdata('type'); ?>"><?php echo $this->session->flashdata('message'); ?></div>
                        <?php } ?>
                        <hr class="colorgraph">  

                        <div class="form-group">
                            <input type="email" name="email" required id="email" class="form-control input-lg" placeholder="Enter valid Email Address" tabindex="4">
                        </div>          


                        <hr class="colorgraph">
                        <div class="row">
                            <div class="col-xs-12 col-md-6"><button type="submit" id="SAVEDATA" class="btn btn-danger btn-block btn-lg" tabindex="7">Login</button></div>
                            <div class="col-xs-12 col-md-6"><a href="<?php echo base_url(); ?>Frontend/register" class="btn btn-lg btn-warning btn-block">Register</a></div>                        
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </body>
</html>