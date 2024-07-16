local GameSession = require('GameSession')
local GameUI = require('GameUI')
local GameSettings = require('GameSettings')

--UI Related
registerForEvent('onInit', function()
    -- Listen for every UI event
    GameUI.Listen(function(state)
        GameUI.PrintState(state)
    end)
end)

--Hud Related
registerHotkey('ToggleHUD', 'Toggle HUD', function()
    GameSettings.ToggleGroup('/interface/hud')

end)

--Game Session Related 
registerForEvent('onInit', function()

    GameHUD.Initialize()

    GameSession.OnLoad(function()
		print('[Operation Nocturne OPN313] Kept you waiting, huh...')
	end)

    --Occurs when game has started, but not loaded a game save yet
    GameSession.OnStart(function()
        -- Triggered once the load is complete and the player is in the game
        -- (after the loading screen for "Load Game" or "New Game")
        print('Game Session Started')
        GameHUD.ShowWarning('[Operation Nocturne OPN313] Kept you waiting, huh...')
    end)

    --Occurs when game is ending (Exit to main menu or game) 
    GameSession.OnEnd(function()
        -- Triggered once the current game session has ended
        -- (when "Load Game" or "Exit to Main Menu" selected)
        print('Game Session Ended')
    end)

    GameSession.TryLoad()
end)



