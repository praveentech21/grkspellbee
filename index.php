<!doctype html>
<html class="fixed">

<head>
	<?php 
	include "connect.php";
	include "head.php";
	session_start();	
	if(isset($_POST['login'])){
		$mobile = $_POST['mobile'];
		$pin = $_POST['pin'];
		$check = mysqli_query($conn, "SELECT * FROM `users` WHERE `pid` = '$mobile' AND `points` IS NULL");
		$player_details = mysqli_fetch_assoc($check);
		if(mysqli_num_rows($check) > 0){
			if($pin == 'BVRMOL'){
				$_SESSION['pid'] = $mobile;
				$_SESSION['player_name'] = $player_details['player_name'];
				$_SESSION['flat'] = $player_details['flat'];
				header('location:dashboard.php');
			}
			else echo "<script>alert('Wrong Pin');</script>";

		}else{
			echo "<script>alert('Invalid Credentials');</script>";
		}
	}
	
	?>
</head>

<body>

	<!-- start: page -->
	<section class="body-sign body-locked">
		<div class="center-sign">
			<div class="panel card-sign">
				<div class="card-body">
					<form action="#" method='post'>
						<div class="current-user text-center">
							<img src="img/full_logo.jpg" alt="BO HOUSIE" class="rounded-circle user-image" />
							<h2 class="user-name text-dark m-0" style='font-size:24px;'>SPELL BEE LOGIN</h2>
						</div>
						<div class="form-group mb-3">
							<div class="input-group">
								<input id="mobile" name="mobile" type="number" class="form-control form-control-lg" placeholder="Mobile Number" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==10) return false;" REQUIRED />
								<span class="input-group-append">
									<span class="input-group-text">
										<i class="fas fa-phone"></i>
									</span>
								</span>
							</div>
						</div>
						<div class="form-group mb-3">
							<div class="input-group">
								<input id="pin" name="pin" type="password" class="form-control form-control-lg" placeholder="SECRET PIN" MAXLENGTH='6' value='' autocomplete="off" REQUIRED />
								<span class="input-group-append">
									<span class="input-group-text">
										<i class="fas fa-th-large"></i>
									</span>
								</span>
							</div>
						</div>
						

						<div class="row">
							<div class="col-6">
								<button type="submit" name="login" class="btn btn-primary pull-right">LOGIN TO PLAY</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</section>


	<!-- Vendor -->
	<script src="vendor/jquery/jquery.js"></script>
	<script src="vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
	<script src="vendor/popper/umd/popper.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.js"></script>
	<script src="vendor/jquery-placeholder/jquery-placeholder.js"></script>

	<!-- Theme Base, Components and Settings -->
	<script src="js/theme.js"></script>

	<!-- Theme Custom -->
	<!-- Theme Initialization Files -->
	<script src="js/theme.init.js"></script>

	<script>
		setTimeout(function() {
			document.getElementById('foo').style.display = 'none';
		}, 5000);
	</script>

	<!-- GetButton.io widget -->
</body>

</html>