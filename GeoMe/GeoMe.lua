--[[Geo and Run are my main jobs going into this new toon So
	I plan on working on this and the rune one to make them nice.
	I found a guy on youtube giving lua lessons, so hopefully that helps 
	once i start studying it tomorrow.
	
	For now this is what I have, and my eventual goals
	//gm Geo-(spell)        = Chosen Geo spell to cast when called as well as /echo (spell info from a list I can edit as my gear lets me breat tiers)
	//gm Indi-(spell)       = Chosen Indi spell to cast when called as well as /echo (spell info from a list I can edit as my gear lets me breat tiers)
	
	//gm geonow             = /input Geo-(chosen spell) <t>,  /echo (spell info from a list I can edit as my gear lets me breat tiers)
	//gm indinow            = /input Indi-(chosen spell) <me>, /echo (spell info from a list I can edit as my gear lets me breat tiers)
	
	//gm Reload (Reloads GeoMe add-on)
	
	
	I haven't yet figured out how to work with arguments like you mentioned in your email, and I currently only have the spell info loosely outlined
		under the inititial choosing of the spell, instead of in the actual casting of it. 
		
	Any "lua for dummies" info you toss my way about it would be appreciated, but even if not, I thought I'd show you what i do, as I do it. Since you'refresh
		the one who's inspired me to start doing this.  

	
	]]
_addon.name = 'GeoMe'
_addon.version = '0.1.0'
_addon.author = 'Hagenige'
_addon.command = 'gm'

geomancy = 'Geo-Fury'
indiclosure = 'Indi-Refresh'

function geoNow()
	windower.send_command('input /ma "'..geomancy..'" <t>')
end

function indiNow()
	windower.send_command('input /ma "'..indiclosure..'" <me>')
end

function reload()
	windower.send_command('input //lua reload GeoMe')
end



windower.register_event('addon command', function(command)	
	command = command and command:lower()
	if command == 'geonow' then
        geoNow()
	elseif command == 'indinow' then
		indiNow()
	elseif command == 'reload' then
		reload()	
		
		
--================================Geomancy Spells================================--	
	--======Buffs======--
	elseif command == 'geo-regen' then
        geomancy = 'Geo-Regen'
		windower.send_command('input /echo [Regen] @ Target')
	
	elseif command == 'geo-refresh' then
        geomancy = 'Geo-Refresh'
		windower.send_command('input /echo [Refresh] @ Target')
	
	elseif command == 'geo-haste' then
        geomancy = 'Geo-Haste'
		windower.send_command('input /echo [Haste] @ Target')	
	
	elseif command == 'geo-fury' then
        geomancy = 'Geo-Fury'
		windower.send_command('input /echo [ATK / rATK+] @ Target')
	
	elseif command == 'geo-barrier' then
        geomancy = 'Geo-Barrier'
		windower.send_command('input /echo [Def+] @ Target')
	
	elseif command == 'geo-precision' then
        geomancy = 'Geo-Precision'
		windower.send_command('input /echo [ACC / rACC+] @ Target')
	
	elseif command == 'geo-voidance' then
        geomancy = 'Geo-Voidance'
		windower.send_command('input /echo [EVA+] @ Target')
	
	elseif command == 'geo-acumen' then
        geomancy = 'Geo-Acumen'
		windower.send_command('input /echo [MAB+] @ Target')
	
	elseif command == 'geo-fend' then
        geomancy = 'Geo-Fend'
		windower.send_command('input /echo [MDB+] @ Target')
	
	elseif command == 'geo-focus' then
        geomancy = 'Geo-Focus'
		windower.send_command('input /echo [mACC+] @ Target')
	
	elseif command == 'geo-attunement' then
        geomancy = 'Geo-Attunement'
		windower.send_command('input /echo [mEVA+] @ Target')
	
	elseif command == 'geo-str' then
        geomancy = 'Geo-STR'
		windower.send_command('input /echo [STR+] @ Target')
	
	elseif command == 'geo-dex' then
        geomancy = 'Geo-DEX'
		windower.send_command('input /echo [DEX+] @ Target')
	
	elseif command == 'geo-vit' then
        geomancy = 'Geo-VIT'
		windower.send_command('input /echo [VIT+] @ Target')
		
	elseif command == 'geo-agi' then
        geomancy = 'Geo-AGI'
		windower.send_command('input /echo [AGI+] @ Target')
	
	elseif command == 'geo-mnd' then
        geomancy = 'Geo-MND'
		windower.send_command('input /echo [MND+] @ Target')
	
	elseif command == 'geo-int' then
        geomancy = 'Geo-INT'
		windower.send_command('input /echo [INT+] @ Target')	
		
	elseif command == 'geo-chr' then
        geomancy = 'Geo-CHR'
		windower.send_command('input /echo [CHR+] @ Target')	
	
	--======Debuffs======--
	
	elseif command == 'geo-wilt' then
        geomancy = 'Geo-Wilt'
		windower.send_command('input /echo [ATK-] @ Target')
		
	elseif command == 'geo-frailty' then
        geomancy = 'Geo-Frailty'
		windower.send_command('input /echo [DEF-] @ Target')	
	
	elseif command == 'geo-slip' then
        geomancy = 'Geo-Slip'
		windower.send_command('input /echo [ACC-] @ Target')
		
	elseif command == 'geo-torpor' then
        geomancy = 'Geo-Torpor'
		windower.send_command('input /echo [EVA-] @ Target')

	elseif command == 'geo-fade' then
        geomancy = 'Geo-Fade'
		windower.send_command('input /echo [MAB-] @ Target')

	elseif command == 'geo-malaise' then
        geomancy = 'Geo-Malaise'
		windower.send_command('input /echo [MDB-] @ Target')

	elseif command == 'geo-vex' then
        geomancy = 'Geo-Vex'
		windower.send_command('input /echo [mACC-] @ Target')

	elseif command == 'geo-languor' then
        geomancy = 'Geo-Languor'
		windower.send_command('input /echo [mEVA-] @ Target')

	elseif command == 'geo-poison' then
        geomancy = 'Geo-Poison'
		windower.send_command('input /echo [Poison] @ Target')

	elseif command == 'geo-slow' then
        geomancy = 'Geo-Slow'
		windower.send_command('input /echo [Slow] @ Target')

	elseif command == 'geo-paralyze' then
        geomancy = 'Geo-Paralyze'
		windower.send_command('input /echo [Paralyze] @ Target')
	
	elseif command == 'geo-gravity' then
        geomancy = 'Geo-Gravity'
		windower.send_command('input /echo [Gravity] @ Target')
			
--================================Indiclosure Spells================================--	
	--======Buffs======--
	elseif command == 'indi-regen' then
        indiclosure = 'Indi-Regen'
		windower.send_command('input /echo [Regen] @ <me>')
	
	elseif command == 'indi-refresh' then
        indiclosure = 'Indi-Refresh'
		windower.send_command('input /echo [Refresh] @ <me>')
	
	elseif command == 'indi-haste' then
        indiclosure = 'Indi-Haste'
		windower.send_command('input /echo [Haste] @ <me>')	
	
	elseif command == 'indi-fury' then
        indiclosure = 'Indi-Fury'
		windower.send_command('input /echo [ATK / rATK+] @ <me>')
	
	elseif command == 'indi-barrier' then
        indiclosure = 'Indi-Barrier'
		windower.send_command('input /echo [Def+] @ <me>')
	
	elseif command == 'indi-precision' then
        indiclosure = 'Indi-Precision'
		windower.send_command('input /echo [ACC / rACC+] @ <me>')
	
	elseif command == 'indi-voidance' then
        indiclosure = 'Indi-Voidance'
		windower.send_command('input /echo [EVA+] @ <me>')
	
	elseif command == 'indi-acumen' then
        indiclosure = 'Indi-Acumen'
		windower.send_command('input /echo [MAB+] @ <me>')
	
	elseif command == 'indi-fend' then
        indiclosure = 'Indi-Fend'
		windower.send_command('input /echo [MDB+] @ <me>')
	
	elseif command == 'indi-focus' then
        indiclosure = 'Indi-Focus'
		windower.send_command('input /echo [mACC+] @ <me>')
	
	elseif command == 'indi-attunement' then
        indiclosure = 'Indi-Attunement'
		windower.send_command('input /echo [mEVA+] @ <me>')
	
	elseif command == 'indi-str' then
        indiclosure = 'Indi-STR'
		windower.send_command('input /echo [STR+] @ <me>')
	
	elseif command == 'indi-dex' then
        indiclosure = 'Indi-DEX'
		windower.send_command('input /echo [DEX+] @ <me>')
	
	elseif command == 'indi-vit' then
        indiclosure = 'Indi-VIT'
		windower.send_command('input /echo [VIT+] @ <me>')
		
	elseif command == 'indi-agi' then
        indiclosure = 'Indi-AGI'
		windower.send_command('input /echo [AGI+] @ <me>')
	
	elseif command == 'indi-mnd' then
        indiclosure = 'Indi-MND'
		windower.send_command('input /echo [MND+] @ <me>')
	
	elseif command == 'indi-int' then
        indiclosure = 'Indi-INT'
		windower.send_command('input /echo [INT+] @ <me>')	
		
	elseif command == 'indi-chr' then
        indiclosure = 'Indi-CHR'
		windower.send_command('input /echo [CHR+] @ <me>')	
	
	--======Debuffs======--
	
	elseif command == 'indi-wilt' then
        indiclosure = 'Indi-Wilt'
		windower.send_command('input /echo [ATK-] @ <me>')
		
	elseif command == 'indi-frailty' then
        indiclosure = 'Indi-Frailty'
		windower.send_command('input /echo [DEF-] @ <me>')	
	
	elseif command == 'indi-slip' then
        indiclosure = 'Indi-Slip'
		windower.send_command('input /echo [ACC-] @ <me>')
		
	elseif command == 'indi-torpor' then
        indiclosure = 'Indi-Torpor'
		windower.send_command('input /echo [EVA-] @ <me>')

	elseif command == 'indi-fade' then
        indiclosure = 'Indi-Fade'
		windower.send_command('input /echo [MAB-] @ <me>')

	elseif command == 'indi-malaise' then
        indiclosure = 'Indi-Malaise'
		windower.send_command('input /echo [MDB-] @ <me>')

	elseif command == 'indi-vex' then
        indiclosure = 'Indi-Vex'
		windower.send_command('input /echo [mACC-] @ <me>')

	elseif command == 'indi-languor' then
        indiclosure = 'Indi-Languor'
		windower.send_command('input /echo [mEVA-] @ <me>')

	elseif command == 'indi-poison' then
        indiclosure = 'Indi-Poison'
		windower.send_command('input /echo [Poison] @ <me>')

	elseif command == 'indi-slow' then
        indiclosure = 'Indi-Slow'
		windower.send_command('input /echo [Slow] @ <me>')

	elseif command == 'indi-paralyze' then
        indiclosure = 'Indi-Paralyze'
		windower.send_command('input /echo [Paralyze] @ <me>')
	
	elseif command == 'indi-gravity' then
        indiclosure = 'Indi-Gravity'
		windower.send_command('input /echo [Gravity] @ <me>')		
  
	end
end)	

