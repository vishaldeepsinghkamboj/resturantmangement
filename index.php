<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<style>
		h2{
		color:#BE5504;
		font-size:52px;
		font-family: 'nautilus_pompiliusregular';
		font-weight: bold;font-style: italic;
		}

		

		div.about{
			position: relative;
			top:80px;
		}
		div.contact{
			position:relative;
			text-align: right;
			top: 80px;
			background: brown;
			padding-left: 40px;
			
		}
	.column {
	  float: left;
	  width: 50%;
	 padding-left: 40px;
     }

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
div.contact_us
{
	background-color: red;
	padding: 40px;
}

	</style>
</head>
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">

	 <?php include 'includes/navbar.php'; ?>
	 
	    <div class="content-wrapper">
	      <div class="container">

	      <!-- Main content -->
	       <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php
	        			if(isset($_SESSION['error']))
	        			{
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        	
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                      <img src="food_images/banner5.jpg" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="food_images/banner2.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="food_images/banner6.jpg" alt="Third slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>

   <marquee style="font-size: 25px;color: brown; font-family:cursive;"behavior="scroll" direction="left"><h2>Monthly Top Dishes</h2></marquee>		            
		       		<?php
		       			$month = date('m');
		       			$conn = $pdo->open();

		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("SELECT *, SUM(quantity) AS total_qty FROM details LEFT JOIN sales ON sales.id=details.sales_id LEFT JOIN products ON products.id=details.product_id WHERE MONTH(sales_date) = '$month' GROUP BY details.product_id ORDER BY total_qty DESC LIMIT 6");
						    $stmt->execute();
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-4'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								
	       								</div>
	       							</div>
	       						";
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}

						$pdo->close();

		       		  ?> 
	        	    </div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        </div>

            </div>
  
	     </section>
	     <br>
	  




 <div class="row">
<div id="about">
  <div class="column">
  	<h2 > About Us </h2>
    <h3 style="color:orange;">Italian ,Indian ,Mexican Cuisine...</h3>
        <h4 style="font-family: cursive;"> MULTI CUISINE, the city's  immerse themselves in a lazy mood -   indulging in laughter and conversation. Drop in and experience a sunlit   courtyard, where the mood is always set to bliss.<br>
        	<br>
    
		Welcome to space reminiscent of a Spanish countryside, complete with   sunbathed courtyard. Here, superb Italian-inspired fare and fine wines   are the highlight of a peaceful afternoon or evening, with a   surprisingly eclectic lunch and a dinner menu that's pure indulgence. </h4>

  </div>
  <div class="column">
    <img class="about-main" src="images/resort.jpg" alt="About Main Image">

  </div>
</div>

	 </div>

	 



	    </div>
	  </div>
	</div>

	<br>
	<br>
	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>
