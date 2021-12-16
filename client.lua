----------------[Setz Crew]----------------
-------  Front end: ESCKaybeden  ----------
----------  Back end: ra1der  -------------
-----  Discord: discord.gg/6drAg2vP55  ----
-------------------------------------------

local ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) 
			ESX = obj 
        end)
		Wait(0)
    end
end)

RegisterCommand('spawnselector', function()
    if Config.Command == true then
        TriggerEvent('setz:spawnselector_open')
    end
end)

RegisterNetEvent('setz:spawnselector_open')
AddEventHandler('setz:spawnselector_open', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        msg = "opens"
    })
end)

RegisterNUICallback('selectspawn', function(data)
    spawnplayer(data.secilenyer)
end)

function spawnplayer(datas)
    local Player = PlayerPedId()
    if datas == 'LastLocation' then
        ESX.TriggerServerCallback("setz:spawnselector:lastlocation",function(data)
            DoScreenFadeOut(100)
            SetEntityCoords(Player, data['x'], data['y'], data['z'])
            SetEntityHeading(Player, data['heading'])
            SetEntityMaxHealth(Player, 200)
            SetEntityHealth(Player, 200)
            Close()
            Wait(350)
            DoScreenFadeIn(1000)
            CameraPos(data['x'], data['y'], data['z'])
        end)
    else
        DoScreenFadeOut(100)
        SetEntityCoords(Player, Config.SpawnSelector[datas])
        SetEntityMaxHealth(Player, 200)
        SetEntityHealth(Player, 200)
        Close()
        Wait(350)
        DoScreenFadeIn(1000)
        CameraPos(Config.SpawnSelector[datas][1], Config.SpawnSelector[datas][2], Config.SpawnSelector[datas][3])
    end
end

function Close()
    SetNuiFocus(false, false)
    SendNUIMessage({
        msg = "Close"
    })
end

function CameraPos(x,y,z)
    local pos = {x = x, y = y, z = z}
    SetEntityCoords(PlayerPedId(), pos.x, pos.y, pos.z)
    SetEntityMaxHealth(PlayerPedId(), 200)
    SetEntityHealth(PlayerPedId(), 200)
    DoScreenFadeIn(500)
    SetTimecycleModifier('default')
    SetNuiFocus(false, false)
    Citizen.Wait(500)
    local cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", -1355.93,-1487.78,520.75, 300.00,0.00,0.00, 100.00, false, 0)
    PointCamAtCoord(cam2, pos.x,pos.y,pos.z+200)
    SetCamActiveWithInterp(cam2, cam, 900, true, true)
    Citizen.Wait(900)
    local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x,pos.y,pos.z+200, 300.00,0.00,0.00, 100.00, false, 0)
    PointCamAtCoord(cam, pos.x,pos.y,pos.z+2)
    SetCamActiveWithInterp(cam, cam2, 3700, true, true)
    Citizen.Wait(3700)
    PlaySoundFrontend(-1, "Zoom_Out", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
    RenderScriptCams(false, true, 500, true, true)
    PlaySoundFrontend(-1, "CAR_BIKE_WHOOSH", "MP_LOBBY_SOUNDS", 1)
    FreezeEntityPosition(PlayerPedId(), false)
    DoScreenFadeOut(500)
    Citizen.Wait(500)
    DoScreenFadeIn(1000)
    SetCamActive(cam, false)
    DestroyCam(cam, true)
    DisplayHud(true)
    DisplayRadar(true)
end