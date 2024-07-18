/*public native struct RequestData{
native let AvailableWorlds: array<String>;
native let AvailableGenders: array<String>;
native let OPNSaveName: String;
native let OPNSaveId: Int32;
}

public native class OPN313SystemRequests extends inkISystemRequestsHandler {

public native func GetWorlds() -> array<String>;

public native func GetGenders() -> array<String>;

public native func ManualSave(saveName: String) -> Void;

public native func OverrideSave(saveId: Int32) -> Void;
//Launches Game Def
public native func StartGameDefinition(categoryId: Int32, gamedefId: Int32, genderId: Int32) -> Void;
//Starts A New Game
public native func StartNewGame(state: ref<IScriptable>) -> Void;
//Starts A New World
public native func StartWorld(worldId: Int32, genderId: Int32) -> Void;

// World -> Game -> GameDefinition
public native func PauseGame() -> Void;

public native func UnpauseGame() -> Void;

}

//Credit to new game plus maker
@addMethod(GameInstance)
public native static func OPN313RequestHandler() -> ref<OPN313SystemRequests> ;
*/