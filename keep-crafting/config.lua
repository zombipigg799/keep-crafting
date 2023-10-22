Config = Config or {}

Config.menu = 'qb-menu' -- keep-menu (recommended) / qb-menu

Config.model_loading = {
     timeout = 3500, --ms
     dealy = 50,     --ms
}

Config.MagicTouch = false

Config.categories = {
     ['misc'] = {
          key = 'misc',
          label = 'Misc',
          icon = 'fa-solid fa-tags',
          jobs = {},
     },
     ['weapons'] = {
          key = 'weapons',
          label = 'Weapons',
          icon = 'fa-solid fa-gun',
          jobs = {},
          sub_categories = {
               ['tools'] = {
                    label = 'Tools',
               },
               ['pistol'] = {
                    label = 'Pistol',
               },
               ['smg'] = {
                    label = 'SMG',
               },
          }
     },
     ['medical'] = {
          key = 'medical',
          label = 'Medical',
          icon = 'fa-solid fa-hand-holding-medical',
          jobs = {}
     },
     ['blueprints'] = {
          key = 'blueprints',
          label = 'Blueprints Craft',
          icon = 'fa-solid fa-file',
          jobs = {}
     },
}

Config.permanent_items = {
	 ['weapon_hammer'] = true
}

local misc_recipe = {
     ['repairkit'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Repair kit',
               -- icon = 'fa-solid fa-gun',
               object = {
                    name = 'prop_tool_box_04', -- <-- this model can fail to load
                    rotation = vector3(45.0, 0.0, -45.0)
               },
               image = 'repairkit', -- use inventory's images
               level = 40,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 30,
               materials = {
                    ["metalscrap"] = 20,
                    ["steel"] = 25,
					["iron"] = 15,
               },
               exp_per_craft = 10
          }
     },
	  ['electronickit'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Electronickit',
               image = 'electronickit', -- use inventory's images
               object = {
                    name = 'v_res_harddrive',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 320,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 80,
               amount = 3, -- crafted amount
               duration = 40,
               materials = {
			        ["screwdriverset"] = 1,
			        ["copper"] = 13, 
                    ["aluminum"] = 23,
                    ["plastic"] = 25,
					["metalscrap"] = 17,
					["rubber"] = 2,
               },
               exp_per_craft = 19
          }
     },
	 ['gatecrack'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Gatecrack',
               image = 'gatecrack', -- use inventory's images
               object = {
                    name = 'ch_prop_ch_usb_drive01x',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 1430,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 40,
               amount = 1, -- crafted amount
               duration = 50,
               materials = {
			       ["screwdriverset"] = 1,
			       ["electronickit"] = 4, 
                    ["aluminum"] = 20,
                    ["plastic"] = 19,
					["steel"] = 15,
               },
               exp_per_craft = 25
          }
     },
	 ['trojan_usb'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Trojan_Usb',
               image = 'trojan_usb', -- use inventory's images
               object = {
                    name = 'tr_prop_tr_usb_drive_01a',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 300,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 70,
               amount = 1, -- crafted amount
               duration = 50,
               materials = {
			       ["screwdriverset"] = 1,
			       ["electronickit"] = 2, 
                    ["plastic"] = 17,
					["steel"] = 5,
               },
               exp_per_craft = 2
          }
     },
     ['radio'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Radio',
               image = 'radio', -- use inventory's images
               object = {
                    name = 'v_serv_radio',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 50,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 80,
               amount = 1, -- crafted amount
               duration = 40,
               materials = {
			        ["electronickit"] = 1, 
                    ["aluminum"] = 20,
                    ["plastic"] = 35,
					["glass"] = 15,
					["rubber"] = 3,
               },
               exp_per_craft = 3
          }
     },
     ['lockpick'] = {
          categories = {
               main = 'misc',
          },
          item_settings = {
               label = 'Lockpick',
               image = 'lockpick', -- use inventory's images
               object = {
                    name = 'prop_tool_screwdvr01',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 30,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },
          },
          crafting = {
               show_level_in_mail = true,
               success_rate = 90,
               amount = 1, -- crafted amount
               duration = 5,
               materials = {
                     ["iron"] = 10,
                     ["metalscrap"] = 18,
                    ["weapon_hammer"] = 1,
               },
               exp_per_craft = 4
          }
     },
}

local medial = {
     ['bandage'] = {
          categories = {
               main = 'medical',
          },
          item_settings = {
               label = 'Bandage',
               image = 'bandage', -- use inventory's images
               level = 105,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },
               -- gang = {
               --      allowed_list = {},
               --      allowed_grades = {}
               -- }
          },
          crafting = {
               success_rate = 100,
               amount = 2, -- crafted amount
               duration = 30,
               materials = {
                    ["plastic"] = 5,
               },
               exp_per_craft = 4
          }
     },
	 ['firstaid'] = {
          categories = {
               main = 'medical',
          },
          item_settings = {
               label = 'Firstaid',
               image = 'firstaid', -- use inventory's images
               level = 725,
               object = {
                    name = 'v_ret_ta_firstaid',
                    rotation = vector3(0.0, 0.0, 0.0)
               },
               level = 130,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               },
          },
          crafting = {
               success_rate = 100,
               amount = 4, -- crafted amount
               duration = 42,
               materials = {
                    ["bandage"] = 35,
               },
               exp_per_craft = 8
          }
     },
}

local weapons_recipe = {
     ['weapon_handcuffs'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'Handcuffs',
               image = 'weapon_handcuffs', -- use inventory's images
               object = {
                    name = 'p_cs_cuffs_02_s',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 900,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 30,
               materials = {
                    ["steel"] = 20,
					['iron'] = 50,
					["weapon_hammer"] = 1,
               },
               exp_per_craft = 10
          }
     },
	  ['weapon_switchblade'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'SwitchBlade',
               image = 'weapon_switchblade', -- use inventory's images
               object = {
                    name = 'prop_knife',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 220,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 30,
               materials = {
                    ["steel"] = 15,
					['iron'] = 30,
					['plastic'] = 50,
					["weapon_hammer"] = 1,
					["screwdriverset"] = 1,
               },
               exp_per_craft = 18
          }
     },
	 ['weapon_knife'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'Knife',
               image = 'weapon_knife', -- use inventory's images
               object = {
                    name = 'prop_w_me_knife_01',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 320,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 30,
               materials = {
                    ["steel"] = 25,
					['iron'] = 40,
					['plastic'] = 60,
					["weapon_hammer"] = 1,
               },
               exp_per_craft = 12
          }
     },
	 ['weapon_bottle'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'Bottle',
               image = 'weapon_bottle', -- use inventory's images
               object = {
                    name = 'prop_w_me_bottle',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 250,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 60,
               amount = 1, -- crafted amount
               duration = 20,
               materials = {
                    ['glass'] = 120,
					["weapon_hammer"] = 1,
               },
               exp_per_craft = 9
          }
     },
	 ['weapon_bat'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'Bat',
               image = 'weapon_bat', -- use inventory's images
               object = {
                    name = 'p_cs_bbbat_01',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 270,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 60,
               amount = 1, -- crafted amount
               duration = 20,
               materials = {
                    ['aluminum'] = 150,
               },
               exp_per_craft = 16
          }
     },
	 ['weapon_golfclub'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'GolfClub',
               image = 'weapon_golfclub', -- use inventory's images
               object = {
                    name = 'prop_golf_pitcher_01',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 420,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 60,
               amount = 1, -- crafted amount
               duration = 20,
               materials = {
                    ['aluminum'] = 120,
					['rubber'] = 5,
               },
               exp_per_craft = 12
          }
     },
	  ['weapon_hammer'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'Hammer',
               image = 'weapon_hammer', -- use inventory's images
               object = {
                    name = 'v_ind_cs_hammer',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 290,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 60,
               amount = 1, -- crafted amount
               duration = 20,
               materials = {
                    ['iron'] = 110,
					['rubber'] = 2,
					['metalscrap'] = 20,
               },
               exp_per_craft = 10
          }
     },
	 ['weapon_knuckle'] = {
          categories = {
               sub = 'tools',
          },
          item_settings = {
               label = 'Hammer',
               image = 'weapon_knuckle', -- use inventory's images
               object = {
                    name = 'w_me_knuckle',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 290,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 60,
               amount = 1, -- crafted amount
               duration = 20,
               materials = {
                    ['iron'] = 60,
					['copper'] = 4,
					['metalscrap'] = 10,
					["weapon_hammer"] = 1,
               },
               exp_per_craft = 10
          }
     },
     ['pistol_ammo'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Pistol ammo',
               image = 'pistol_ammo', -- use inventory's images
               object = {
                    name = 'prop_ld_ammo_pack_01',
                    rotation = vector3(250.0, 0.0, 0.0)
               },
               level = 850,
               job = {
                    allowed_list = {},
                    allowed_grades = {}
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 30,
               materials = {
                    ["steel"] = 10,
					['copper'] = 30,
					['metalscrap'] = 40,
               },
               exp_per_craft = 15
          }
     },
     ['weapon_pistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Walther P99',
               image = 'weapon_pistol', -- use inventory's images
               object = {
                    name = 'w_pi_pistol50',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 6550,
               job = {
                    allowed_list = { 'lostmc' },
                    allowed_grades = { ['lostmc'] = { 3,} }
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["aluminum"] = 180,
                    ["steel"] = 20,
                    ["rubber"] = 10,
					["screwdriverset"] = 1,
               },
               exp_per_craft = 50
          }
     },
     ['weapon_combatpistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Combat Pistol',
               image = 'weapon_combatpistol', -- use inventory's images
               object = {
                    name = 'w_pi_combatpistol',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 8600,
               job = {
                    allowed_list = { 'lostmc' },
                    allowed_grades = { ['lostmc'] = { 3,} }
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 70,
               materials = {
                    ["aluminum"] = 200,
                    ["steel"] = 40,
                    ["rubber"] = 10,
					["screwdriverset"] = 1,
               },
               exp_per_craft = 140
          }
     },
     ['weapon_appistol'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'AP Pistol',
               image = 'weapon_appistol', -- use inventory's images
               object = {
                    name = 'w_pi_appistol',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 9900,
               job = {
                    allowed_list = { 'cartel' },
                    allowed_grades = { ['cartel'] = { 3,} }
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["aluminum"] = 230,
                    ["steel"] = 120,
                    ["rubber"] = 6,
					["screwdriverset"] = 1,
               },
               exp_per_craft = 50
          }
     },
     ['pistol_suppressor'] = {
          categories = {
               sub = 'pistol',
          },
          item_settings = {
               label = 'Pistol suppressor',
               image = 'pistol_suppressor', -- use inventory's images
               object = {
                    name = 'w_at_ar_supp_02',
                    rotation = vector3(45.0, 0.0, 0.0)
               },
               level = 10025,
               hide_until_reaches_level = true,
               job = {
                    allowed_list = { 'cartel' },
                    allowed_grades = { ['cartel'] = { 3,} }
               }
          },
          crafting = {
               success_rate = 100,
               amount = 1, -- crafted amount
               duration = 60,
               materials = {
                    ["metalscrap"] = 50,
                    ["steel"] = 60,
                    ["rubber"] = 30,
               },
               exp_per_craft = 5
          }
     },
}

Config.workbench_default_model = 'gr_prop_gr_bench_04a'

Config.workbenches = {
     -- -- items
     {
          table_model = "gr_prop_gr_bench_04b",
          coords = vector3(1346.55, 4391.04, 43.36),
          item_show_case_offset = vector3(0.0, 0.0, 1.3),
          rotation = vector3(0.0, 0.0, 350),
          -- just use either job or gang using both at same time won't work.
          job = {
               allowed_list = { 'lostmc' },
               allowed_grades = { ['lostmc'] = { 1, 2, 3,} }
          },
          -- gang = {
          --      allowed_list = { 'ballas' },
          --      allowed_grades = { ['ballas'] = { 1, 2, 3, 4 } }
          -- },
          categories = { Config.categories.blueprints, Config.categories.misc, Config.categories.medical },
          recipes = { misc_recipe, medial },
          radius = 3.0
     },
     {
          table_model = 'gr_prop_gr_bench_04b',
          coords = vector3(1852.06, 3768.6, 32.16),
          rotation = vector3(0.0, 0.0, 32.49),
          job = {
               allowed_list = { 'cartel' },
               allowed_grades = { ['cartel'] = { 1, 2, 3,} }
          },
          categories = { Config.categories.blueprints, Config.categories.misc, Config.categories.medical },
          recipes = { misc_recipe, medial },
          radius = 3.0
     },
     {
          table_model = 'gr_prop_gr_bench_02b',
          coords = vector3(2939.04, 4623.81, 47.72),
          item_show_case_offset = vector3(0.0, 0.0, 1.2),
          rotation = vector3(0.0, 0.0, 47.0),
          gang = {
               allowed_list = { 'ballas' },
               allowed_grades = { ['ballas'] = { 1, 2, 3, 4 } }
          },
          categories = { Config.categories.weapons },
          recipes = { weapons_recipe },
          radius = 3.0
     },
}

--gr_prop_gr_jailer_keys_01a

-- gr_prop_gr_missle_long
-- gr_prop_gr_missle_short
-- gr_int02_generator_01
-- gr_prop_gr_hammer_01

-- w_sr_heavysnipermk2_mag2
-- w_sb_smgmk2_mag2
-- w_sb_smgmk2_mag1
-- w_pi_pistolmk2_mag1
-- w_mg_combatmgmk2_mag1
-- w_ar_carbineriflemk2_mag1
-- w_ar_assaultriflemk2_mag1
-- w_ex_vehiclemissile_3
-- w_ex_vehiclemissile_1
-- w_ex_vehiclemissile_2
-- w_ex_vehiclemortar

-- w_sg_pumpshotgunmk2_mag1
-- w_sg_pumpshotgunh4_mag1
-- gr_prop_gr_adv_case

-- w_at_pi_flsh_2
-- w_at_afgrip_2
-- w_at_muzzle_1
-- w_at_muzzle_3
-- w_at_muzzle_2
-- w_at_muzzle_5
-- w_at_muzzle_6
-- w_at_muzzle_7
-- w_at_muzzle_8
-- w_at_muzzle_9

-- w_at_pi_comp_1
-- w_at_pi_rail_1
-- w_at_scope_macro_2_mk2
-- w_at_scope_small_mk2
-- w_at_scope_medium_2
-- w_at_scope_nv
-- w_at_sights_1
-- w_at_sights_smg
-- w_at_sr_supp3


-- gr_prop_gr_drill_01a

-- gr_prop_gr_driver_01a
-- gr_prop_gr_pliers_01
-- gr_prop_gr_pliers_02
-- gr_prop_gr_rasp_01
-- gr_prop_gr_rasp_02
-- gr_prop_gr_rasp_03
-- gr_prop_gr_sdriver_01
-- gr_prop_gr_sdriver_02
-- gr_prop_gr_sdriver_03

-- gr_prop_gr_vice_01a
