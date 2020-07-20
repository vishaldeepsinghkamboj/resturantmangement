<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<?php include "Classes/User.php"?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style/style.css">
  <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- color -->
    <link id="changeable-colors" rel="stylesheet" href="css/colors/orange.css" />

    <!-- Modernizer -->
    <script src="js/modernizer.js"></script>
    <style>
      .reservations-main{
  
}

.form-reservations-box{
  width:70%;
  margin:0 auto;
}

.reservations-main h4{
  text-align:center;
  font-weight: 500;
  font-family: 'Roboto', sans-serif;
  font-size: 22px;
    padding-top: 25px;
}

.reservations-main p{
  text-align:center;
  font-family: 'Roboto', sans-serif;
  font-size:16px;
}

.reservations-box{
  padding-top:30px;
}

.form-box{
  margin-bottom:20px;
  min-height: 53px;
}

.form-box input{
  width:100%;
  border:2px dotted #ccc;
  background:#f5f5f5;
  color:#202020;
  padding:12px;
  text-transform:capitalize;
  border-radius: 4px;
  opacity: 1;
  min-height:54px;
}

.form-box select{
  width:100%;
  border:2px dotted #ccc;
  background:#f5f5f5;
  color:#202020;
  padding: 12px;
  text-transform:capitalize;
  border-radius: 4px;
  -webkit-appearance: none;
    -moz-appearance: none;
    -ms-appearance: none;
    -o-appearance: none;
    appearance: none;
}
.form-box .bootstrap-select:not([class*=col-]):not([class*=form-control]):not(.input-group-btn){
  width:100%;
}
.form-box .bootstrap-select button{
  width:100%;
  border:2px dotted #ccc;
  background:#f5f5f5;
  color:#202020 !important;
  padding: 15px;
  text-transform:capitalize;
  border-radius: 4px;
  -webkit-appearance: none;
    -moz-appearance: none;
    -ms-appearance: none;
    -o-appearance: none;
    appearance: none;
}

.form-box select option{
  -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    padding: 5px;
}

::-webkit-input-placeholder { /* Chrome */
  color:#202020;
}
:-ms-input-placeholder { /* IE 10+ */
  color:#202020;
}
::-moz-placeholder { /* Firefox 19+ */
  color:#202020;
  opacity: 1;
}
:-moz-placeholder { /* Firefox 4 - 18 */
  color:#202020;
  opacity: 1;
}

.reserve-book-btn{
  padding-top:30px; 

}

.reserve-book-btn button a{
  color: #fff;
}

.reserve-book-btn button:hover {
    background: none;
    color: #202020;
}

.reserve-book-btn button  {
    color: #fff;
    min-width: 219px;
    padding: 10.5px 20px;
    display: inline-block;
    text-align: center;
    font-weight: 800;
    text-transform: uppercase;
    font-size: 18px;
    background-color: orange;
}

.reserve-book-btn button:hover a{
  background:none;
  border:none;
}

textarea:focus, input:focus, select:focus, .bootstrap-select .dropdown-toggle:focus{
    outline: none !important;
}

    </style>

</head>
<div class="contact_us_form">
 <body class="hold-transition skin-blue layout-top-nav">
  <?php include 'includes/navbar.php'; ?>
  <?php
          if(isset($_POST["form_name"])){
            $CustomerName=$_POST['form_name'];
            $EmailId=$_POST['email'];
            $ContactNo=$_POST['phone'];
            $TimeOfVisit=$_POST['time-picker'];
            $NoOfPerson=$_POST['no_of_persons'];
            $DateOfBooking=$_POST['date-picker'];
            $PrefferdFood=$_POST['preferred_food'];
            $Occasion=$_POST['occasion'];
            $TableNumber=$_POST['table_no'];

            
            $userObj = new User($CustomerName, $EmailId, $ContactNo,
                        $TimeOfVisit, $NoOfPerson, $DateOfBooking,
                        $PrefferdFood,$Occasion,$TableNumber,2);
            $userObj->Insert();
            echo "<script>
            alert('Thanks for Booking');
           
  
            </script>";
            
          }
            ?>
   
	<div class="wrapper">

	 
	 
	    <div class="content-wrapper">
		      <div class="container">

		 <div id="reservation" class="reservations-main pad-top-100 pad-bottom-100">
       <img style="padding-top: 40px;" src="images/book_table.jpg" height="580px" width="100%">

        <div class="container">
            <div class="row">
                <div class="form-reservations-box">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                            <h2 class="block-title text-center">
            Reservations      
          </h2>
                        </div>
                        <h4 class="form-title">BOOKING FORM</h4>
                        <p>PLEASE FILL OUT ALL REQUIRED* FIELDS. THANKS!</p>

                        <form id="contact-form" method="post" class="reservations-box" name="contactform" action="#">
                          <div class="row">
                            <div class="col-sm-6">
                                <div class="form-box">
                                    <input type="text" name="form_name" id="form_name" placeholder="Name" required="required" data-error="Firstname is required.">
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-box">
                                    <input type="email" name="email" id="email" placeholder="E-Mail ID" required="required" data-error="E-mail id is required.">
                                </div>
                            </div>
                            </div>
                            <!-- end col -->
                           
                            <!-- end col -->
                            <div class="row">
                            <div class="col-sm-6">
                                <div class="form-box">
                                    <input type="text" name="phone" id="phone" placeholder="contact no.">
                                </div>
                            </div>
                               <div class="col-sm-6">
                                <div class="form-box">
                                    <select name="no_of_persons" id="no_of_persons" class="selectpicker">
                                        <option selected disabled>No. Of persons</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                    </select>
                                </div>
                            </div>

                          </div>
                            <!-- end col -->
                           
                            <!-- end col -->
                            <div class="row">
                            <div class="col-sm-6">
                                <div class="form-box">
                                    <input type="text" name="date-picker" id="date-picker" placeholder="Date" required="required" data-error="Date is required." />
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-sm-6">
                                <div class="form-box">
                                    <input type="text" name="time-picker" id="time-picker" placeholder="Time" required="required" data-error="Time is required." />
                                </div>
                            </div>
                            </div>
                            <!-- end col -->
                            <div class="row">
                            <div class="col-sm-6">
                                <div class="form-box">
                                    <select name="preferred_food" id="preferred_food" class="selectpicker">
                                        <option selected disabled>preferred food</option>
                                        <option>Indian</option>
                                        <option>Continental</option>
                                        <option>Mexican</option>
                                    </select>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-sm-6">
                                <div class="form-box">
                                    <select name="occasion" id="occasion" class="selectpicker">
                                        <option selected disabled>Occasion</option>
                                        <option>Wedding</option>
                                        <option>Birthday</option>
                                        <option>Anniversary</option>
                                    </select>
                                </div>
                            </div>
                          </div>
                            <!-- end col -->
                            <div class="row">
                           <div class="col-sm-6">
                                <div class="form-box">
                                    <select name="table_no" id="table_no" class="selectpicker">
                                        <option selected disabled>Table No.</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                    </select>
                                </div>
                            </div>
                            </div>


                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="reserve-book-btn text-center">
  <button class="hvr-underline-from-center" type="submit" id="submit" name="submit">BOOK MY TABLE </button>
                              
                
                </div>
                
                
    
                
                            </div>
                            <!-- end col -->
                        </form>
            
            
                        <?php
              
/*
     if(isset($_POST['submit'])){

        echo("First name: " .$_POST['form_name'] . "<br />\n");

        echo("Email: " . $_POST['email'] . "<br />\n");

     }

  */?>
                        <!-- end form -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end reservations-box -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end reservations-main -->

		       
		     </div>
	    </div>
	  </div>
	

  
<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>

    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
</body>
</div>
</html>
