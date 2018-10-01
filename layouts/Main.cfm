<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to Coldbox!</title>
	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">
	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />
	<!---css --->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<!---Top NavBar --->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
		<!---Brand --->
		<a class="navbar-brand mb-0" href="#event.buildLink('')#"><strong>Home</strong></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!---About --->
			<ul class="nav navbar-nav ml-auto">
				<li class="nav-item dropdown">
					<a href="##" class="nav-link dropdown-toggle" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fas fa-info-circle"></i> About <b class="caret"></b>
					</a>
					<div class="dropdown-menu dropdown-menu-right bg-dark" aria-labelledby="navbarDropdown">
							<a href="" class="dropdown-item text-light bg-dark"><strong>#getSetting("codename",1)# (#getsetting("suffix",1)#)</strong></a>
							<a href="http://coldbox.ortusbooks.com" class="dropdown-item text-light bg-dark"><i class="fas fa-book"></i> Help Manual</a>
							<a href="mailto:bugs@coldbox.org?subject=DataBoss Bug Report" class="dropdown-item text-light bg-dark"><i class="fas fa-fire"></i> Report a Bug</a>
							<a href="mailto:info@coldbox.org?subject=DataBoss Feedback" class="dropdown-item text-light bg-dark"><i class="fas fa-bullhorn"></i> Send Us Feedback</a>
							<a href="http://www.ortussolutions.com/products/coldbox" class="dropdown-item text-light bg-dark"><i class="fas fa-home"></i> Professional Support</a>
							<div class="dropdown-divider"></div>
							<img class="rounded mx-auto d-block" width="150" src="includes/images/ColdBoxLogo2015_300.png" alt="logo"/>
					</div>
				</li>
			</ul>
		</div>
	</nav> <!---end navbar --->

	<!---Container And Views --->
	<div class="container">#renderView()#</div>

	<footer class="border-top py-3 mt-5">
		<div class="container">
			<p class="float-right">
				<a href="##"><i class="fas fa-arrow-up"></i> Back to top</a>
			</p>
			<p>
				<a href="http://www.coldbox.org">ColdBox Platform</a> is a copyright-trademark software by
				<a href="http://www.ortussolutions.com">Ortus Solutions, Corp</a>
			</p>
			<p>
				Design thanks to
				<a href="http://getbootstrap.com/">Twitter Boostrap</a>
			</p>
		</div>
	</footer>

	<!---js --->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<script>
	$(function() {
		// activate all drop downs
		$('.dropdown-toggle').dropdown();
		// Tooltips
		$("[rel=tooltip]").tooltip();
	})
	</script>
</body>
</html>
</cfoutput>
