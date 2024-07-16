module OPN313.KeyPrompt

import Codeware.*
import OPN313.Logger.*

//Credit to NGButtonAdder
/*@wrapMethod(gameuiMenuItemListGameController)
private func AddMenuItem(const label: script_ref<String>, spawnEvent: CName) -> Void {
    wrappedMethod("Snake", n"");
}*/


class CustomExpansion extends ExpansionNewGame {

 public static func OnInitialize() -> Bool{

    //Logging inputs 
    OPNLog("Expansion Window Opened");
 };

 protected func UnInitialize() -> Bool{


 };

 protected func OnPressExpansion(evt: ref<inkPointerEvent>) -> Bool{

 }
}

class LaunchExpansion extends ScriptableService{

    private let LauncherCallbackSystem: wref<CallbackSystem>;

    private func OnLoad(){
   
    //Captures specific button inputs
    GameInstance.GetCallbackSystem().RegisterCallback(n"Input/Key", this, n"OnKeyInput")
      .AddTarget(InputTarget.Key(EInputKey.IK_O)).SetRunMode(CallbackRunMode.OncePerTarget);

    //How to call a method
    CustomExpansion.OnInitialize(); 
    }

    //What happens when key is pressed  
    private cb func OnKeyInput(evt: ref<KeyInputEvent>) {

    //Logging inputs 
    OPNLog(s"Pressed \(evt.GetKey())");
  }
}
