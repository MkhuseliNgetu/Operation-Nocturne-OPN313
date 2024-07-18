import Codeware.*
import OPN313.Logger.*

class Game_Defs extends gsmMenuState{


}

class CreateSinglePlayerSession extends gsmMenuState_CreateSingleplayerSession{

    public static func CreateSinglePlayerSession(){

        
    }
}

//Credit to new game plus maker
@addMethod(MenuScenario_SingleplayerMenu)
protected cb func OnNewGame() -> Bool {
    this.CloseSubMenu();
    this.SwitchToScenario(n"MenuScenario_CustomExpansion");
}

class MenuScenario_CustomExpansion extends MenuScenario_NewGame{

    //Credit to new game plus maker
    protected cb func OnEnterScenario(prevScenario: CName, userData: ref<IScriptable>) -> Bool {
        super.OnEnterScenario(prevScenario, userData);
        this.GetMenusState().OpenMenu(n"custom_expansion", userData);
    }

    protected cb func OnLeaveScenario(nextScenario: CName) -> Bool {
        super.OnLeaveScenario(nextScenario);
        this.GetMenusState().CloseMenu(n"custom_expansion");

    }

    protected cb func OnMainMenuBack() -> Bool {
        //this.SwitchToScenario(this.m_prevScenario);
    }

    protected cb func OnAccept() -> Bool {
        this.SwitchToScenario(n"MenuScenario_CustomExpansion_Difficulty");
    }
}

class MenuScenario_CustomExpansion_Difficulty extends MenuScenario_NewGame{
   
    //Credit to new game plus maker
    protected cb func OnEnterScenario(prevScenario: CName, userData: ref<IScriptable>) -> Bool {
        super.OnEnterScenario(prevScenario, userData);
        this.GetMenusState().OpenMenu(n"custom_expansion_difficulty", userData);
    }

    protected cb func OnLeaveScenario(nextScenario: CName) -> Bool {
        super.OnLeaveScenario(nextScenario);
        this.GetMenusState().CloseMenu(n"custom_expansion_difficulty");
    }

    protected cb func OnMainMenuBack() -> Bool {
        //this.SwitchToScenario(this.m_prevScenario);
    }

    protected cb func OnAccept() -> Bool {
        this.SwitchToScenario(n"MenuScenario_SingleplayerMenu");
        //this.GetMenusState().gsmMenuState_LoadGameDefinition("Game_Defs");

    }
}
