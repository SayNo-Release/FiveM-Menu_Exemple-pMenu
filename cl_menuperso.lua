local PlayerData, CurrentActionData, HandcuffTimer, dragStatus, blipsCops, currentTask, spawnedVehicles = {}, {}, {}, {}, {}, {}, {}
local HasAlreadyEnteredMarker, isDead, isHandcuffed, hasAlreadyJoined, playerInService, isInShopMenu = false, false, false, false, false, false
local LastStation, LastPart, LastPartNum, LastEntity, CurrentAction, CurrentActionMsg
dragStatus.isDragged = false
ESX = nil
locksound = false
onDuty = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

local exemple = {
    "Exemple 1",
    "Exemple 3",
    "Exemple 4",
    "Exemple 5",
    "Exemple 6",
    "Exemple 7",
    "Exemple 8",
    "Exemple 9",
    "Exemple 10",
    "Exemple 11",
    "Exemple 12",
    "Exemple 13"
}

local exemple = {
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "Exemple" },
	Data = { currentMenu = "Menu Exemple", "Test" },
	Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result, slide)
			PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
			local slide = btn.slidenum
			local btn = btn.name
			local check = btn.unkCheckbox
			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
			local playerPed = PlayerPedId()
			local coords = GetEntityCoords(playerPed)
			if btn == "Etat du véhicule" then

            elseif slide == 1 and btn == "Exemple Slide" then

			elseif slide == 2 and btn == "Exemple Slide" then
				
			elseif slide == 3 and btn == "Exemple Slide" then
				
			elseif slide == 4 and btn == "Exemple Slide" then

			elseif slide == 5 and btn == "Exemple Slide" then

			elseif slide == 6 and btn == "Exemple Slide" then

			elseif slide == 7 and btn == "Exemple Slide" then
				
			elseif slide == 8 and btn == "Exemple Slide" then

			elseif slide == 9 and btn == "Exemple Slide" then

			elseif slide == 10 and btn == "Exemple Slide" then

            elseif slide == 12 and btn == "Exemple Slide" then
            
            elseif slide == 13 and btn == "Exemple Slide" then

		end
	end,
	
},
	Menu = {
		["menu exemple"] = {
			b = {
                {name = "Exemple"},
                {name = "Exemple Sous Menu", ask = ">", askX = true},
                {name = "Exemple Slide", slidemax = exemple},
			}
        },
        
        ["exemple sous menu"] = {
			b = {
                {name = "Fin"},
                {name = "Fin"},
                {name = "Fin"},
                {name = "Fin"},
			}
		}
	}
}

Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(1, 83) then
				CreateMenu(exemple)
			end
		end
	end
end)