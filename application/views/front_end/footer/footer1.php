<!-- Footer Area -->
<?php
    $facebook_url               =   $this->db->get_where('config' , array('title'=>'facebook_url'))->row()->value;
    $twitter_url                =   $this->db->get_where('config' , array('title'=>'twitter_url'))->row()->value;
    $vimeo_url                  =   $this->db->get_where('config' , array('title'=>'vimeo_url'))->row()->value;
    $linkedin_url               =   $this->db->get_where('config' , array('title'=>'linkedin_url'))->row()->value;
    $youtube_url                =   $this->db->get_where('config' , array('title'=>'youtube_url'))->row()->value;
    $footer1_title              =   $this->db->get_where('config' , array('title'=>'footer1_title'))->row()->value;
    $footer1_content            =   $this->db->get_where('config' , array('title'=>'footer1_content'))->row()->value;
    $footer2_title              =   $this->db->get_where('config' , array('title'=>'footer2_title'))->row()->value;
    $footer2_content            =   $this->db->get_where('config' , array('title'=>'footer2_content'))->row()->value;
    $footer3_title              =   $this->db->get_where('config' , array('title'=>'footer3_title'))->row()->value;
    $footer3_content            =   $this->db->get_where('config' , array('title'=>'footer3_content'))->row()->value;
    $footer_text                =   $this->db->get_where('config' , array('title'=>'copyright_text'))->row()->value;
?>
<div id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <div class="footer-about" >
                    <img class="img-responsive" src="<?php echo base_url(); ?>uploads/system_logo/logo.png" alt="Logo">
                    <?php echo $footer1_content; ?>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="bottom-post" >
                    <div class="movie-heading"> <span>Links</span>
                        <div class="disable-bottom-line"></div>
                    </div>
                    <?php echo $footer2_content; ?>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="sendus  ">
                    <div class="movie-heading"> <span>Suscribirse</span>
                        <div class="disable-bottom-line"></div>
                    </div>
                    <div id="contact-form">
                        <div class="expMessage"></div>
                        <p class="text-light">Recibí en tu correo todos los avances de Avanmax</p>
                            <input type="text" name="formInput[name]" id="name" class="form-control half-wdth-field pull-right" placeholder="Nombre" required>
                            <input type="email" name="formInput[email]" id="email" class="form-control half-wdth-field pull-right" placeholder="Email" required>
                            <div>
                            <div id="error" style="display: none;"></div>
                                <a class="btn btn-success" id="subscribe-btn"> Suscribirse </a>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Area -->
<?php $this->load->view('front_end/copyright'); ?>

<!-- ajax subscribtion -->
<script type="text/javascript">
    $(document).on('click', '#subscribe-btn', function() {
        var email = $("#email").val();
        var name = $("#name").val();
        if(name==''){
            name='New Subscriber';
        }
        var hasError = false;
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        if (email == '') {
            var hasError = true;
            $("#error").fadeIn();
            $("#error").html('<p class="text-danger"><strong>Opps!&nbsp;</strong>El campo de email no puede estar vacío.</p>');
        } else if (!emailReg.test(email)) {
            var hasError = true;
            $("#error").html('<p class="text-danger">Introduce una dirección de email váilda.</p>');
        }

        if (hasError != true) {
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url(); ?>user/subscribe',
                data: "name="+name+"&email="+email,
                dataType: 'json',
                beforeSend: function() {
                    $("#error").fadeOut();
                    $("#subscribe-btn").html('Espera...');

                },
                success: function(response) {
                    var subscribe_status = response.subscribe_status;
                    if (subscribe_status == "success") {
                        $("#error").fadeIn();
                        $("#subscribe-btn").html('<i class="fa fa-check" aria-hidden="true"></i> &nbsp;Suscrito');
                        $("#error").html('<p class="text-success"><strong>Listo!</strong>.</p>');
                    }else if (subscribe_status == "exist"){
                        $("#error").fadeIn();
                        $("#subscribe-btn").html('Subscribe');
                        $("#error").html('<p class="text-warning">Ya estás suscrito a nuestro newsletter.</p>');
                    }else {
                        $("#error").fadeIn();
                        $("#subscribe-btn").html('Subscribe');
                        $("#error").html('<p class="text-warning"><strong>Hmm</strong> Parece que no se ha confirmado la suscripción.</p>');
                    }
                }
            });
        }
    });
</script>
<!-- End ajax subscribtion -->
