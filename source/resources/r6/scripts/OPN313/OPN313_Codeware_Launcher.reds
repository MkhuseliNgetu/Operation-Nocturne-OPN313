import Codeware.*
import OPN313.Logger.*

class OPN313 extends ScriptableService {

  private let callbackSystem: wref<CallbackSystem>;
  private let found: Bool = false;

  private let OPNUI: gameuiMenuGameController;
  private let OPNUInotificationTitle: CName = n"Venom Snake";
  private let OPNUInoticationDescription: CName = n"Kept you waiting huh";


  //Executes once when game loads
  private cb func OnLoad() {
    OPNLog("Operation Nocturne OPN313 has loaded successfully!");

    this.callbackSystem = GameInstance.GetCallbackSystem();
    this.callbackSystem.RegisterCallback(n"Input/Key", this, n"OnKeyInput", true);

   
  }
  //Executes once when CET (Cyber Engine Tweaks) reloads
  private cb func OnReload() {
   OPNLog("Operation Nocture OPN313 has re-loaded successfully!");
  }
  //Executes once when game is loaded
  private cb func OnInitialize() {
    OPNLog("Game instance initialized, can access game systems");
  }
  //Executeds once when game is closing
  private cb func OnUninitialize() {
     OPNLog("Game is shutting down");
  }

  //Loads the expansion whena button is pressed
  // Will always listen, but only react once
  private cb func OnKeyInput(event: ref<KeyInputEvent>) {
    if this.found {
      return;
    }    
    OPNLog(s"You pressed your key, going dormant now: \(event.GetAction()) \(event.GetKey())");
    this.OPNUI.PushNotification(this.OPNUInotificationTitle, this.OPNUInoticationDescription);
    this.found = true;
  }

  //Adds Button To Menu

}

