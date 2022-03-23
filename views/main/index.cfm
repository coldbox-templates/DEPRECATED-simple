<cfoutput>
	<div class="text-center mt-3 card shadow rounded">
		<div class="card-body">
			<div>
				<img src="includes/images/ColdBoxLogo2015_300.png" class="m-2 mt-2" alt="logo" height="200"/>
			</div>
			<div class="badge bg-info mb-2">
				<strong>#getColdBoxSetting( "version" )# (#getColdBoxSetting( "suffix" )#)</strong>
			</div>

			<h1 class="display-5 fw-bold">
				#prc.welcomeMessage#
			</h1>

			<div class="col-lg-6 mx-auto">
				<p class="lead mb-4">
					Welcome to modern ColdFusion (CFML) development.  You can now start building your application with ease, we already did the hard work
					for you.
				</p>
			</div>
		</div>
	</div>

	<div class="row py-5 row-cols-lg-2 gx-4">
		<div class="col d-flex align-items-start">
			<div class="bg-light text-dark flex-shrink-0 me-3 px-2 fs-2 rounded-circle shadow">
				<i class="bi bi-broadcast"></i>
			</div>
			<div>
				<h2>Event Handlers</h2>
				<p>
				You can click on the following event handlers to execute their default action
				<span class="badge bg-danger">index()</span>
				</p>
				<ul class="list-unstyled">
					<cfloop list="#getSetting("RegisteredHandlers")#" index="handler">
						<li>
							<a href="#event.buildLink( handler )#" class="btn btn-primary btn-sm" title="Run Event">
								<i class="bi bi-play-btn"></i> #handler#
							</a>
						</li>
					</cfloop>
				</ul>
			</div>
		</div>

		<div class="col d-flex align-items-start">
			<div class="bg-light text-dark flex-shrink-0 me-3 px-2 fs-2 rounded-circle shadow">
				<i class="bi bi-cpu-fill"></i>
			</div>
			<div>
				<h2>Modules</h2>
				<p>
				Here are your registered ColdBox Modules. Click on them to open their entry point.
				</p>
				<ul class="list-unstyled">
					<cfloop collection="#getSetting("Modules")#" item="thisModule">
						<li>
							<a href="#event.buildLink( getModuleConfig( thisModule ).inheritedEntryPoint )#" class="btn btn-primary btn-sm" title="Run Event">
								<i class="bi bi-play-btn"></i> #thisModule#
							</a>
						</li>
					</cfloop>
				</ul>
			</div>
		</div>
	</div>

	<div class="row pb-5 row-cols-lg-2 gx-4">
		<div class="col d-flex align-items-start">
			<div class="bg-light text-dark flex-shrink-0 me-3 px-2 fs-2 rounded-circle shadow">
				<i class="bi bi-power"></i>
			</div>
			<div>
				<h2>Reinitialize ColdBox</h2>
				<p>
					ColdBox caches things in memory for you to increase performance.  If you make any configuration changes, add/modify modules, etc, please make sure you reinit the framework
					so those changes take effect.  You can use the URL action shown below or CommandBox to issue a <code>coldbox reinit</code> command.
				</p>
				<table class="table table-striped">
					<thead>
						<th>URL Action</th>
						<th width="100">Execute</th>
					</thead>
					<tbody>
						<tr>
							<td>
								<em>?fwreinit=1</em><br/>
								<em>?fwreinit={ReinitPassword}</em>
							</td>
							<td>
								<a class="btn btn-info" href="index.cfm?fwreinit=1">
									<i class="bi bi-power"></i> Run
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<div class="col d-flex align-items-start">
			<div class="bg-light text-dark flex-shrink-0 me-3 px-2 fs-2 rounded-circle shadow">
				<i class="bi bi-card-checklist"></i>
			</div>
			<div>
				<h2>Tests</h2>
				<p>
				Unit and integration testing are integral parts to any ColdBox application.  We have scaffolded the test harness under the <code>tests</code> folder.
				From here you can open the <strong>Tests Browser</strong> and also execute all your tests.  Please note that you can also run all your tests via
				CommandBox: <code>testbox run</code>. You can even start a watcher which will check for source changes and run your tests for your: <code>testbox watch</code>
				</p>

				<div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
					<a
						href="#getSetting( "appMapping" )#/tests/index.cfm"
						class="btn btn-info btn-lg"
						role="button"
						target="_blank"
					>
						<i class="bi bi-binoculars"></i>
						Test Browser
					</a>

					<a
						href="#getSetting( "appMapping" )#/tests/runner.cfm"
						class="btn btn-info btn-lg"
						role="button"
						target="_blank"
					>
						<i class="bi bi-activity"></i>
						Test Runner
					</a>
				</div>
			</div>
		</div>
	</div>

	</cfoutput>
