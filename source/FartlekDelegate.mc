using Toybox.WatchUi;

class FartlekDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new FartlekMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}