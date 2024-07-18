import Codeware.*
import OPN313.Logger.*


//Expansion Game Defintions
public class ExpansionGameDefs extends PreGameSubMenuGameController{

    private let m_categories: wref<SelectorController>;

    private let m_gameDefinitions: wref<SelectorController>;

    private let m_genders: wref<SelectorController>;


    protected cb func OnCategoryChanged(index: Int32, value: String) -> Bool {
    let GameDefIndex: Int32 = 3;

    let values: array<String> = this.GetSystemRequestsHandler().GetGameDefinitions(this.m_categories.GetCurrIndex());
    this.m_gameDefinitions.Clear();
    this.m_gameDefinitions.AddValues(values);
    if ArraySize(values) > 0 {
      this.m_gameDefinitions.SetCurrIndex(GameDefIndex);
    };

  }

   public cb func OnStartDefinition(e: ref<inkPointerEvent>) -> Bool {
    if e.IsAction(n"click") {
      this.GetSystemRequestsHandler().StartGameDefinition(this.m_categories.GetCurrIndex(), this.m_gameDefinitions.GetCurrIndex(), this.m_genders.GetCurrIndex());
    };
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

        //GameInstance.OPN313RequestHandler().GetWorlds();
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
