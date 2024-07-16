module OPN313.CustomListeners

import Codeware.*
import OPN313.Logger.*

public class CustomEvent extends CallbackSystemEvent {
    private let data: Int32;

    public func GetData() -> Int32 {
        return this.data;
    }

    static func Create(data: Int32) -> ref<CustomEvent> {
        let event = new CustomEvent();
        event.data = data;
        return event;
    }
}

class CustomEventListener extends ScriptableService {
    private cb func OnLoad() {
        GameInstance.GetCallbackSystem().RegisterCallback(n"CustomEvent", this, n"OnCustomEvent");
        GameInstance.GetCallbackSystem().DispatchEvent(CustomEvent.Create(123));
    }

    private cb func OnCustomEvent(event: ref<CustomEvent>) {

        OPNLog(s"\(event.GetEventName()) \(event.GetData())");
    }
}