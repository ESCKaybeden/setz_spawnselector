----------------[Setz Crew]----------------
-------  Front end: ESCKaybeden  ----------
----------  Back end: ra1der  -------------
-----  Discord: discord.gg/6drAg2vP55  ----
-------------------------------------------

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		print('[^2setz_spawnselector^0] - ^1Başlatıldı!^0')
	end
end)

ESX.RegisterServerCallback("setz:spawnselector:lastlocation",function(source,cb)
    local sql = exports.ghmattimysql:executeSync("SELECT `position` FROM `users` WHERE `identifier` = '"..GetPlayerIdentifiers(source)[1].."'")
    if sql[1] ~= nil then
        position = json.decode(sql[1].position)
	else
        position = Config.DefaultSpawn
	end
    cb(position)
end)