using Toybox.WatchUi;
using Toybox.System;
using Toybox.Timer;
using Toybox.Lang;
var seconds = 0;	//global variable to be updated every second to track time
var plswait = "Please Wait";	//i'm just havin some fun

class FartlekView extends WatchUi.View {

    function initialize() {
        View.initialize();
		
    }

	//timer callback function to increment seconds var
	function pushTimerCallback() {
		WatchUi.pushView(new Rez.Menus.MainMenu(), new FartlekMenuDelegate(), WatchUi.SLIDE_LEFT);
	}
	
    // Load your resources here
    function onLayout(dc) {
		setLayout(Rez.Layouts.WelcomeScreen(dc));	

    	//initialize the timer and set the layout
    	var pushTimer = new Timer.Timer();
    	pushTimer.start(method(:pushTimerCallback), 1200, true);
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    	
    	
    }

    // Update the view
    function onUpdate(dc) {
    	
    	//update the timer to reflect the value of the seconds var
//    	var totalTime = View.findDrawableById("TotalTime");
//    	totalTime.setText(Lang.format("$1$:$2$", [(seconds / 60), (seconds % 60).format("%02d")]));
    	
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
