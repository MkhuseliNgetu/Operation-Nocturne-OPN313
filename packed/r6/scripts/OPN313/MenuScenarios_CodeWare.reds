import Codeware.*
import OPN313.Logger.*



/*@wrapMethod(PreGameSubMenuGameController)
public func AddBigButton(buttonsList: ref<inkCompoundWidget>, text: script_ref<String>, callBackName: CName) -> Void{
  wrappedMethod(this.GetRootCompoundWidget(), "venom snake",n"expansion button");
}*/


//Custom Main Menu Expansion Button
/*public struct ExpansionCustomButton{
    public let buttonsList: ref<inkCompoundWidget>;
    public let text: script_ref<String>;
    public let callBackName: CName = n"DiamondDogs";
}*/

//Credit to new game plus maker
@addMethod(MenuScenario_SingleplayerMenu)
protected cb func OnNewGame() -> Bool {
    this.CloseSubMenu();
    this.SwitchToScenario(n"MenuScenario_CustomExpansion");
}

class MenuScenario_CustomExpansion extends MenuScenario_NewGame{
   
//Custom Expansion inkMenuEntry

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
    }
}
