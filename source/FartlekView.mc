using Toybox.WatchUi;
using Toybox.System;
using Toybox.Timer;
using Toybox.Lang;

var seconds = 0;	//global variable to be updated every second to track time

class FartlekView extends WatchUi.View {

    function initialize() {
        View.initialize();
		
    }

	//timer callback function to increment seconds var
	function timerCallback() {
		seconds++;
		WatchUi.requestUpdate();
	}
	
    // Load your resources here
    function onLayout(dc) {
    	//initialize the timer and set the layout
    	var myTimer = new Timer.Timer();
    	myTimer.start(method(:timerCallback), 1000, true);
        setLayout(Rez.Layouts.MainLayout(dc));

        
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {
    	
    	
    }

    // Update the view
    function onUpdate(dc) {
    	
    	//update the timer to reflect the value of the seconds var
    	var totalTime = View.findDrawableById("TotalTime");
    	totalTime.setText(Lang.format("$1$:$2$", [(seconds / 60), (seconds % 60).format("%02d")]));
    	
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }

}
