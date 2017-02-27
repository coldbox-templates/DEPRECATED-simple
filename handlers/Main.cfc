component output="false" extends="coldbox.system.EventHandler" {

	// Default Action 
	function index(){
		dump(controller.getInterceptorService().getInterceptor("Ses").getRoutes());
		abort;
		prc.welcomeMessage = "Welcome to ColdBox!";
		event.setView("main/index");
	}

	// Do Something Action 
	function doSomething(){

		setNextEvent("main.index");

	}

	/* ------------------------------------------- GLOBAL IMPLICIT EVENTS ONLY ------------------------------------------
 	--- In order for these events to fire, you must declare them in the ColdBox.cfc */

	function onAppInit(evet,rc,prc){

	}

	function onRequestStart(evet,rc,prc){

	}

	function onRequestEnd(evet,rc,prc){

	}

	function onSessionStart(evet,rc,prc){

	}

	function onSessionEnd(evet,rc,prc){

		sessionScope = event.getValue("sessionReference");
		applicationScope = event.getValue("applicationReference");

	}

	function onException(evet,rc,prc){

			//Grab Exception From private request collection, placed by ColdBox Exception Handling
			var exception = prc.exception;
			//Place exception handler below:

	}

	function onMissingTemplate(evet,rc,prc){
			//Grab missingTemplate From request collection, placed by ColdBox
			var missingTemplate = event.getValue("missingTemplate");

	}

}
