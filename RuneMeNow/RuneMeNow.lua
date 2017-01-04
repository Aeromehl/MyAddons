--[[This is my first attempt at making an add-on. It will be updated over time
	
	//rm Fire 
	Ingame Macro  /console rm Fire (Sets Rune Type to Ignis)
	
	//rm Now
	Ingame Macro  /console rm Now (Uses the set Rune Type)
	
	//rm Reload (Reloads RuneMe add-on)

	
	]]
_addon.name = 'RuneMeNow'
_addon.version = '0.2.2'
_addon.author = 'Hagenige'
_addon.command = 'rmn'

element = 'Gelus'
barele = 'Baraero'

function rune()
	windower.send_command('input /ja "'..element..'" <me>')
end

function barelement()
	windower.send_command('input /ma "'..barele..'" <me>')
end

function reload()
	windower.send_command('input //lua reload RuneMeNow')
end



windower.register_event('addon command', function(command)	
	command = command and command:lower()
	if command == 'rune' then
        rune()
	elseif command == 'barelement' then
		barelement()
	elseif command == 'reload' then
		reload()
	elseif command == 'fire' then
        element = 'Ignis'
		barele = 'Barblizzard'
		windower.send_command('input /echo Ignis Runes Active--Enfire/Barblizzard + Barblizzard')
    elseif command == 'ice' then
        element = 'Gelus'
		barele = 'Baraero'
		windower.send_command('input /echo Gelus Runes Active--Enblizzard/Baraero + Baraero')
	elseif command == 'wind' then
        element = 'Flabra'
		barele = 'Barstone'
		windower.send_command('input /echo Flabra Runes Active--Enaero/Barstone + Barstone')
	elseif command == 'stone' then
        element = 'Tellus'
		barele = 'Barthunder'
		windower.send_command('input /echo Tellus Runes Active--Enstone/Barthunder + Barthunder')
	elseif command == 'thunder' then
        element = 'Sulpor'
		barele = 'Barwater'
		windower.send_command('input /echo Sulpor Runes Active--Enthunder/Barwater + Barwater')
	elseif command == 'water' then
        element = 'Unda'
		barele = 'Barfire'
		windower.send_command('input /echo Unda Runes Active--Enwater/Barfire + Barfire')
	elseif command == 'dark' then
        element = 'Tenebrae'
		barele = 'Barblizzard'
		windower.send_command('input /echo Tenebrae Runes Active--Endark/Barlight + Barblizzard')
	elseif command == 'light' then
        element = 'Lux'
		barele = 'Barsleep'
		windower.send_command('input /echo Lux Runes Active--Enlight/Bardark + Barsleep')
	end
end)	

