Config = Config or {}

Config.ReloadTime = 3000

Config.DurabilityBlockedWeapons = {
    "weapon_stungun",
    "weapon_nightstick",
    "weapon_flashlight",
    "weapon_unarmed",
}

Config.DurabilityMultiplier = {
	-- Melee
	-- ['weapon_unarmed'] 				 = 0.05,
	['weapon_dagger'] 				 = 0.05,
	['weapon_bat'] 				 	 = 0.05,
	['weapon_bottle'] 				 = 0.05,
	['weapon_crowbar'] 				 = 0.05,
	-- ['weapon_flashlight'] 			 = 0.05,
	['weapon_golfclub'] 			 = 0.05,
	['weapon_hammer'] 				 = 0.05,
	['weapon_hatchet'] 				 = 0.05,
	['weapon_knuckle'] 				 = 0.05,
	['weapon_knife'] 				 = 0.05,
	['weapon_machete'] 				 = 0.05,
	['weapon_switchblade'] 			 = 0.05,
	-- ['weapon_nightstick'] 			 = 0.05,
	['weapon_wrench'] 				 = 0.05,
	['weapon_battleaxe'] 			 = 0.05,
	['weapon_poolcue'] 				 = 0.05,
	['weapon_briefcase'] 			 = 0.05,
	['weapon_briefcase_02'] 		 = 0.05,
	['weapon_garbagebag'] 			 = 0.05,
	['weapon_handcuffs'] 			 = 0.05,
	['weapon_bread'] 				 = 0.05,
	['weapon_stone_hatchet'] 		 = 0.05,

	-- Handguns
	['weapon_pistol'] 				 = 0.05,
	['weapon_pistol_mk2'] 			 = 0.05,
	['weapon_combatpistol'] 		 = 0.05,
	['weapon_appistol'] 			 = 0.05,
	-- ['weapon_stungun'] 				 = 0.05,
	['weapon_pistol50'] 			 = 0.05,
	['weapon_snspistol'] 			 = 0.05,
	['weapon_heavypistol'] 			 = 0.05,
	['weapon_vintagepistol'] 		 = 0.05,
	['weapon_flaregun'] 			 = 0.05,
	['weapon_marksmanpistol'] 		 = 0.05,
	['weapon_revolver'] 			 = 0.05,
	['weapon_revolver_mk2'] 		 = 0.05,
	['weapon_doubleaction'] 		 = 0.05,
	['weapon_snspistol_mk2'] 		 = 0.05,
	['weapon_raypistol'] 			 = 0.05,
	['weapon_ceramicpistol'] 		 = 0.05,
	['weapon_navyrevolver'] 		 = 0.05,
	['weapon_gadgetpistol'] 		 = 0.05,

	-- Submachine Guns
	['weapon_microsmg'] 			 = 0.05,
	['weapon_smg'] 				     = 0.05,
	['weapon_smg_mk2'] 				 = 0.05,
	['weapon_assaultsmg'] 			 = 0.05,
	['weapon_combatpdw'] 			 = 0.05,
	['weapon_machinepistol'] 		 = 0.05,
	['weapon_minismg'] 				 = 0.05,
	['weapon_raycarbine'] 			 = 0.05,

	-- Shotguns
	['weapon_pumpshotgun'] 			= 0.05,
	['weapon_sawnoffshotgun'] 		= 0.05,
	['weapon_assaultshotgun'] 		= 0.05,
	['weapon_bullpupshotgun'] 		= 0.05,
	['weapon_musket'] 				= 0.05,
	['weapon_heavyshotgun'] 		= 0.05,
	['weapon_dbshotgun'] 			= 0.05,
	['weapon_autoshotgun'] 			= 0.05,
	['weapon_pumpshotgun_mk2'] 		= 0.05,
	['weapon_combatshotgun'] 		= 0.05,

	-- Assault Rifles
	['weapon_assaultrifle'] 		= 0.05,
	['weapon_assaultrifle_mk2'] 	= 0.05,
	['weapon_carbinerifle'] 		= 0.05,
	['weapon_carbinerifle_mk2'] 	= 0.05,
	['weapon_advancedrifle'] 		= 0.05,
	['weapon_specialcarbine'] 		= 0.05,
	['weapon_bullpuprifle'] 		= 0.05,
	['weapon_compactrifle'] 		= 0.05,
	['weapon_specialcarbine_mk2'] 	= 0.05,
	['weapon_bullpuprifle_mk2'] 	= 0.05,
	['weapon_militaryrifle'] 		= 0.05,

	-- Light Machine Guns
	['weapon_mg'] 				    = 0.05, 
	['weapon_combatmg'] 			= 0.05,
	['weapon_gusenberg'] 			= 0.05,
	['weapon_combatmg_mk2'] 		= 0.05,

	-- Sniper Rifles
	['weapon_sniperrifle'] 			= 0.05,
	['weapon_heavysniper'] 			= 0.05,
	['weapon_marksmanrifle'] 		= 0.05,
	['weapon_remotesniper'] 		= 0.05,
	['weapon_heavysniper_mk2'] 		= 0.05,
	['weapon_marksmanrifle_mk2'] 	= 0.05,

	-- Heavy Weapons
	['weapon_rpg'] 				    = 0.05,
	['weapon_grenadelauncher'] 		= 0.05,
	['weapon_grenadelauncher_smoke']= 0.05,
	['weapon_minigun'] 				= 0.05,
	['weapon_firework'] 			= 0.05,
	['weapon_railgun'] 				= 0.05,
	['weapon_hominglauncher'] 		= 0.05,
	['weapon_compactlauncher'] 		= 0.05,
	['weapon_rayminigun'] 			= 0.05,

	-- Throwables
	['weapon_grenade'] 				= 0.05,
	['weapon_bzgas'] 				= 0.05,
	['weapon_molotov'] 				= 0.05,
	['weapon_stickybomb'] 			= 0.05,
	['weapon_proxmine'] 			= 0.05,
	['weapon_snowball'] 			= 0.05,
	['weapon_pipebomb'] 			= 0.05,
	['weapon_ball'] 				= 0.05,
	['weapon_smokegrenade'] 		= 0.05,
	['weapon_flare'] 				= 0.05,

	-- Miscellaneous
	['weapon_petrolcan'] 			= 0.05,
	['weapon_fireextinguisher'] 	= 0.05,
	['weapon_hazardcan'] 			= 0.05,
}

Config.WeaponRepairPoints = {
    [1] = {
        coords = vector3(964.02, -1267.41, 34.97),
        IsRepairing = false,
        RepairingData = {},
    },
    [2] = {
        coords = vector3(18.29, -1107.69, 29.8),
        IsRepairing = false,
        RepairingData = {},
    },
    [3] = {
        coords = vector3(-665.18, -937.24, 21.83),
        IsRepairing = false,
        RepairingData = {},
    },
    [4] = {
        coords = vector3(251.51, -46.19, 69.94),
        IsRepairing = false,
        RepairingData = {},
    },
    [5] = {
        coords = vector3(1692.8, 3756.24, 34.71),
        IsRepairing = false,
        RepairingData = {},
    },
    [6] = {
        coords = vector3(-331.29, 6080.32, 31.45),
        IsRepairing = false,
        RepairingData = {},
    }
}

Config.WeaponRepairCosts = {
    ["pistol"] = 1000,
    ["smg"] = 10000,
    ["mg"] = 25000,
    ["rifle"] = 50000,
    ["sniper"] = 100000,
}

WeaponAttachments = {
    -- PISTOLS
    ['WEAPON_PISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL_VARMOD_LUXE',
            item = 'pistol_luxuryfinish',
        },
    },
    ['WEAPON_COMBATPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_01',
            item = 'combatpistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_02',
            item = 'combatpistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER',
            item = 'combatpistol_luxuryfinish',
        },
    },
    ['WEAPON_APPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_01',
            item = 'appistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_02',
            item = 'appistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_APPISTOL_VARMOD_LUXE',
            item = 'appistol_luxuryfinish',
        },
    },
    ['WEAPON_PISTOL50'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_01',
            item = 'pistol50_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_02',
            item = 'pistol50_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL50_VARMOD_LUXE',
            item = 'pistol50_luxuryfinish',
        },
    },
    ['WEAPON_REVOLVER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_REVOLVER_CLIP_01',
            item = 'revolver_defaultclip',
        },
        ['vipvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_GOON',
            item = 'revolver_vipvariant',
            type = 'skin',
        },
        ['bodyguardvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_BOSS',
            item = 'revolver_bodyguardvariant',
            type = 'skin',
        },
    },
    ['WEAPON_SNSPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_01',
            item = 'snspistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_02',
            item = 'snspistol_extendedclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'COMPONENT_SNSPISTOL_VARMOD_LOWRIDER',
            item = 'snspistol_grip',
        },
    },
    ['WEAPON_HEAVYPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_01',
            item = 'heavypistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_02',
            item = 'heavypistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_HEAVYPISTOL_VARMOD_LUXE',
            item = 'heavypistol_grip',
        },
    },
    ['WEAPON_VINTAGEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_01',
            item = 'vintagepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_02',
            item = 'vintagepistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
            type = 'silencer',
        },
    },
    -- SMG'S
    ['WEAPON_MICROSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MICROSMG_VARMOD_LUXE',
            item = 'microsmg_luxuryfinish',
        },
    },
    ['WEAPON_SMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SMG_CLIP_01',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SMG_CLIP_02',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SMG_CLIP_03',
            item = 'smg_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO_02',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SMG_VARMOD_LUXE',
            item = 'smg_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_01',
            item = 'assaultsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_02',
            item = 'assaultsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER',
            item = 'assaultsmg_luxuryfinish',
        },
    },
    ['WEAPON_MINISMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_01',
            item = 'minismg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_02',
            item = 'minismg_extendedclip',
            type = 'clip',
        },
    },
    ['WEAPON_MACHINEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_01',
            item = 'machinepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_02',
            item = 'machinepistol_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_03',
            item = 'machinepistol_drum',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_COMBATPDW'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_01',
            item = 'combatpdw_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_02',
            item = 'combatpdw_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_03',
            item = 'combatpdw_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'combatpdw_grip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
    },
    -- SHOTGUNS
    ['WEAPON_PUMPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_SR_SUPP',
            item = 'shotgun_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER',
            item = 'pumpshotgun_luxuryfinish',
        },
    },
    ['WEAPON_SAWNOFFSHOTGUN'] = {
        ['luxuryfinish'] = {
            component = 'COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE',
            item = 'sawnoffshotgun_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_01',
            item = 'assaultshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_02',
            item = 'assaultshotgun_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_BULLPUPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_HEAVYSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_01',
            item = 'heavyshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_02',
            item = 'heavyshotgun_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_03',
            item = 'heavyshotgun_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_COMBATSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    -- RIFLES
    ['WEAPON_ASSAULTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_03',
            item = 'assaultrifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTRIFLE_VARMOD_LUXE',
            item = 'assaultrifle_luxuryfinish',
        },
    },
    ['WEAPON_CARBINERIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_01',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_02',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_03',
            item = 'carbinerifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_CARBINERIFLE_VARMOD_LUXE',
            item = 'carbinerifle_luxuryfinish',
        },
    },
    ['WEAPON_ADVANCEDRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_01',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_02',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE',
            item = 'advancedrifle_luxuryfinish',
        },
    },
    ['WEAPON_SPECIALCARBINE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_01',
            item = 'specialcarbine_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_02',
            item = 'specialcarbine_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_03',
            item = 'specialcarbine_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER',
            item = 'specialcarbine_luxuryfinish',
        },
    },
    ['WEAPON_BULLPUPRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    ['WEAPON_COMPACTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_01',
            item = 'compactrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_02',
            item = 'compactrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_03',
            item = 'compactrifle_drum',
            type = 'clip',
        },
    },
    ['WEAPON_HEAVYRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    -- MACHINE GUNS
    ['WEAPON_GUSENBERG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_01',
            item = 'gusenberg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_02',
            item = 'gusenberg_extendedclip',
            type = 'clip',
        },
    },
    -- LAUNCHERS
    ['WEAPON_EMPLAUNCHER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_EMPLAUNCHER_CLIP_01',
            item = 'emplauncher_defaultclip',
            type = 'clip',
        },
    },
    -- SNIPERS
    ['WEAPON_SNIPERRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNIPERRIFLE_CLIP_01',
            item = 'sniperrifle_defaultclip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
        ['grip'] = {
            component = 'COMPONENT_SNIPERRIFLE_VARMOD_LUXE',
            item = 'sniper_grip',
        },
    },
    ['WEAPON_HEAVYSNIPER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSNIPER_CLIP_01',
            item = 'heavysniper_defaultclip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
    },
    ['WEAPON_MARKSMANRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_01',
            item = 'marksmanrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_02',
            item = 'marksmanrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM',
            item = 'marksmanrifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MARKSMANRIFLE_VARMOD_LUXE',
            item = 'marksmanrifle_luxuryfinish',
        },
    },
}
