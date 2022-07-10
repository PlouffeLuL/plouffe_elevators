local Utils = exports.plouffe_lib:Get("Utils")

function ElevatorFnc:Exports()
    CreateThread(function()
        for k,v in pairs(Elevator.Elevators) do
            local this = v
            this.name = "elevator"..tostring(k)
            this.aditionalParams = {index = k}
            exports.plouffe_lib:ValidateZoneData(this)
        end
    end)
end

function ElevatorFnc:RegisterAllEvents()
    AddEventHandler('plouffe_lib:setGroup', function(data)
        Elevator.PlayerData[data.type] = data
    end)
    
    RegisterNetEvent("OnElevatorUse",function()
        Elevator.Ped = PlayerPedId()
        Elevator.PedCoords = GetEntityCoords(Elevator.Ped)
        local currentTime = GetGameTimer()
    
        if currentTime - Elevator.Utils.LastUse > Elevator.Utils.IntervalBetweenUse then
            Elevator.Utils.LastUse = GetGameTimer()
            for index,data in pairs(Elevator.Elevators) do
                local dstCheck = #(Elevator.PedCoords - data.coords)
                
                if dstCheck <= data.maxDst then
                    if Elevator.Elevators[index].isInstant == false then
                        self:OpenElevatorMenu(index)
                    else
                        self:DoInstantTp(index)
                    end
                    break
                end
            end
        end
    end)
end

function ElevatorFnc:OpenElevatorMenu(index,hacking)
    local menu = self:GetAccesibles(index,hacking)  

    if #menu > 0 then
        exports.ooc_menu:Open(menu, function(params)
            Elevator.CurrentVehicle = GetVehiclePedIsIn(Elevator.Ped, false)
    
            if params.inVeh == true and Elevator.CurrentVehicle == params.veh and Elevator.CurrentVehicle ~= 0 then
                self:TpVehicle(params.value)
            elseif params.inVeh == true and Elevator.CurrentVehicle == 0 then
                self:TpPed(params.value)
            elseif params.inVeh == false then
                self:TpPed(params.value)
            end
        end)
    else
        Utils:Notify('inform', "Vous n'avez pas acces a cette ascensceur", 5500)
    end
end

function ElevatorFnc:GetAccesibles(index,hacking)
    local zone = Elevator.Elevators[index].accesibles

    local menu = {}
    local id = 0

    for k,v in pairs(zone) do
        local canAdd = false
        local raid, canAdd, hasJob, inVeh, veh = self:IsAllowed(v,hacking)
        local label = Elevator.Elevators[v.index].label

        if canAdd == true then
            if raid == true then
                label = Elevator.Elevators[v.index].label.." (RAID)"
            end

            id = id + 1

            table.insert(menu,{
                id = id,
                header = label,
                txt = "Utiliser l'ascenseur",
                params = {
                    event = "",
                    args = {
                        value = v.index, 
                        inVeh = inVeh, 
                        veh = veh
                    }
                }
            })
        end
    end

    return menu
end

function ElevatorFnc:IsAllowed(zone,hacking)
    local cbDone = false
    local cbAllowed = false

    Elevator.CurrentVehicle = GetVehiclePedIsIn(Elevator.Ped, false)

    if zone.public == true then
        return false, true, true, zone.inVeh, Elevator.CurrentVehicle
    end

    if zone.inVeh == false and Elevator.CurrentVehicle ~= 0 then
        return false, false, false, zone.inVeh, Elevator.CurrentVehicle
    end

    if #zone.raidjobs > 0 or #zone.allowedJobs > 0 then
        if zone.raid == true then
            for k,v in pairs(zone.raidjobs) do
                if Elevator.PlayerData.job.name == v.job then
                    for x,y in pairs(v.grade) do
                        if Elevator.PlayerData.job.grade == y then
                            return true, true, false, zone.inVeh, Elevator.CurrentVehicle
                        end
                    end
                end
            end
        end
        
        for k,v in pairs(zone.allowedJobs) do
            if Elevator.PlayerData.job.name == v.job then
                for x,y in pairs(v.grade) do
                    if Elevator.PlayerData.job.grade == y then
                        return false, true, true, zone.inVeh, Elevator.CurrentVehicle
                    end
                end
            end
        end

        if zone.canHack == true and hacking == true then
            return false, true, true, zone.inVeh, Elevator.CurrentVehicle
        end

        return false, false, false, zone.inVeh, Elevator.CurrentVehicle
    end

    return false, true, false, zone.inVeh, Elevator.CurrentVehicle
end

function ElevatorFnc:TpVehicle(index)
    local coords = Elevator.Elevators[index].tpCoords
    Elevator.Utils.UsingElevator = true
    self:DisableActions()
    
    CreateThread(function()
        Wait(250)
        PlaySoundFrontend(-1, "OPENING", "MP_PROPERTIES_ELEVATOR_DOORS" , 1)
    end)

    DoScreenFadeOut(2500)
    while not IsScreenFadedOut() do
        Wait(0)
    end

    SetEntityCoords(Elevator.CurrentVehicle, coords)
    SetEntityHeading(Elevator.CurrentVehicle, Elevator.Elevators[index].heading)
    SetGameplayCamRelativeHeading(0.0)

    CreateThread(function()
        local sub = 0
        Wait(100)
        while IsEntityInAir(Elevator.CurrentVehicle) == 1 do
            sub = sub - 0.1
            SetEntityCoords(Elevator.CurrentVehicle, coords.x,coords.y,coords.z-sub)
            Wait(0)
        end
    end)

    CreateThread(function()
        Wait(250)
        PlaySoundFrontend(-1, "OPENING", "MP_PROPERTIES_ELEVATOR_DOORS" , 1)
    end)

    DoScreenFadeIn(3500)
    Elevator.Utils.MenuOpen = false
    Elevator.Utils.UsingElevator = false
end

function ElevatorFnc:TpPed(index)    
    local coords = Elevator.Elevators[index].tpCoords
    Elevator.Utils.UsingElevator = true
    self:DisableActions()

    CreateThread(function()
        Wait(250)
        PlaySoundFrontend(-1, "OPENING", "MP_PROPERTIES_ELEVATOR_DOORS" , 1)
    end)
    
    DoScreenFadeOut(2500)
    while not IsScreenFadedOut() do
        Wait(0)
    end

    SetEntityCoords(Elevator.Ped, coords.x,coords.y,coords.z-1.0)
    SetEntityHeading(Elevator.Ped, Elevator.Elevators[index].heading)
    SetGameplayCamRelativeHeading(0.0)

    CreateThread(function()
        Wait(250)
        PlaySoundFrontend(-1, "OPENING", "MP_PROPERTIES_ELEVATOR_DOORS" , 1)
    end)

    DoScreenFadeIn(3500)
    Elevator.Utils.MenuOpen = false
    Elevator.Utils.UsingElevator = false
end

function ElevatorFnc:GetClosestElevator()
    Elevator.Ped = PlayerPedId()
    Elevator.PedCoords = GetEntityCoords(Elevator.Ped)

    for k,v in pairs(Elevator.Elevators) do
        local dstCheck = #(Elevator.PedCoords - v.coords)
        if dstCheck <= v.maxDst then
            return true, k
        end
    end

    return false, nil
end

function ElevatorFnc:DisableActions()
    Citizen.CreateThread(function()
        while Elevator.Utils.UsingElevator == true do
            Wait(0)
            
            if IsPedDeadOrDying(Elevator.Ped, true) then
                Elevator.Utils.UsingElevator = false
            end

            DisableControlAction(0, 30, true)
            DisableControlAction(0, 31, true)
            DisableControlAction(0, 36, true)
            DisableControlAction(0, 21, true)
        end
    end)  
end

function ElevatorFnc:DoInstantTp(index)
    local canRaid, hasAcces, hasJob, inVeh, veh = ElevatorFnc:IsAllowed(Elevator.Elevators[index],false)
    if hasAcces == true then
        if veh ~= 0 then
            if inVeh == true then
                ElevatorFnc:TpVehicle(index)
            else
                Utils:Notify('inform', "Vous ne pouvez pas utiliser cette ascensseur en véhicule", 5500)
            end
        else
            ElevatorFnc:TpPed(index)
        end
    else
        Utils:Notify('inform', "Vous n'avez pas acces a cette ascensceur", 5500)
    end
end

CreateThread(function()
    TriggerEvent('ooc_core:getCore', function(Core) 
        while not Core.Player:IsPlayerLoaded() do
            Wait(500)
        end
        
        Elevator.PlayerData = Core.Player:GetPlayerData()

        ElevatorFnc:Exports()
        ElevatorFnc:RegisterAllEvents()
    end)
end)