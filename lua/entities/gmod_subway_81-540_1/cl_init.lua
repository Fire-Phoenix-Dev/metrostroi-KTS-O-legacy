--------------------------------------------------------------------------------
-- All the models, materials, sounds belong to their corresponding authors. Permission is granted to only distribute these models through Garry's Mod Steam Workshop and the official Metrostroi GitHub accounts for use with Garry's Mod and Metrostroi Subway Simulator.
--
-- It is forbidden to use any of these models, materials, sounds and other content for any commercial purposes without an explicit permission from the authors. It is forbidden to make any changes in these files in any derivative projects without an explicit permission from the author.
--
-- The following models are (C) 2015-2018 oldy (Aleksandr Kravchenko). All rights reserved.
-- models\metrostroi_train\81-502:
-- - 81-502  (Ema-502 head)
-- - 81-501  (Em-501 intermediate)
-- models\metrostroi_train\81-702:
-- - 81-702  (D head)
-- - 81-702  (D intermediate)
-- models\metrostroi_train\81-703:
-- - 81-703  (E head)
-- - 81-508  (E intermediate)
-- models\metrostroi_train\81-707:
-- - 81-707  (Ezh head)
-- - 81-708  (Ezh1 intermediate)
-- models\metrostroi_train\81-710:
-- - 81-710  (Ezh3 head)
-- - 81-508T (Em-508T intermediate)
-- models\metrostroi_train\81-717:
-- - 81-717  (Moscow head)
-- - 81-714  (Moscow intermediate)
-- - 81-717  (St. Petersburg head)
-- - 81-714  (St. Petersburg intermediate)
-- models\metrostroi_train\81-718:
-- - 81-718  (TISU head)
-- - 81-719  (TISU intermediate)
-- models\metrostroi_train\81-720:
-- - 81-720  (Yauza head)
-- - 81-721  (Yauza intermediate)
-- - 81-722  (Yubileyniy head)
-- models\metrostroi_train\81-722:
-- - 81-723  (Yubileyniy intermediate motor)
-- - 81-724  (Yubileyniy intermediate trailer)
--------------------------------------------------------------------------------
include("shared.lua")

--------------------------------------------------------------------------------
ENT.ClientProps = {}
ENT.ButtonMap = {}
ENT.AutoAnims = {}
ENT.ClientSounds = {}

local pult = Vector(18.082,6.7,-2.48)
ENT.ClientProps["int1"] = {
    model = "models/metrostroi_train/81-5401/5401_int1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["int2"] = {
    model = "models/metrostroi_train/81-5401/5401_int2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}

ENT.ClientProps["RedLightL"] = {
    model = "models/metrostroi_train/81-5401/5401_redlight_left.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["RedLightR"] = {
    model = "models/metrostroi_train/81-5401/5401_redlight_right.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}

ENT.ClientProps["Headlight1"] = {
    model = "models/metrostroi_train/81-5401/5401_headlights1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["Headlight2"] = {
    model = "models/metrostroi_train/81-5401/5401_headlights2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
--[[
ENT.ClientProps["cube"] = {
    model = "models/hunter/blocks/cube025x025x025.mdl",
    pos = Vector(435, 0, 30),
    ang = Angle(0,0,0),    
}
]]


ENT.ClientProps["cab1"] = {
    model = "models/metrostroi_train/81-5401/5401_cab1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["cab2"] = {
    model = "models/metrostroi_train/81-5401/5401_cab2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}

ENT.ClientProps["underwagon1"] = {
    model = "models/metrostroi_train/81-5401/5401_underwagon1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["underwagon2"] = {
    model = "models/metrostroi_train/81-5401/5401_underwagon2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}

--[[
ENT.ClientProps["ext1"] = {
    model = "models/metrostroi_train/81-5401/5401_ext1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
]]

ENT.ClientProps["ext2"] = {
    model = "models/metrostroi_train/81-5401/5401_ext2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}

--[[
ENT.ClientProps["schemes"] = {
    model = "models/metrostroi_train/81-717/labels/schemes.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
    callback = function(ent)
        ent.PassSchemesDone = false
    end,
}
]]

ENT.ClientProps["sosd_lamp"] = {
    model = "models/metrostroi_train/81-717/sosd_lamp.mdl",
    pos = Vector(4.43,2.15,0),
    ang = Angle(0,0,0),
    hide=2,
}

ENT.ClientProps["door_otsek1"] = {
    model = "models/metrostroi_train/81-5401/5401_int_cover1.mdl",--models/metrostroi_train/81-717/door_otsek1.mdl",
    pos = Vector(0,0,0),--Vector(375.35,-15.324,5.167),
    ang = Angle(0,0,0),--Angle(0,-90,0),
    hideseat=1.7,
}
ENT.ClientProps["door_otsek2"] = {
    model = "models/metrostroi_train/81-5401/5401_int_cover2.mdl",--model = "models/metrostroi_train/81-717/door_otsek2.mdl",
    pos = Vector(0,0,0),--Vector(375.35,-59.65,5.167),
    ang = Angle(0,0,0),--Angle(0,-90,0),
    hideseat=1.7,
}
--[[
ENT.ClientProps["cap_l"] = {
    model = "models/metrostroi_train/81-717/couch_cap_r.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=0.8,
}
]]
ENT.ClientProps["door1"] = {
    model = "models/metrostroi_train/81-5401/5401_ext_door2.mdl", --"models/metrostroi_train/81-717/door_torec_spb.mdl",
    pos = Vector(-469.82,18.52,-1.15),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["door2"] = {
    model = "models/metrostroi_train/81-5401/5401_int_door1.mdl",
    pos = Vector(377.222,28.867,-2.1),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["door_int_seat"] = {
    model = "models/metrostroi_train/81-5401/5401_int_door_seat.mdl",
    pos = Vector(379.08,44.85,-13.92),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["door3"] = {
    model = "models/metrostroi_train/81-5401/5401_ext_door1.mdl",
    pos = Vector(415.16,63.2,-0.4),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["door_cab_seat"] = {
    model = "models/metrostroi_train/81-5401/5401_int_door_seat.mdl",
    pos = Vector(430.2,59.42,-14.42),
    ang = Angle(0,-98.3,0),
    hide=2,
}

ENT.ClientProps["Controller_body"] = {
    model = "models/metrostroi_train/81-717/pult/body_spb_yellow.mdl",
    pos = pult,
    ang = Angle(0,0,0),
    hide=2.5,
}
ENT.ClientProps["Controller_panel_new"] = {
    model = "models/metrostroi_train/81-717/pult/pult_spb_yellow.mdl",
    pos = pult,
    ang = Angle(0,0,0),
    color=Color(255,235,230),
    hideseat=1,
}
ENT.ClientProps["SPBARS"] = {
    model = "models/metrostroi_train/81-5401/5401_cab_ars_panel.mdl",
    pos = Vector(0,0,0),--pult,
    ang = Angle(0,0,0),
    hideseat=1,
}
ENT.ClientProps["Controller"] = {
    model = "models/metrostroi_train/81-5401/5401_grkv.mdl",--"models/metrostroi_train/81-717/kv_white.mdl",
    pos = Vector(0,0,0),--Vector(435.848,16.1,-19.779+4.75)+pult,
    ang = Angle(0,0,0),--Angle(0,-90,-32),
    hideseat=1,
}



ENT.ButtonMap["Block5_6"] = {
    pos = Vector(455.0-6,12.3,2.5-10.5+5.35)+pult,--446 -- 14 -- -0,5
    ang = Angle(0,-90,44),
    width = 480,
    height = 225,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {   ID = "R_VPRToggle",x=80,y=34,radius=13,tooltip="",model = {
            model = "models/metrostroi_train/81-502/buttons/tumbler_w_a.mdl",ang = 180,z=-5,
            var="R_VPR",speed=16,
            plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=90,x=1,y=-24,z=2,var="R_VPRPl",ID="R_VPRPl",},
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {   ID = "R_GToggle",x=107,y=34,radius=13,tooltip="",model = {
            model = "models/metrostroi_train/81-502/buttons/tumbler_w_a.mdl",ang = 180,z=-5,
            var="R_G",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {   ID = "R_UPOToggle",x=134,y=34,radius=13,tooltip="",model = {
            model = "models/metrostroi_train/81-502/buttons/tumbler_w_a.mdl",ang = 180,z=-5,
            var="R_UPO",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},

        {   ID = "KVTSet",x=248,y=38,radius=20,tooltip="",model = {
                model = "models/metrostroi_train/81-710/ezh3_button_red.mdl",z = -3,
                var="KVT",speed=16,vmin=1,vmax=0,
                sndvol = 0.07,snd = function(val) return val and "button1_on" or "button1_off" end,
                sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "VZ1Set",x=374,y=38,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="VZ1",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button2_on" or "button2_off" end,
            sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "!SPLight",x=411,y=38,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-5401/5401_cab_slc77.mdl",ignorepanel = true,z=-4,
            lamp = {model = "models/metrostroi_train/81-5401/5401_slc77_emmisive.mdl",var="LSP",color=Color(255,25,40),z=20.7,}            
        }},        
        {ID = "!OhSigLamp",x=440,y=38,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-5401/5401_cab_slc77.mdl",ignorepanel = true,z=-4,
            lamp = {model = "models/metrostroi_train/81-5401/5401_slc77_emmisive.mdl",var="OhSigLamp",color=Color(255,25,40),z=20.7,}            
        }},

        --{ID = "AutodriveToggle",x=420,y=92,radius=20,tooltip=""},
        {ID = "VUD1Toggle",x=62,y=101,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",z=-5,ang=0,
            var="VUD1",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "KDLSet",x=62,y=173,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-502/buttons/button_717_3.mdl",
            var="KDL",speed=16,vmin=1,vmax=0,z=-2,
            lamp = {model = "models/metrostroi_train/81-717/buttons/lamp_button_1.mdl",anim=true,var="DoorsLeftL",speed=9,z=2.2,color=Color(255,130,80)},
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "KDLKToggle",x=42,y=183,w=40,h=20,tooltip="",model = {
            var="KDLK",speed=8,min=0.32,max=0.68,disable="KDLSet",
            model = "models/metrostroi_train/81/krishka.mdl",ang = 0,z = -3,
            sndvol = 1,snd = function(val) return val and "kr_close" or "kr_open" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "KDLRSet",x=155,y=173,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-502/buttons/button_717_3.mdl",
            var="KDLR",speed=16,vmin=1,vmax=0,z=-2,
            lamp = {model = "models/metrostroi_train/81-717/buttons/lamp_button_1.mdl",anim=true,var="DoorsLeftL",speed=9,z=2.2,color=Color(255,130,80)},
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "KDLRKToggle",x=135,y=183,w=40,h=20,tooltip="",model = {
            model = "models/metrostroi_train/81/krishka.mdl",ang = 0,z = -3,
            var="KDLRK",speed=8,min=0.32,max=0.68,disable="KDLRSet",
            sndvol = 1,snd = function(val) return val and "kr_close" or "kr_open" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},

        {ID = "DoorSelectToggle",x=107,y=184,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-8,
            var="DoorSelect",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "KRZDSet",x=153,y=85,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="KRZD",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "VozvratRPSet",x=107,y=134,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="VozvratRP",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button1_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "!GreenRPLight",x=155,y=130,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-5401/5401_cab_slc77.mdl",ignorepanel = true,z=-4,
            lamp = {model = "models/metrostroi_train/81-5401/5401_slc77_emmisive.mdl",var="GRP",color=Color(100,255,100),z=20.7,}
        }},
        
        {ID = "!BUR",x=247,y=84,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-5401/5401_cab_slc77.mdl",ignorepanel = true,z=-4,color=Color(40,40,40),
            lamp = {model = "models/metrostroi_train/81-5401/5401_slc77_emmisive.mdl",var="BUR",color=Color(255,195,70),z=20.7,}            
        }},           

        {ID = "!RZPLight",x=269,y=136,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-5401/5401_cab_slc77.mdl",ignorepanel = true,z=-4,
            lamp = {model = "models/metrostroi_train/81-5401/5401_slc77_emmisive.mdl",var="RZP",color=Color(255,25,40),z=20.7,}
        }},
        {ID = "!LKVPLight",x=374,y=100,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-5401/5401_cab_slc77.mdl",ignorepanel = true,z=-4,
            lamp = {model = "models/metrostroi_train/81-5401/5401_slc77_emmisive.mdl",var="LKVP",color=Color(255,155,70),z=20.7,}
        }},

        {ID = "ConverterProtectionSet",x=332,y=133,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_metal.mdl",z=-3,
            var="ConverterProtection",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "KSNSet",x=372,y=133,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z=-3,
            var="KSN",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button2_on" or "button1_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "RingSet",x=417,y=133,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_metal.mdl",z=-3,
            var="Ring",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button2_on" or "button2_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},

        {ID = "!VPA1",x=240,y=137,radius=0,model = {
            model = "models/metrostroi_train/81-502/buttons/tumbler_b_a.mdl",ang = 180,z=-3,
            getfunc = function(ent) return ent:GetPackedBool("VPAOn") and 1 or (ent:GetPackedBool("VPAOff") and 0 or 0.5) end,
            var="VPA",speed=16,
        }},
        {ID = "VPAOnSet",x=240-10,y=137-20,w=20,h=20,tooltip="",model = {
            var="VPAOn",sndid = "!VPA1",
            sndvol = 0.5,snd = function(val) return val and "triple_0-down" or "triple_down-0" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
            noTooltip=false,states={"Train.Buttons.0","Train.Buttons.On"}
        }},
        {ID = "VPAOffSet",x=240-10,y=137,w=20,h=20,tooltip="",model = {
            var="VPAOff",sndid = "!VPA1",
            sndvol = 0.5,snd = function(val) return val and "triple_0-up" or "triple_up-0" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
            noTooltip=false,states={"Train.Buttons.0","Train.Buttons.Off"}
        }},



        {ID = "OVTToggle",x=240,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",z=-8,ang=180,
            var="OVT",speed=16,max=0,min=1,
            plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=90,x=1,y=-24,z=3,var="OVTPl",ID="OVTPl",},
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "OtklAVUToggle",x=279,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",z=-8,ang=180,
            var="OtklAVU",speed=16,
            plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=270,x=-1,y=24,z=3,var="OtklAVUPl",ID="OtklAVUPl",},
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "!AVULight",x=332,y=100,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-5401/5401_cab_slc77.mdl",ignorepanel = true,z=-4,color=Color(104,30,30),
            lamp = {model = "models/metrostroi_train/81-5401/5401_slc77_emmisive.mdl",var="AVU",color=Color(255,25,40),z=20.7,}
        }},
        {ID = "L_1Toggle",x=316,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",z=-8,ang=180,
            var="L_1",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "L_2Toggle",x=354,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",z=-8,ang=180,
            var="L_2",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "L_3Toggle",x=392,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",z=-8,ang=180,
            var="L_3",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "OhrSigToggle",x=430,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",z=-8,ang=180,
            var="OhrSig",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        
    }
}

ENT.ButtonMap["Block7"] = {
    pos = Vector(446.22,-17.6,-5.48+5.35)+pult,
    ang = Angle(0,-90,58),
    width = 195,
    height = 240,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "L_4Toggle",x=43,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-4,
            var="L_4",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "VUSToggle",x=76,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-4,
            var="VUS",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "VADToggle",x=109,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-4,
            var="VAD",speed=16,
            plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=270,x=-1,y=28,z=4,var="VADPl",ID="VADPl",},
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "VAHToggle",x=142,y=181,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-4,
            var="VAH",speed=16,
            plomb = {model = "models/metrostroi_train/81/plomb.mdl",ang=270,x=-1,y=28,z=4,var="VAHPl",ID="VAHPl",},
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},

        {ID = "KRPSet",x=40,y=40,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl",
            var="KRP",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button1_on" or "button1_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "RezMKSet",x=40,y=95,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",
            var="RezMK",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},


        {ID = "KDPSet",x=101,y=127,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-502/buttons/button_717_3.mdl",
            lamp = {model = "models/metrostroi_train/81-717/buttons/lamp_button_1.mdl",anim=true,var="DoorsRightL",speed=9,z=2.2,color=Color(255,130,80)},
            var="KDP",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "KDPKToggle",x=81,y=137,w=40,h=20,tooltip="",model = {
            model = "models/metrostroi_train/81/krishka.mdl",ang = 0,z = -1,
            var="KDPK",speed=8,min=0.33,max=0.68,disable="KDPSet",
            getfunc = function(ent) return ent:GetPackedBool("KDPK") and 1 or math.max(0,(ent.Anims["VADToggle"].val-0.5)*2 or 0)*0.16 end,
            sndvol = 1,snd = function(val,realval) return val and "kr_close" or "kr_open" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "!2:PNT",x=144,y=133,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-5401/5401_cab_slc77.mdl",ignorepanel = true,z=-2,
            lamp = {model = "models/metrostroi_train/81-5401/5401_slc77_emmisive.mdl",var="PN",color=Color(255,195,70),z=20.7,}
        }},        
    }
}

ENT.ButtonMap["KTSOScreen"] = {
    pos = Vector(446.78,-51.25,26.73),
    ang = Angle(0,-174,90),
    width = 320,
    height = 240,
    scale = 0.02,
    hideseat=0.2,
}

ENT.ButtonMap["KTSOButtons"] = {
    pos = Vector(446.2,-51.15,21.88),
    ang = Angle(0,-175,90),
    width = 85,
    height = 20,
    scale = 0.065,
    hideseat=0.2,

    buttons = {
		{ID = "KTSO_MenuSet",x=5, y=5, w=9, h=9, tooltip="КТС-О: Меню", model = {
			z=1,ang=Angle(-90,0,0),
			var = "KTSO_Menu",
		}},
		{ID = "KTSO_UpSet",x=26.5, y=5, w=9, h=9, tooltip="КТС-О: Вверх", model = {
			z=1,ang=Angle(-90,0,0),
			var = "KTSO_Up",
		}},
		{ID = "KTSO_DownSet",x=48, y=5, w=9, h=9, tooltip="КТС-О: Вниз", model = {
			z=1,ang=Angle(-90,0,0),
			var = "KTSO_Down",
		}},
		{ID = "KTSO_EnterSet",x=70, y=5, w=9, h=9, tooltip="КТС-О: Выбор", model = {
			z=1,ang=Angle(-90,0,0),
			var = "KTSO_Enter",
		}},
    }
}
ENT.ButtonMap["KTSPSButton"] = {
    pos = Vector(409.35,-32.5,-14.86),
    ang = Angle(0,90,90),
    width = 18,
    height = 18,
    scale = 0.065,
    hideseat=0.2,

    buttons = {
		{ID = "KTSO_PSet",x=5, y=5, w=9, h=9, tooltip="КТС-О: Подтверждение", model = {
            model = "models/kts_0/kts_0_button.mdl",ang = Angle(0,-90,0),z = -1,scale=1.33,
			var = "KTSO_P",
		}},
    }
}

ENT.ButtonMap["RVSScreen"] = {
    pos = Vector(466.58,-26.63,5.33),
    ang = Angle(0,-115.3,90),
    width = 256,
    height = 140,
    scale = 0.0138,
	hideseat=0.2,
	system = "RVS",
}
ENT.ButtonMap["RVSButtons"] = {
    pos = Vector(468,-22.63,6.97),
    ang = Angle(0,-115,90),
    width = 400,
    height = 150,
    scale = 0.03,
	hideseat=0.2,
	buttons = {	
		{ID = "RVS_KVSet",x=26, y=32, w=30, h=20, tooltip="КВ", model = {
			z=1,ang=Angle(-90,0,0),
			lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="RVSKV", ang=90,color=Color(187,255,91),x=31,y=8,z=-5},
			var = "RVS_KV",speed=12, --vmin=0, vmax=0.9
		}},
		{ID = "!RVS_KVLamp",x=26, y=32, model = {
			z=1,ang=Angle(-90,0,0),
			lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="RVSKVPRD", ang=90,color=Color(255,56,30),x=46,y=6,z=-5},
		}},		
		{ID = "RVS_UKVSet",x=26, y=124, w=30, h=20, tooltip="УКВ", model = {
			z=1,ang=Angle(-90,0,0),
			lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="RVSUKV", ang=90,color=Color(187,255,91),x=31,y=8,z=-5},
			var = "RVS_UKV",speed=12, --vmin=0, vmax=0.9
		}},		
		{ID = "!RVS_UKVLamp",x=26, y=120, model = {
			z=1,ang=Angle(-90,0,0),
			lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="RVSUKVPRD", ang=90,color=Color(255,56,30),x=46,y=6,z=-5},
		}},			
		
		
		{ID = "RVS_SSet",x=300, y=42, radius = 15, tooltip="С", model = {
			z=1,ang=Angle(-90,0,0),
			lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="RVSPRD", ang=90,color=Color(187,255,91),x=17,y=0,z=-5},
			var = "RVS_S",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_FSet",x=104, y=42, radius = 15, tooltip="F", model = {
			z=1,ang=Angle(-90,0,0),
			--lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="IGLA:ButtonL1", ang=90,color=Color(187,255,91),x=0,y=-5.5,z=0},
			var = "RVS_F",speed=12, --vmin=0, vmax=0.9
		}},			
		
		
		{ID = "RVS_1Set",x=298, y=79, radius = 12, tooltip="1", model = {
			z=1,ang=Angle(-90,0,0),
			lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="RVS1", ang=90,color=Color(187,255,91),x=0,y=-12,z=-5},
			var = "RVS_1",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_2Set",x=323, y=79, radius = 12, tooltip="2", model = {
			z=1,ang=Angle(-90,0,0),
			lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="RVS2", ang=90,color=Color(187,255,91),x=0,y=-12,z=-5},
			var = "RVS_2",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_3Set",x=348, y=79,radius = 12, tooltip="3", model = {
			z=1,ang=Angle(-90,0,0),
			lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="RVS3", ang=90,color=Color(187,255,91),x=0,y=-12,z=-5},
			var = "RVS_3",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_4Set",x=298, y=99, radius = 12, tooltip="4", model = {
			z=1,ang=Angle(-90,0,0),
			--lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="IGLA:ButtonL1", ang=90,color=Color(187,255,91),x=0,y=-5.5,z=0},
			var = "RVS_4",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_5Set",x=323, y=99, radius = 12, tooltip="5", model = {
			z=1,ang=Angle(-90,0,0),
			--lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="IGLA:ButtonL1", ang=90,color=Color(187,255,91),x=0,y=-5.5,z=0},
			var = "RVS_5",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_6Set",x=348, y=99, radius = 12, tooltip="6", model = {
			z=1,ang=Angle(-90,0,0),
			--lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="IGLA:ButtonL1", ang=90,color=Color(187,255,91),x=0,y=-5.5,z=0},
			var = "RVS_6",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_7Set",x=298, y=115, radius = 12, tooltip="7", model = {
			z=1,ang=Angle(-90,0,0),
			--lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="IGLA:ButtonL1", ang=90,color=Color(187,255,91),x=0,y=-5.5,z=0},
			var = "RVS_7",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_8Set",x=323, y=115, radius = 12, tooltip="8", model = {
			z=1,ang=Angle(-90,0,0),
			--lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="IGLA:ButtonL1", ang=90,color=Color(187,255,91),x=0,y=-5.5,z=0},
			var = "RVS_8",speed=12, --vmin=0, vmax=0.9
		}},	
		{ID = "RVS_9Set",x=348, y=115, radius = 12, tooltip="9", model = {
			z=1,ang=Angle(-90,0,0),
			--lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="IGLA:ButtonL1", ang=90,color=Color(187,255,91),x=0,y=-5.5,z=0},
			var = "RVS_9",speed=12, --vmin=0, vmax=0.9
		}},		
		{ID = "RVS_0Set",x=323, y=130, radius = 12, tooltip="0", model = {
			z=1,ang=Angle(-90,0,0),
			--lamp = {speed=16,model = "models/metrostroi_train/common/lamps/svetodiod1.mdl", var="IGLA:ButtonL1", ang=90,color=Color(187,255,91),x=0,y=-5.5,z=0},
			var = "RVS_0",speed=12, --vmin=0, vmax=0.9
		}},			
	}	
}
ENT.ButtonMap["ECRSScreen"] = {
    pos = Vector(468.78,-25.27,13.2),
    ang = Angle(0,-115.5,90),
    width = 57,
    height = 44,
    scale = 0.012,
    hideseat=0.2,
}
ENT.ClientProps["ecrs_light"] = {
    model = "models/metrostroi_train/81-5401/5401_cab_ecrs_light.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=1,
}
ENT.ButtonMap["Motorolla"] = {
    pos = Vector(470.12,-22.1,13.8),
    ang = Angle(0,-115.5,90),
    width = 180,
    height = 60,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        --[[
		{ID = "!LPM", x=174.2, y=30.3, radius=5, tooltip="Лампа питания Мотороллы", model = {
            lamp = {model = "models/metrostroi_train/81-502/lamps/svetodiod_small_502.mdl",scale=1,ang = Angle(0,0,0),z=-4.1,color = Color(45,255,45), var="MTGreen"}
        }},
        {ID = "!LPM2", x=174.2, y=30.3, radius=5, tooltip="Лампа питания Мотороллы", model = {
            lamp = {model = "models/metrostroi_train/81-502/lamps/svetodiod_small_502.mdl",scale=1,ang = Angle(0,0,0),z=-4.1,color = Color(255,20,20), var="MTRed"}
        }},
        ]]
		--[[
        {ID = "MotorollaPodsvetka", x=89.5, y=31, radius=0, tooltip="", model = {
            lamp = {model = "models/metrostroi_train/81-5402/light_ecrs_5p.mdl",scale=1.008,ang = Angle(90,293,180),z=0,var="MTLight"}
        }},
        ]]
		{ID = "ECRS_CancelSet",x=125, y=15, radius = 8, tooltip="Отмена/Вкл./Выкл.", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_Cancel",speed=12,
		}},				
		{ID = "ECRS_BRTSet",x=165, y=50, radius = 4.5, tooltip="Яркость", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_BRT",speed=12,
		}},
        --[[{ID = "ECRS_MuteSet",x=165-12, y=50, radius = 4.5, tooltip="Микр-н выкл.", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_Mute",speed=12,
        }},
        {ID = "ECRS_upSet",x=117.2+11/2, y=25, radius = 3.5, tooltip="Вверх", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_up",speed=12,
        }},]]
        {ID = "ECRS_F1Set",x=112, y=18.5, radius = 4.5, tooltip="Отмена", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_F1",speed=12,
        }}, 
        {ID = "ECRS_F2Set",x=112, y=18.5+25, radius = 4,5, tooltip="Выбор", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_F2",speed=12,
        }}, 
        --[[{ID = "ECRS_downSet",x=117.2+11/2, y=30.5+5.5, radius = 3.5, tooltip="Вниз", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_down",speed=12,
        }}, ]]
        {ID = "ECRS_leftSet",x=117.2, y=30.5, radius = 3.5, tooltip="Влево", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_left",speed=12,
        }}, 
        --[[{ID = "ECRS_MenuSet",x=117.2-7, y=30.5, radius = 3.5, tooltip="Меню", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_Menu",speed=12,
        }}, ]]
        {ID = "ECRS_rightSet",x=117.2+11, y=30.5, radius = 3.5, tooltip="Вправо", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_right",speed=12,
        }}, 
        --[[{ID = "ECRS_1Set",x=143+10*0, y=12, radius = 4, tooltip="1", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_1",speed=12,
        }}, 
		{ID = "ECRS_2Set",x=143+10*1, y=12, radius = 4, tooltip="2", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_2",speed=12,
		}},	
		{ID = "ECRS_3Set",x=143+10*2, y=12,radius = 4, tooltip="3", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_3",speed=12,
		}},	
		{ID = "ECRS_4Set",x=143+10*0, y=12+9*1, radius = 4, tooltip="4", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_4",speed=12,
		}},	
		{ID = "ECRS_5Set",x=143+10*1, y=12+9*1, radius = 4, tooltip="5", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_5",speed=12,
		}},	
		{ID = "ECRS_6Set",x=143+10*2, y=12+9*1, radius = 4, tooltip="6", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_6",speed=12,
		}},	
		{ID = "ECRS_7Set",x=143+10*0, y=12+9*2, radius = 4, tooltip="7", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_7",speed=12,
		}},	
		{ID = "ECRS_8Set",x=143+10*1, y=12+9*2, radius = 4, tooltip="8", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_8",speed=12,
		}},	
		{ID = "ECRS_9Set",x=143+10*2, y=12+9*2, radius = 4, tooltip="9", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_9",speed=12,
		}},		
		{ID = "ECRS_0Set",x=143+10*1, y=12+9*3, radius = 4, tooltip="0", model = {
			z=1,ang=Angle(-90,0,0),
			var = "ECRS_0",speed=12,
		}},
        {ID = "ECRS_StarSet",x=143+10*0, y=12+9*3, radius = 4, tooltip="*", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_Star",speed=12,
        }},
        {ID = "ECRS_SharpSet",x=143+10*2, y=12+9*3, radius = 4, tooltip="#", model = {
            z=1,ang=Angle(-90,0,0),
            var = "ECRS_Sharp",speed=12,
        }},]]
    }
}

-- BPSN panel
ENT.ButtonMap["Block1"] = {
    pos = Vector(450.4,28.2,1.3+5.35)+pult,
    ang = Angle(0,-90,58),
    width = 290,
    height = 120,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "ARS13Set",x=79,y=80,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_red.mdl",z = -2,
            var="ARS13",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button1_on" or "button2_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},    
        {ID = "!BatteryVoltage",x=220,y=60,tooltip="",radius=60},
        {ID = "VMKToggle",x=38,y=30,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-5,
            var="VMK",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "BPSNonToggle",x=79,y=30,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-5,
            var="BPSNon",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}


ENT.ClientProps["uss_lamps1"] = {
    model = "models/metrostroi_train/81-717/lamps_nvl1.mdl",
    pos = Vector(-0.15,0,0.4)+pult,
    ang = Angle(0,0,0),
    hideseat=1,
}
ENT.ButtonMap["Block3"] = {
    pos = Vector(450.4,-10,1.3+5.35)+pult,
    ang = Angle(0,-90,58),
    width = 290,
    height = 110,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "!BLTLPressure", x=62, y=55, radius=55, tooltip=""},
        {ID = "!BCPressure", x=182, y=55, radius=55, tooltip=""},
        {ID = "!NMPressureLow", x=134.5, y=90, radius=8, tooltip="", model = {
            lamp = {model = "models/metrostroi_train/81-502/lamps/svetodiod_small_502.mdl",z = -3.2,color = Color(255,50,45), var="NMLow"}
        }},
        {ID = "!UAVATriggered", x=255.5, y=92.1, radius=8, tooltip="", model = {
            lamp = {model = "models/metrostroi_train/81-502/lamps/svetodiod_small_502.mdl",z = -3.2,color = Color(255,50,45), var="UAVATriggered"}
        }},
    }
}
ENT.ButtonMap["Block2"] = {
    pos = Vector(450.4+0.35,10.0,1.3+5.35)+pult,
    ang = Angle(0,-90,58),
    width = 300,
    height = 110,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "!Speedometer1",x=137,y=29,w=17,h=25,tooltip="",model = {
            name="SSpeed2",model = "models/metrostroi_train/81-717/segments/segment_spb.mdl",color=Color(175,250,20),skin=0,z=-0.1,ang=Angle(0,0,-90),
        }},
        {ID = "!Speedometer2",x=158,y=29,w=17,h=25,tooltip="",model = {
            name="SSpeed1",model = "models/metrostroi_train/81-717/segments/segment_spb.mdl",color=Color(175,250,20),skin=0,z=-0.1,ang=Angle(0,0,-90),
        }},

        {ID = "!ARSOch",x=100,y=33,w=10,h=10,tooltip="",model = {
            name="SAOCh",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_ra.mdl",z=-0.2,var="AR04"},
        }},
        {ID = "!ARS0",x=89,y=33+10.9*0,w=10,h=10,tooltip="",model = {
            name="SA0",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_ra.mdl",z=-0.2,var="AR0"},
        }},
        {ID = "!ARS40",x=89,y=33+10.9*1,w=10,h=10,tooltip="",model = {
            name="SA40",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_ya.mdl",z=-0.2,var="AR40"},
        }},
        {ID = "!ARS60",x=89,y=33+10.9*2,w=10,h=10,tooltip="",model = {
            name="SA60",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_ya.mdl",z=-0.2,color=Color(175,250,20),var="AR60"},
        }},
        {ID = "!ARS70",x=89,y=33+10.9*3,w=10,h=10,tooltip="",model = {
            name="SA70",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_ya.mdl",z=-0.2,color=Color(175,250,20),var="AR70"},
        }},
        {ID = "!ARS80",x=89,y=33+10.9*4,w=10,h=10,tooltip="",model = {
            name="SA80",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_ya.mdl",z=-0.2,color=Color(175,250,20),var="AR80"},
        }},

        {ID = "!LampLSD1",x=191.0,y=34.2,w=10,h=4,tooltip="",model = {
            name="SSD1",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",z=-0.2,color=Color(175,250,20),var="SD"},
        }},
        {ID = "!LampLSD2",x=201.2,y=34.2,w=10,h=4,tooltip="",model = {
            name="SSD2",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",z=-0.2,ang=90,color=Color(175,250,20),var="SD"},
        }},

        {ID = "!LampLVD",x=191.3,y=43.8+8.8*0,w=10,h=4,tooltip="",model = {
            name="SVD",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",var="A04",z=-0.2,color=Color(175,250,20),var="VD"},
        }},
        {ID = "!LampLHRK",x=191.3,y=43.8+8.8*1,w=10,h=4,tooltip="",model = {
            name="SRK",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",z=-0.2,var="HRK"},
        }},
        {ID = "!LampLST",x=191.3,y=43.8+8.8*2,w=10,h=4,tooltip="",model = {
            name="SST",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",z=-0.2,var="ST"},
        }},
        {ID = "!LampPA",x=191.3,y=43.8+8.8*3,w=10,h=4,tooltip="",model = {
            name="SPA",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",z=-0.2,color=Color(175,250,20),var="PAPower"},
        }},


        {ID = "!LampRP",x=209.8,y=43.9+8.8*0,w=10,h=4,tooltip="",model = {
            name="SRP",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_rb.mdl",z=-0.2,var="RP"},
        }},
        {ID = "!LampLSN",x=219.8,y=43.9+8.8*0,w=10,h=4,tooltip="",model = {
            name="SSN",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_rb.mdl",z=-0.2,ang=-90,var="SN"},
        }},

        --{x=2031 + 2*0,y=223 + 192*0,w=10,h=10,tooltip="",radius=10},
        {ID = "!LampLKVD",x=219,y=43.8+8.8*1,w=10,h=4,tooltip="",model = {
            name="SKVD",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",z=-0.2,var="KVD"},
        }},
        {ID = "!LampLKT",x=219,y=43.8+8.8*2,w=10,h=4,tooltip="",model = {
            name="SKT",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",z=-0.2,var="KT"},
        }},
        {ID = "!LampDV",x=219,y=43.8+8.8*3,w=10,h=4,tooltip="",model = {
            name="SDV",lamp = {speed=10,model = "models/metrostroi_train/81-717/lamps/lamp_panelspb_yb.mdl",z=-0.2,color=Color(175,250,20),var="DV"},
        }},
    }
}
ENT.ClientProps["pam"] = {
    model = "models/metrostroi_train/81-5401/5401_pampanel.mdl",
    pos = pult + Vector(-0.2,0,0),-- Vector(18.18-0.2,6.6,-2.47),--Vector(454.172425-6,0.080645,0.967742-5.4),
    ang = Angle(0,0,0),
    hideseat=0.8,
}
ENT.ButtonMap["PAM"] = {
    --pos = Vector(455.22,-34.35,24.15-13),
    pos = Vector(445.3-4.7-0.2,27.1,-9.3)+pult,
    ang = Angle(0,-90,58),
    --pos = ENT.ClientProps["pam"].pos+Vector(0.72,4.65,-9.85),
    --ang = ENT.ClientProps["pam"].ang,
    width = 265,
    height = 20,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "KSZDSet",x=163,y=10,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -2,
            var="KSZD",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button2_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},

        {ID = "VZPToggle",x=190,y=10,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-502/buttons/tumbler_b_a.mdl",ang = 180,z=0,
            var="VZP",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
    }
}
ENT.ButtonMap["PAM1"] = {
    --pos = Vector(455.22-6,-34.35-8.5,24.15),
    pos = Vector(445.3-0.2,27.1,-2)+pult,
    ang = Angle(0,-90,58),
    width = 40,
    height = 135,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {

        {ID = "PAMPSet",x=6.9+13.45*2,y=23,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_p.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_p.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAMP",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},

        {ID = "PAMFSet",x=6.9+13.45*0,y=49+13*0,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_f.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_f.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAMF",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAMUpSet",x=6.9+13.45*1,y=49+13*0,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_up.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_up.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAMUp",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAMMSet",x=6.9+13.45*2,y=49+13*0,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_m.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_m.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAMM",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        --[=[ {ID = "PAMLeftSet",x=6.9+13.45*0,y=49+13*1,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_left.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_left.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAMLeft",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},--]=]
        {ID = "PAMLeftSet",x=6.9+13.45*0,y=49+13*1,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_left.mdl",ang = 0,z=2.65,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_left.mdl",z=-0.2-2.65,anim=true,var="PAPower" },
            var="PAMLeft",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAMDownSet",x=6.9+13.45*1,y=49+13*1,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_down.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_down.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAMDown",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAMRightSet",x=6.9+13.45*2,y=49+13*1,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_right.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_right.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAMRight",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},


        {ID = "PAM1Set",x=6.9+13.45*0,y=86+12.9*0,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_1.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_1.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM1",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM2Set",x=6.9+13.45*1,y=86+12.9*0,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_2.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_2.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM2",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM3Set",x=6.9+13.45*2,y=86+12.9*0,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_3.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_3.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM3",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM4Set",x=6.9+13.45*0,y=86+12.9*1,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_4.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_4.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM4",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM5Set",x=6.9+13.45*1,y=86+12.9*1,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_5.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_5.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM5",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM6Set",x=6.9+13.45*2,y=86+12.9*1,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_6.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_6.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM6",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM7Set",x=6.9+13.45*0,y=86+12.9*2,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_7.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_7.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM7",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM8Set",x=6.9+13.45*1,y=86+12.9*2,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_8.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_8.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM8",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM9Set",x=6.9+13.45*2,y=86+12.9*2,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_9.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_9.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM9",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAMEscSet",x=6.9+13.45*0,y=86+12.9*3,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_esc.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_esc.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAMEsc",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAM0Set",x=6.9+13.45*1,y=86+12.9*3,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_0.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_0.mdl",z=-0.2,anim=true,var="PAPower" },
            var="PAM0",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID = "PAMEnterSet",x=6.9+13.45*2,y=86+12.9*3,radius=8,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons_pam/pam_enter.mdl",ang = 0,z=0,
            lamp = {speed=12,model = "models/metrostroi_train/81-717/buttons_pam/pamlamp_enter.mdl",z=2.4,anim=true,var="PAPower" },
            var="PAMEnter",speed=16,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
    }
}
ENT.ButtonMap["PAMScreen"] = {
    --pos = Vector(455.15,-34.35,24.15),
    pos = Vector(445.029-0.2,22.95,-1.84)+pult,
    ang = Angle(0,-90,58),
    width = 640,
    height = 480,
    scale = 0.025/1.9,
    sensor = true,
    system = "PAM",

    hideseat=0.2,
    hide=true,
}

    
local plombed = {A41Toggle=true,AISToggle=true}
ENT.ButtonMap["AV"] = {
    pos = Vector(405.5,-52.9+0.75,32.5),
    ang = Angle(0,90,90),
    width = 398,
    height = 358,
    scale = 0.0631,
    hide=0.8,

    buttons = {
        {ID = "A11Toggle",x=29.3*0,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A17Toggle",x=29.3*1,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A44Toggle",x=29.3*2,y=154*0,w=25,h=45,tooltip=""},
        --{ID = "A58Toggle",x=29.3*3,y=154*0,w=25,h=45,tooltip=""},
        --{ID = "A59Toggle",x=29.3*4,y=154*0,w=25,h=45,tooltip=""},
        --{ID = "A61Toggle",x=29.3*5,y=154*0,w=25,h=45,tooltip=""},
        {ID = "P:A58Toggle",x=29.3*3,y=154*0,w=25,h=45,tooltip=""},
        {ID = "P:A59Toggle",x=29.3*4,y=154*0,w=25,h=45,tooltip=""},
        {ID = "P:A61Toggle",x=29.3*5,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A21Toggle",x=29.3*6,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A49Toggle",x=29.3*7,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A27Toggle",x=29.3*8,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A10Toggle",x=29.3*9,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A53Toggle",x=29.3*10,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A54Toggle",x=29.3*11,y=154*0,w=25,h=45,tooltip=""},
        {ID = "A84Toggle",x=29.3*12,y=154*0,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A78Toggle",x=29.3*0,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A48Toggle",x=29.3*1,y=154*1,w=25,h=45,tooltip=""},
        {ID = "ABKToggle",x=29.3*2,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A29Toggle",x=29.3*3,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A46Toggle",x=29.3*4,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A47Toggle",x=29.3*5,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A43Toggle",x=29.3*6,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A42Toggle",x=29.3*7,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A74Toggle",x=29.3*8,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A73Toggle",x=29.3*9,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A71Toggle",x=29.3*10,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A41Toggle",x=29.3*11,y=154*1,w=25,h=45,tooltip=""},
        {ID = "A45Toggle",x=29.3*12,y=154*1,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A75Toggle",x=29.3*0,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A8Toggle",x=29.3*1,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A52Toggle",x=29.3*2,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A72Toggle",x=29.3*3,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A31Toggle",x=29.3*4,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A32Toggle",x=29.3*5,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A13Toggle",x=29.3*6,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A1Toggle",x=29.3*7,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A20Toggle",x=29.3*8,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A25Toggle",x=29.3*9,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A30Toggle",x=29.3*10,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A56Toggle",x=29.3*11,y=154*2,w=25,h=45,tooltip=""},
        {ID = "A65Toggle",x=29.3*12,y=154*2,w=25,h=45,tooltip=""},
    }
}
for i,button in pairs(ENT.ButtonMap.AV.buttons) do
    button.model = {
        model = "models/metrostroi_train/81-720/button_av1.mdl",z=-25,
        var=button.ID:gsub("Toggle",""):gsub("[^:]+:",""),speed=8,
        sndvol = 0.8,snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
    }
    if plombed[button.ID] then
        button.model.plomb = {model = "models/metrostroi_train/81/plomb_b.mdl",ang=Angle(0,25,45),x=19,y=-30,z=24,var=button.ID:Replace("Toggle","Pl"), ID=button.ID:Replace("Toggle","Pl"),}
    end
end
ENT.ButtonMap["AV_S"] = {
    pos = Vector(392,-33,-20),
    ang = Angle(0,270,90),
    width = 275,
    height = 165,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "A2Toggle",x=25*0,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A3Toggle",x=25*1,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A4Toggle",x=25*2,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A5Toggle",x=25*3,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A6Toggle",x=25*4,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A70Toggle",x=25*5,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A14Toggle",x=25*6,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A39Toggle",x=25*7,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A28Toggle",x=25*8,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A38Toggle",x=25*9,y=60*0,w=25,h=45,tooltip=""},
        {ID = "A22Toggle",x=25*10,y=60*0,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A12Toggle",x=25*0,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A16Toggle",x=25*1,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A37Toggle",x=25*2,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A51Toggle",x=25*3,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A24Toggle",x=25*4,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A19Toggle",x=25*5,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A18Toggle",x=25*7,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A40Toggle",x=25*8,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A15Toggle",x=25*9,y=60*1,w=25,h=45,tooltip=""},
        {ID = "A50Toggle",x=25*10,y=60*1,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "AISToggle",x=25*2,y=60*2,w=25,h=45,tooltip=""},
        {ID = "AV3Toggle",x=25*3,y=60*2,w=25,h=45,tooltip=""},
        {ID = "AV1Toggle",x=25*4,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A55Toggle",x=25*5,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A57Toggle",x=25*6,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A60Toggle",x=25*7,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A7Toggle",x=25*8,y=60*2,w=25,h=45,tooltip=""},
        {ID = "A9Toggle",x=25*9,y=60*2,w=25,h=45,tooltip=""},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_S.buttons) do
    button.model = {
        model = "models/metrostroi_train/81-720/button_av1.mdl",z=-25,
        var=button.ID:Replace("Toggle",""),speed=8,
        sndvol = 0.8,snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
    }
    if plombed[button.ID] then
        button.model.plomb = {model = "models/metrostroi_train/81/plomb_b.mdl",ang=Angle(0,45,90),x=0,y=-37,z=32,var=button.ID:Replace("Toggle","Pl"), ID=button.ID:Replace("Toggle","Pl"),}
    end
end
ENT.ButtonMap["Battery"] = {
    pos = Vector(407.18,-54.25,4),
    ang = Angle(0,90,90),
    width = 440,
    height = 157,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "RC1Toggle",x=64,y=40,radius=40,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_rc1.mdl",z=17,ang=180,
            var="RC1",speed=0.5,vmin=1,vmax=0.87,
            plomb = {model = "models/metrostroi_train/81/plomb_b.mdl",ang=230,x=-28,y=28,var="RC1Pl",ID="RC1Pl",z=-15,},
            sndvol = 0.8,snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "VBToggle",x=220,y=40,radius=40,tooltip="",model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_vb.mdl",z=17,ang=180,
            var="VB",speed=0.5,vmin=1,vmax=0.87,
            sndvol = 0.8,snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["SOSD"] = {
    pos = Vector(407.1,-61.38,19.8),
    ang = Angle(0,90,90),
    width = 70,
    height = 200,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "VSOSDToggle",x=35, y=50,radius=25,tooltip="",model = {
            model = "models/metrostroi_train/81-502/buttons/tumbler_b_a.mdl",ang = 180,z=0,
            var="VSOSD",speed=16,--min=1,max=0,
            sndvol = 1,snd = function(val) return val and "switchbl_on" or "switchbl_off" end,
        }},
        {ID="PVK-",x=0, y=125, w=35,h=62, tooltip=""},
        {ID = "!PVK",x=35,y=156,model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_common001.mdl",ang = 180,z=17,
            getfunc = function(ent) return ent:GetPackedRatio("PVK") end, var="PVK",speed=4,min=1,max=0.75,
            sndvol = 1,snd = function(val,val2) return "pvk"..val2 end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID="PVK+",x=35, y=125, w=35,h=62, tooltip=""},        
    }
}

-- Train driver helpers panel
ENT.ButtonMap["HelperPanel"] = {
    pos = Vector(458.03,56.5,-13.93),
    ang = Angle(0,-9,90),
    width = 120,
    height = 80,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        
        {ID = "VOPDSet",x=18.5,y=0,w=40,h=73,tooltip="",model = {
            model = "models/metrostroi_train/switches/vudbrown.mdl",z=-15,
            var="VOPD",speed=6,
            sndvol = 1,snd = function(val) return val and "vu224_on" or "vu224_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "VDLSet",x=74,y=0,w=40,h=73,tooltip="",model = {
            model = "models/metrostroi_train/switches/vudbrown.mdl",z=-15,
            var="VDL",speed=6,
            sndvol = 1,snd = function(val) return val and "vu224_on" or "vu224_off" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},        
    }
}
ENT.ButtonMap["SOPD"] = {
    pos = Vector(451.815,55.4,-10.58),
    ang = Angle(0,-10,90),
    width = 40,
    height = 40,
    scale = 0.05,
    hideseat = 0.2,

    buttons = {
        {ID = "!SOPD", x=20,y=20, radius=20, tooltip="", model = {
            lamp = {speed=16,model = "models/metrostroi_train/81-502/lamps/lamp_w_502.mdl",z = -7.6, scale = 0.42, ang=Angle(2,-8.5,0), color=Color(0,100,255) , var="SOPD"}
        }},
	}
}
ENT.ButtonMap["BURPower"] = {
    pos = Vector(461.815,7.5,-20.58),
    ang = Angle(0,0,-90),
    width = 40,
    height = 40,
    scale = 0.05,
    hideseat = 0.2,

    buttons = {
        {ID = "!BURPower", x=20,y=20, radius=20, tooltip="", model = {
            lamp = {speed=16,model = "models/metrostroi_train/81-502/lamps/lamp_w_502.mdl",z = -7.6, scale = 0.42, ang=Angle(2,-8.5,0), color=Color(0,255,0) , var="BUR"}
        }},
	}
}
ENT.ButtonMap["KTSPower"] = {
    pos = Vector(437.35,-51.6,27.958),
    ang = Angle(0,6,-90),
    width = 40,
    height = 40,
    scale = 0.05,
    hideseat = 0.2,

    buttons = {
        {ID = "!KTSPower",        x=20,y=20, radius=20, tooltip="", model = {
            lamp = {speed=16,model = "models/metrostroi_train/81-502/lamps/lamp_w_502.mdl",z = -7.6, scale = 0.42, ang=Angle(2,-8.5,0), color=Color(255,0,0) , var="KTS_Power"}
        }},
	}
}
ENT.ButtonMap["VideoPower"] = {
    pos = Vector(451.735,-54.66,40.22),
    ang = Angle(0,12,-90),
    width = 40,
    height = 40,
    scale = 0.05,
    hideseat = 0.2,

    buttons = {
        {ID = "!VideoPower",        x=20,y=20, radius=20, tooltip="", model = {
            lamp = {speed=16,model = "models/metrostroi_train/81-502/lamps/lamp_w_502.mdl",z = -7.6, scale = 0.3, ang=Angle(2,-8.5,0), color=Color(0,255,0) , var="BURPower"}
        }},
	}
}
--[[
-- Pneumatic instrument panel
ENT.ButtonMap["PneumaticPanels"] = {
    pos = Vector(459.6,-9.0,13.4),
    ang = Angle(0,-90,56.5),
    width = 310,
    height = 120,
    scale = 0.0625,

    buttons = {
        {ID = "!CylinderPressure",x=200,y=55,radius=55,tooltip=""},
        {ID = "!LinePressure",x=65,y=55,radius=55,tooltip=""},
    }
}--]]
ENT.ButtonMap["ParkingBrake"] = {
    pos = Vector(436,-52,-25),
    ang = Angle(90,90,0),
    width = 200,
    height = 120,
    scale = 0.0625,

    buttons = {
        {ID = "ParkingBrakeToggle",x=0,y=0,w=200,h=120,tooltip="",model = {
            var="ParkingBrake",sndid="parking_brake",
            sndvol = 1,snd = function(val) return "disconnect_valve" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}

ENT.ClientProps["reverser"] = {
    model = "models/metrostroi_train/reversor/reversor_classic.mdl",
    pos = Vector(436.5,-29.4,-14.7)+pult,
    ang = Angle(-90-22,180,90),
    hideseat=0.2,
    modelcallback = function(ent)
        return ent.HasGoldenReverser and "models/metrostroi_train/reversor/reversor_gold.mdl" or "models/metrostroi_train/reversor/reversor_classic.mdl"
    end,
}
ENT.ClientProps["krureverser"] = {
    model = "models/metrostroi_train/reversor/reversor_classic.mdl",
    pos = Vector(443.8,-24.5,-3.2)+pult,
    ang = Angle(0,-90,60),
    hideseat=0.2,
    modelcallback = function(ent)
        return ent.HasGoldenReverser and "models/metrostroi_train/reversor/reversor_gold.mdl" or "models/metrostroi_train/reversor/reversor_classic.mdl"
    end,
}

ENT.ClientProps["Dest"] = {
    model = "models/spb/dest_spb.mdl",
    pos = Vector(429,-60.236,-12.8),
    ang = Angle(0,8,0),
    hideseat=1.0,
	callback = function(ent,cl_ent)
        cl_ent:SetSkin(ent:GetNW2Int("Dest",0))
        --print(cl_ent:SkinCount())
	end,
}

ENT.ButtonMap["HVMeters_N"] = {
    pos = Vector(472.8,-24.6,19.95),
    ang = Angle(0,-110,90),
    width = 145,
    height = 45,
    scale = 0.0625,

    buttons = {
        {ID = "!HighVoltage", x=0, y=0, w=65, h=45, tooltip=""},
        {ID = "!EnginesCurrent", x=75, y=0, w=70, h=45, tooltip=""},
    }
}

-- UAVA
ENT.ButtonMap["UAVAPanel"] = {
    pos = Vector(426,-57,-20.0),
    ang = Angle(0,180,90),
    width = 180,
    height = 200,
    scale = 0.0625,

    buttons = {
        {ID = "UAVAToggle",x=0, y=0, w=60, h=200, tooltip="", model = {
            plomb = {var="UAVAPl", ID="UAVAPl",},
            var="UAVA",
            sndid="UAVALever",sndvol = 1, snd = function(val) return val and "uava_on" or "uava_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "UAVAContactSet",x=60, y=0, w=120, h=200, tooltip=""},
    }
}
ENT.ClientProps["UAVALever"] = {
    model = "models/metrostroi_train/81-703/cabin_uava.mdl",
    pos = Vector(425,-57.2,-26.4),
    ang = Angle(3,-180,0),
    hideseat=0.2,
}

ENT.ButtonMap["Stopkran"] = {
    pos = Vector(400,62,9),
    ang = Angle(0,0,90),
    width = 150,
    height = 450,
    scale = 0.1/2,
    buttons = {
        {ID = "EmergencyBrakeValveToggle",x=0,y=0,w=150,h=450,tooltip=""},
    }
}
ENT.ClientProps["stopkran"] = {
    model = "models/metrostroi_train/81-5401/5401_int_stopcrane.mdl",
    pos = Vector(406.33,62.6,7.65),
    ang = Angle(0,0,0),
    hideseat=0.2,
}
ENT.ClientSounds["EmergencyBrakeValve"] = {{"stopkran",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}


ENT.ButtonMap["DoorCrane1"] = {
    pos = Vector(60,-62,24),
    ang = Angle(0,180,90),
    width = 200,
    height = 500,
    scale = 0.1/2,
    buttons = {
        {ID = "DoorCrane1Toggle",x=0,y=0,w=200,h=500,tooltip=""},
    }
}
ENT.ClientProps["doorcrane1"] = {
    model = "models/metrostroi_train/81-5401/5401_int_doorcrane.mdl",
    pos = Vector(52.93,-62.41,21.45),
    ang = Angle(0,180,0),
    hideseat=0.2,
}
ENT.ButtonMap["DoorCrane2"] = {
    pos = Vector(-290,-62,24),
    ang = Angle(0,180,90),
    width = 200,
    height = 500,
    scale = 0.1/2,
    buttons = {
        {ID = "DoorCrane2Toggle",x=0,y=0,w=200,h=500,tooltip=""},
    }
}
ENT.ClientProps["doorcrane2"] = {
    model = "models/metrostroi_train/81-5401/5401_int_doorcrane.mdl",
    pos = Vector(-297.23,-62.41,21.45),
    ang = Angle(0,180,0),
    hideseat=0.2,
}
ENT.ButtonMap["DoorCrane3"] = {
    pos = Vector(-305,62,24),
    ang = Angle(0,0,90),
    width = 200,
    height = 500,
    scale = 0.1/2,
    buttons = {
        {ID = "DoorCrane3Toggle",x=0,y=0,w=200,h=500,tooltip=""},
    }
}
ENT.ClientProps["doorcrane3"] = {
    model = "models/metrostroi_train/81-5401/5401_int_doorcrane.mdl",
    pos = Vector(-297.28,62.41,21.45),
    ang = Angle(0,0,0),
    hideseat=0.2,
}


ENT.ButtonMap["CabCover"] = {
    pos = Vector(408,-9,7),
    ang = Angle(0,90,90),
    width = 450,
    height = 100,
    scale = 0.05,
    buttons = {
        {ID = "cab_cover1",x=0,y=0,w=450,h=100,tooltip=""},
    }
}
ENT.ClientProps["cab_cover1"] = {
    model = "models/metrostroi_train/81-5401/5401_cab_cover1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=1,
}
ENT.ButtonMap["CabinFusePanel"] = {
    pos = Vector(403.83,-6.2,2.44),
    ang = Angle(0,90,90),
    width = 300,
    height = 300,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
		{ ID = "P_11Toggle",x=0,y=100,w=40,h=100,tooltip=""},
        { ID = "P_11KToggle",x=0,y=0,w=40,h=100,tooltip="",model = {
            model = "models/metrostroi_train/81-5402/BP15.mdl",ang =90,x=-1,y=45,z=-2,
            var="P_11K",min=1,max=0,speed=2,scale = 0.85,disable="P_11Toggle",
        }},    
		{ ID = "P_1Toggle",x=42,y=100,w=40,h=100,tooltip=""},
        { ID = "P_1KToggle",x=42,y=0,w=40,h=100,tooltip="",model = {
            model = "models/metrostroi_train/81-5402/BP15.mdl",ang =90,x=-1,y=45,z=-2,
            var="P_1K",min=1,max=0,speed=2,scale = 0.85,disable="P_1Toggle",
        }},  
		{ ID = "P_5Toggle",x=42*2,y=100,w=40,h=100,tooltip=""},
        { ID = "P_5KToggle",x=42*2,y=0,w=40,h=100,tooltip="",model = {
            model = "models/metrostroi_train/81-5402/BP15.mdl",ang =90,x=-1,y=45,z=-2,
            var="P_5K",min=1,max=0,speed=2,scale = 0.85,disable="P_5Toggle",
        }},  
		{ ID = "P_6Toggle",x=42*3,y=100,w=40,h=100,tooltip=""},
        { ID = "P_6KToggle",x=42*3,y=0,w=40,h=100,tooltip="",model = {
            model = "models/metrostroi_train/81-5402/BP15.mdl",ang =90,x=-1,y=45,z=-2,
            var="P_6K",min=1,max=0,speed=2,scale = 0.85,disable="P_6Toggle",
        }},  
		-- { ID = "P_0Toggle",x=42*4,y=100,w=40,h=100,tooltip=""},
        { ID = "P_0KToggle",x=42*4,y=0,w=40,h=100,tooltip="",model = {
            model = "models/metrostroi_train/81-5402/BP15.mdl",ang =90,x=-1,y=45,z=-2,
            var="P_0K",speed=2,scale = 0.85,
        }},  
		-- { ID = "P_00Toggle",x=42*5,y=100,w=40,h=100,tooltip=""},
        { ID = "P_00KToggle",x=42*5,y=0,w=40,h=100,tooltip="",model = {
            model = "models/metrostroi_train/81-5402/BP15.mdl",ang =90,x=-1,y=45,z=-2,
            var="P_00K",speed=2,scale = 0.85,
        }},          
    }
}
ENT.ClientProps["P_11"] = {
    model = "models/metrostroi_train/81-5402/BP15_sg.mdl",
    pos = ENT.ButtonMap["CabinFusePanel"].pos + Vector(1.5,1.18,-6),
    ang = Angle(90,0,0),
    hideseat=0.2,
	scale=0.85,
}
ENT.ClientProps["P_1"] = {
    model = "models/metrostroi_train/81-5402/BP15_sg.mdl",
    pos = ENT.ButtonMap["CabinFusePanel"].pos + Vector(1.5,1.18+2.62*1,-6),
    ang = Angle(90,90,0),
    hideseat=0.2,
	scale=0.85,
}
ENT.ClientProps["P_5"] = {
    model = "models/metrostroi_train/81-5402/BP15_sg.mdl",
    pos = ENT.ButtonMap["CabinFusePanel"].pos + Vector(1.5,1.18+2.62*2,-6),
    ang = Angle(90,0,0),
    hideseat=0.2,
	scale=0.85,
}
ENT.ClientProps["P_6"] = {
    model = "models/metrostroi_train/81-5402/BP15_sg.mdl",
    pos = ENT.ButtonMap["CabinFusePanel"].pos + Vector(1.5,1.18+2.62*3,-6),
    ang = Angle(90,0,0),
    hideseat=0.2,
	scale=0.85,
}
--[[
ENT.ClientProps["Fuse2"] = {
    model = "models/metrostroi_train/81-5402/BP15_sg.mdl",
    pos = ENT.ButtonMap["CabinFusePanel"].pos + Vector(-3.8,1.5,-6),
    ang = Angle(90,0,0),
    hideseat=0.2,
	scale=0.85,
}
]]

ENT.ButtonMap["HeadlightsFusePanel"] = {
    pos = Vector(472.75,43.1,-37),
    ang = Angle(0,-90,90),
    width = 40,
    height = 200,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
		{ ID = "P_29Toggle",x=0,y=100,w=40,h=100,tooltip=""},
        { ID = "P_29KToggle",x=0,y=0,w=40,h=100,tooltip="",model = {
            model = "models/metrostroi_train/81-5402/BP15.mdl",ang =90,x=-1,y=45,z=-2,
            var="P_29K",min=0.875,max=0,speed=2,scale = 0.85,disable="P_29Toggle",
        }},       
    }
}
ENT.ClientProps["P_29"] = {
    model = "models/metrostroi_train/81-5402/BP15_sg.mdl",
    pos = ENT.ButtonMap["HeadlightsFusePanel"].pos + Vector(-1.5,-1.18,-6),
    ang = Angle(90,0,0),
    hideseat=0.2,
	scale=0.85,
}

for i=3,4 do
    ENT.ClientProps["int_cover"..i] = {
        model = "models/metrostroi_train/81-5401/5401_int_cover"..i..".mdl",
        pos = Vector(0,0,0),
        ang = Angle(0,0,0),
        hideseat=1,
    }
end
ENT.ButtonMap["int_cover3"] = {
    pos = Vector(262,37.4,-48),
    ang = Angle(0,0,0),
    width = 430,
    height = 340,
    scale = 0.22,
    buttons = {
        {ID = "int_cover3",x=0,y=0,w=430,h=340,tooltip=""},
    }
}
ENT.ButtonMap["int_cover4"] = {
    pos = Vector(-370,37.4,-48),
    ang = Angle(0,0,0),
    width = 430,
    height = 340,
    scale = 0.22,
    buttons = {
        {ID = "int_cover4",x=0,y=0,w=430,h=340,tooltip=""},
    }
}
--[[
ENT.ClientProps["BP15"] = {
    model = "models/metrostroi_train/81-5402/BP15.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat = 0.2,
}
]]

ENT.ButtonMap["EPVDisconnect"] = {
    pos = Vector(440,-37,-35),
    ang = Angle(0,-150,90),
    width = 200,
    height = 120,
    scale = 0.05,

    buttons = {
        {ID = "EPKToggle",x=0,y=0,w=200,h=120,tooltip="",model = {
            var="EPK"--,sndid="EPK_disconnect",
            --sndvol = 1,snd = function(val) return "disconnect_valve" end,
            --sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}



ENT.ClientSounds["EPK"] = {
    {"EPV_disconnect",function() return "disconnect_valve" end,1,1,90,1e3,Angle(-90,0,0)},
}
ENT.ClientProps["EPV_disconnect"] = {
    model = "models/metrostroi_train/81-5402/crane_epv_5p.mdl",
    pos = Vector(438.0,-39.5,-39.2  ),
    ang = Angle(120,90,0),
    hideseat=0.2,
}

ENT.ClientProps["epv_wrench"] = {
    model = "models/metrostroi_train/reversor/reversor_classic.mdl",scale=0.9,
    pos = Vector(436.7,-39.5,-39.2),
    ang = Angle(90,270,90),
    hideseat = 0.2,
    modelcallback = function(ent)
        return ent.HasGoldenReverser and "models/metrostroi_train/reversor/reversor_gold.mdl" or "models/metrostroi_train/reversor/reversor_classic.mdl"
    end,
}

ENT.ButtonMap["DriverValveDisconnect"] = {
    pos = Vector(443,-13,-27),
    ang = Angle(90,-170,90),
    width = 200,
    height = 90,
    scale = 0.0625,

    buttons = {
        {ID = "DriverValveDisconnectToggle",x=0,y=0,w=200,h=90,tooltip="",model = {
            var="DriverValveDisconnect",sndid="valve_disconnect",
            sndvol = 1,snd = function(val) return "disconnect_valve" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ClientProps["valve_disconnect"] = {
    model = "models/metrostroi_train/81-707/cran3.mdl",
    pos = Vector(446.85,-13.85,-39.4),
    ang = Angle(90,185,90),
    hideseat=0.2,
}

ENT.ButtonMap["FrontPneumatic"] = {
    pos = Vector(481,-45.0,-58.0+5),
    ang = Angle(0,90,90),
    width = 900,
    height = 100,
    scale = 0.1,
    hideseat=0.1,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "FrontBrakeLineIsolationToggle",x=000, y=0, w=400, h=100, tooltip=""},
        {ID = "FrontTrainLineIsolationToggle",x=500, y=0, w=400, h=100, tooltip=""},
    }
}
ENT.ClientProps["FrontBrake"] = {--
    model = "models/metrostroi_train/81-5401/5401_crane_tm.mdl",--"models/metrostroi_train/bogey/disconnect_valve_red.mdl",
    pos = Vector(0,0,0),--Vector(467+11, -31, -62),
    ang = Angle(0,0,0),--Angle(-15,-90,0),
    hide = 2,
}
ENT.ClientProps["FrontTrain"] = {--
    model = "models/metrostroi_train/81-5401/5401_crane_nm.mdl",
    pos = Vector(0,0,0),--Vector(467+11, 31, -62),
    ang = Angle(0,0,0),--Angle( 15,-90,0),
    hide = 2,
}
ENT.ClientSounds["FrontBrakeLineIsolation"] = {{"FrontBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["FrontTrainLineIsolation"] = {{"FrontTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}

ENT.ButtonMap["RearPneumatic"] = {
    pos = Vector(-473-1,45.0,-58.0+5),
    ang = Angle(0,270,90),
    width = 900,
    height = 100,
    scale = 0.1,
    hideseat=0.2,
    hide=true,
    screenHide = true,
    buttons = {
        {ID = "RearTrainLineIsolationToggle",x=500, y=0, w=400, h=100, tooltip=""},
        {ID = "RearBrakeLineIsolationToggle",x=000, y=0, w=400, h=100, tooltip=""},
    }
}
ENT.ClientProps["RearTrain"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
    pos = Vector(-450-22, -34, -62),
    ang = Angle(-15,90,0),
    hide = 2,
}
ENT.ClientProps["RearBrake"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
    pos = Vector(-450-22, 34, -62),
    ang = Angle( 15,90,0),
    hide = 2,
}
ENT.ClientSounds["RearBrakeLineIsolation"] = {{"RearBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["RearTrainLineIsolation"] = {{"RearTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}


ENT.ButtonMap["GV"] = {
    pos = Vector(138,60,-60+2),
    ang = Angle(0,180,90),
    width = 260,
    height = 260,
    scale = 0.1,
    buttons = {
        {ID = "GVToggle",x=0, y=0, w= 260,h = 260, tooltip="", model = {
            var="GV",sndid = "gv_wrench",
            sndvol = 0.8,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
            snd = function(val) return val and "gv_f" or "gv_b" end,
        }},
    }
}

ENT.ClientProps["gv_wrench"] = {
    model = "models/metrostroi_train/reversor/reversor_classic.mdl",
    pos = Vector(124.4,56.45,-76),
    ang = Angle(-90,-90,0),
    hide = 0.5,
}


ENT.ClientProps["parking_brake"] = {
    model = "models/metrostroi_train/81-707/cran3.mdl",
    pos = Vector(440,-52.5,-32.2),
    ang = Angle(180,180,90),
    hideseat=0.2,
}


ENT.ButtonMap["AirDistributor"] = {
    pos = Vector(-185,-68,-50),
    ang = Angle(0,0,90),
    width = 170,
    height = 80,
    scale = 0.1,
    hideseat=0.1,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "AirDistributorDisconnectToggle",x=0,y=0,w= 170,h = 80,tooltip=""},
    }
}

for i=0,4 do
    ENT.ClientProps["TrainNumberL"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(43+i*6.4,67.2,-12),
        ang = Angle(0,180,0),
        skin=i,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
    ENT.ClientProps["TrainNumberR"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(64-i*6.4,-67.2,-12),
        ang = Angle(0,0,0),
        skin=i,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
end

ENT.ButtonMap["CabLight"] = {
    pos = Vector(443,33.8,53),
    ang = Angle(0,0,180),
    width = 100,
    height = 80,
    scale = 0.04,
    buttons = {
        {ID = "CabLight-",x=0,y=0,w=50,h=80,tooltip="-"},
        {ID = "CabLight+",x=50,y=0,w=50,h=80,tooltip="+"},
    }
}

ENT.ButtonMap["Route"] = {
    pos = Vector(479.20,35,-7.1),
    ang = Angle(0,90,90),
    width = 230,
    height = 130,
    scale = 0.0625,
    buttons = {
        {ID = "RouteNumber1+",x=76.5*0,y=0,w=76.5,h=65,tooltip=""},
        {ID = "RouteNumber2+",x=76.5*1,y=0,w=76.5,h=65,tooltip=""},
        {ID = "RouteNumber3+",x=76.5*2,y=0,w=76.5,h=65,tooltip=""},
        {ID = "RouteNumber1-",x=76.5*0,y=65,w=76.5,h=65,tooltip=""},
        {ID = "RouteNumber2-",x=76.5*1,y=65,w=76.5,h=65,tooltip=""},
        {ID = "RouteNumber3-",x=76.5*2,y=65,w=76.5,h=65,tooltip=""},
    }
}

ENT.ClientProps["route1"] = {
    model = "models/metrostroi_train/81-502/route/route_number.mdl",
    pos = Vector(479.03,37.3,-11.1),
    ang = Angle(90,180,180),
    skin=2,
    hide = 1.5,
    callback = function(ent)
        ent.RouteNumber.Reloaded = false
    end,
}
ENT.ClientProps["route2"] = {
    model = "models/metrostroi_train/81-502/route/route_number.mdl",
    pos = Vector(479.03,42,-11.1),
    ang = Angle(90,180,180),
    skin=2,
    hide = 1.5,
    callback = function(ent)
        ent.RouteNumber.Reloaded = false
    end,
}
ENT.ClientProps["route3"] = {
    model = "models/metrostroi_train/81-502/route/route_number.mdl",
    pos = Vector(479.03,46.6,-11.1),
    ang = Angle(90,180,180),
    skin=8,
    hide = 1.5,
    callback = function(ent)
        ent.RouteNumber.Reloaded = false
    end,
}

ENT.ButtonMap["CabinDoor"] = {
    pos = Vector(411,64,50),
    ang = Angle(0,0,90),
    width = 665,
    height = 2000,
    scale = 0.1/2,
    buttons = {
        {ID = "CabinDoor",x=0,y=0,w=665,h=2000,tooltip="",model = {
            var="door2",sndid="door2",
            sndvol = 1,snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["OtsekDoor1"] = {
    pos = Vector(394.5,28,9.3),
    ang = Angle(0,180,90),
    width = 310,
    height = 130,
    scale = 0.1/2,
    buttons = {
        {ID = "OtsekDoor1",x=0,y=0,w=310,h=130,tooltip="",model = {
            var="door_otsek1",sndid="door_otsek1",
            sndvol = 1,snd = function(val) return "otsek_door_close" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["OtsekDoor2"] = {
    pos = Vector(394.5,28,-26),
    ang = Angle(0,180,90),
    width = 310,
    height = 130,
    scale = 0.1/2,
    buttons = {
        {ID = "OtsekDoor2",x=0,y=0,w=310,h=130,tooltip="",model = {
            var="door_otsek2",sndid="door_otsek2",
            sndvol = 1,snd = function(val) return "otsek_door_close" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}

ENT.ButtonMap["PassengerDoor"] = {
    pos = Vector(390-12.2,29,50.6),--28
    ang = Angle(0,90,90),
    width = 642,
    height = 2000,
    scale = 0.1/2,
    buttons = {
        {ID = "PassengerDoor",x=0,y=0,w=642,h=2000,tooltip="",model = {
            var="door3",sndid="door3",
            sndvol = 1,snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}

ENT.ButtonMap["PassengerDoor1"] = {
    pos = Vector(390-12.2,29+32,50.6),--28
    ang = Angle(0,-90,90),
    width = 642,
    height = 2000,
    scale = 0.1/2,
    buttons = {
        {ID = "PassengerDoor",x=0,y=0,w=642,h=2000,tooltip=""},
    }
}

ENT.ButtonMap["PassengerIntSeat"] = {
    pos = Vector(379,35,-2),--28
    ang = Angle(0,90,90),
    width = 400,
    height = 470,
    scale = 0.1/2,
    buttons = {
        {ID = "PassengerIntSeat",x=0,y=0,w=400,h=470,tooltip=""},
    }
}

ENT.ButtonMap["CabinDoor"] = {
    pos = Vector(414.5,64,56.7),
    ang = Angle(0,-8.3,90),
    width = 642,
    height = 2000,
    scale = 0.1/2,
    buttons = {
        {ID = "CabinDoor",x=0,y=0,w=642,h=2000,tooltip="",model = {
            var="door2",sndid="door2",
            sndvol = 1,snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["PassengerCabSeat"] = {
    pos = Vector(420.12,60,-2),--28
    ang = Angle(0,-8.3,90),
    width = 400,
    height = 470,
    scale = 0.1/2,
    buttons = {
        {ID = "PassengerCabSeat",x=0,y=0,w=400,h=470,tooltip=""},
    }
}

ENT.ButtonMap["RearDoor"] = {
    pos = Vector(-470-3,-16,48.4-2),
    ang = Angle(0,90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "RearDoor",x=0,y=0,w=642,h=1900,tooltip="",model = {
            var="door1",sndid="door1",
            sndvol = 1,snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
    }
}


ENT.ButtonMap["Ticker"] = {
    pos = Vector(279.875,25.725,62.66),
    ang = Angle(0,-90,99.35),
    width = 694,
    height = 45,
    scale = 0.074,
    hideseat=1.5,
}
ENT.ClientProps["Ticker1"] = {
    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
	pos = Vector(-462.63,0,59),
	ang = Angle(180,0,0),
	scale=1,
	hide=1.5,
}
ENT.ButtonMap["Ticker1"] = {
    pos = ENT.ClientProps["Ticker1"].pos+Vector(0.85,-25.7,1.65),
    ang = Angle(0,90,90),
    width = 694,
    height = 45,
    scale = 0.074,
    hideseat=1.5,
}
--[[ ENT.ButtonMap["LeftMirror"] = {
    pos = Vector(469.9,72.75,37.4),
    ang = Angle(0,-60,90),
    width = 128,
    height = 256,
    scale = 0.06,
}
ENT.ButtonMap["RightMirror"] = {
    pos = Vector(470.0+3.4,-72.75+6,37.4),
    ang = Angle(0,-60-60,90),
    width = 128,
    height = 256,
    scale = 0.06,
}--]]
--------------------------------------------------------------------------------
ENT.ClientPropsInitialized = false
ENT.ClientProps["brake013"] = {
    model = "models/metrostroi_train/81-717/cran13.mdl",
    pos = Vector(430.6,-20.3,-7.23)+pult,
    ang = Angle(0,180,0),
    hideseat = 0.2,
}

ENT.ClientProps["crane_bur_handle"] = {
    model = "models/crane_bur/crane_bur_handle.mdl",
    pos = ENT.ClientProps["brake013"].pos+Vector(0,0,-4.75),--+Vector(0,-0.09,-4.7),
    ang = Angle(0,-14,0),
    --ang = Angle(0,50,0),
    hideseat = 0.2,
}

if not ENT.ClientSounds["br_013"] then ENT.ClientSounds["br_013"] = {} end
table.insert(ENT.ClientSounds["br_013"],{"brake013",function(ent,_,var) return "br_013" end,0.7,1,50,1e3,Angle(-90,0,0)})

--------------------------------------------------------------------------------

ENT.ClientProps["PB"] = {
    model = "models/metrostroi_train/81-720/720_pb.mdl",
    pos = Vector(468.7, 24.7, -31.7),
    ang = Angle(0,-90,8),
    hideseat = 0.2,
}
if not ENT.ClientSounds["PB"] then ENT.ClientSounds["PB"] = {} end
table.insert(ENT.ClientSounds["PB"],{"PB",function(ent,var) return var > 0 and "pb_on" or "pb_off" end,1,1,50,1e3,Angle(-90,0,0)})

ENT.ClientProps["train_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(450.665070,-15.255391,-3.192689+5.35)+pult,
    ang = Angle(-62.299999,-33.400002,0.000000),
    hideseat = 0.2,
}
ENT.ClientProps["brake_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_tm.mdl",
    pos = Vector(450.684143,-15.267894,-3.204609+5.35)+pult,
    ang = Angle(-62.299999,-33.400002,0.000000),
    hideseat = 0.2,
}
ENT.ClientProps["brake_cylinder"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(450.525736,-22.815704,-3.113149+5.35)+pult,
    ang = Angle(-62.299999,-33.400002,0.000000),
    hideseat = 0.2,
}

ENT.ClientProps["voltmeter2"] = {
    model = "models/metrostroi/81-717/volt_arrow.mdl",
    pos = Vector(454.2,-33.42,19.2)+pult,
    ang = Angle(90,0,20),
    hideseat = 0.2,
}
ENT.ClientProps["ampermeter2"] = {
    model = "models/metrostroi/81-717/volt_arrow.mdl",
    pos = Vector(452.6,-37.83,19.2)+pult,
    ang = Angle(90,0,20),
    hideseat = 0.2,
}
ENT.ClientProps["volt1"] = {
    model = "models/metrostroi_train/81-710/ezh3_voltages.mdl",
    pos = Vector(449.501740,15.141174,0.812889)+pult,
    ang = Angle(-58.299999,0.000000,27.968136),
    bscale = Vector(1,1,1.47),
    hideseat = 0.2,
}
ENT.ClientProps["cab_rfid_reader"] = {
    model = "models/metrostroi_train/81-5401/5401_cab_rfid_reader.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    nohide = true,8
}

ENT.ClientProps["bortlamps1"] = {
    model = "models/metrostroi_train/81-717/bort_lamps_body.mdl",
    pos = Vector(-52,67,45.5),
    ang = Angle(0,0,0),
    hide = 2,
}
ENT.ClientProps["bortlamp1_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.85,3.2),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp1_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.85,-0.1),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp1_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.85,-3.35),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamps2"] = {
    model = "models/metrostroi_train/81-717/bort_lamps_body.mdl",
    pos = Vector(39,-67,45.5),
    ang = Angle(0,180,0),
    hide = 2,
}
ENT.ClientProps["bortlamp2_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.85,3.2),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp2_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.85,-0.1),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp2_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.85,-3.35),
    ang = Angle(0,180,0),
    nohide = true,
}
--------------------------------------------------------------------------------
-- Add doors
--[[ local function GetDoorPosition(i,k,j)
    if j == 0
    then return Vector(338.0-230.1*i+(1-k)*0.8,-65*(1-2*k),0.761)
    else return Vector(338.2-230.1*i+(1-k)*0.8,-65*(1-2*k),0.761)
    end
end
for i=0,3 do
    for k=0,1 do
        ENT.ClientProps["door"..i.."x"..k.."a"] = {
            model = "models/metrostroi_train/81-717/door_right_spb.mdl",
            pos = GetDoorPosition(i,k,0),
            ang = Angle(0,90 +180*k,0),
            hide = 2,
        }
        ENT.ClientProps["door"..i.."x"..k.."b"] = {
            model = "models/metrostroi_train/81-717/door_left_spb.mdl",
            pos = GetDoorPosition(i,k,1),
            ang = Angle(0,90 +180*k,0),
            hide = 2,
        }
    end
end--]]
ENT.ClientProps["door0x1"] = {
    model = "models/metrostroi_train/81-717/81-717_doors_spb_pos1.mdl",
    pos = Vector(338.445+1.2-2.2,65.164,0.807),
    ang = Angle(0,-90,0),
    hide = 2.0,
}
for k=0,1 do
    for i=0,3 do
        ENT.ClientProps["door"..i.."x"..k] = {
            model = "models/metrostroi_train/81-5401/5401_ext_doors_"..(k == 0 and "r" or "l")..(i+1)..".mdl",
            pos = Vector(0,0,0),
            ang = Angle(0,0,0),
            hide = 2.0,
        }
    end
end
for k=0,1 do
    for i=0,3 do
        ENT.ButtonMap["ChangeDoors"..i..k] = {
            pos = Vector(372.7-230.1*i-68.25*k,k == 0 and -64 or 64,47),
            ang = Angle(0,k == 0 and 180 or 0,90),
            width = 360,
            height = 500,
            scale = 0.19,
            buttons = {
                {ID = "ChangeDoors"..(i+1)..(k+1),x=0,y=0,w=360,h=500,tooltip=""},
            }        
        }
    end
end
for i=0,3 do
    for k=0,1 do
        ENT.ButtonMap["BlockDoors"..i..k] = {
            pos = Vector(304.45-230.1*i,k == 0 and -60 or 64,-24),
            ang = Angle(90,90,90),
            width = 100,
            height = 100,
            scale = 0.04,
            buttons = {
                {ID = "BlockDoors"..(i+1)..(k+1),x=0,y=0,w=100,h=100,tooltip="", model= {
                    var = "BlockDoors"..(i+1)..(k+1),sndid="bd_wrench"..(i+1)..(k+1),
                    sndvol = 0.8,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
                    snd = function(val) return val and "gv_f" or "gv_b" end,
                }},
            }        
        }
    end
end
for i=0,3 do
    for k=0,1 do
        ENT.ClientProps["bd_wrench"..(i+1)..(k+1)] = {
            model = "models/metrostroi_train/reversor/reversor_classic.mdl",
            pos = Vector(313-230.1*i,k == 0 and -63.4 or 63.5,-26.48),
            ang = Angle(0,0,0),--Angle(90,-90,0),
            hide = 0.5,
            --scale = 1,
        }
    end
end

ENT.ClientProps["Lamps_cab1"] = {
    model = "models/metrostroi_train/81-5401/5401_cab_lamp1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=1,
}
ENT.ClientProps["Lamps_cab2"] = {
    model = "models/metrostroi_train/81-5401/5401_cab_lamp2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hideseat=1,
}
--[[
ENT.ClientProps["Lamps2_cab1"] = {
    model = "models/metrostroi_train/81-717/lamps/lamp_cabine1.mdl",
    pos = Vector(0.5,0,-0.7),
    ang = Angle(0,0,0),
    hideseat = 0.9,
}
ENT.ClientProps["Lamps2_cab2"] = {
    model = "models/metrostroi_train/81-717/lamps/lamp_cabine2.mdl",
    pos = Vector(0,0,-0.8),
    ang = Angle(0,0,0),
    hideseat = 0.9,
}
]]
for i = 0,13 do
    --[[ local b = 15--math.random()*15
    local g = 15--b+math.random()*(15-b)
    if math.random() > 0.4 then
        g = math.random()*15
        b = g
    else
        g = 15
        b = -10+math.random()*25
    end--]]
    ENT.ClientProps["lamp1_"..i+1] = {
        model = "models/metrostroi_train/81-5401/5401_int_lamp1.mdl",--"models/metrostroi_train/81-717/lamps/lamp_typ1.mdl",
        pos = Vector(281.33 - 57.66*(i-i%2),(i%2)*-79,-0.04),
        ang = Angle(0,0,0),
        color = Color(255,255,255),
        hideseat = 1.1,
    }
end
for i=1,7 do
    ENT.ClientProps["vent"..i] = {
        model = "models/metrostroi_train/81-720/vent.mdl",
        pos = Vector(-353+(i-1)*115.4,0,61),
        ang = Angle(0,0,0),
        hide = 1.1,
    }
end

--[[
local pos = Vector(454.3,-28.3,12+3.5)
local ang = Angle(60,-30,180)
ENT.ClientProps["TEST"] = {
    model = "models/metrostroi_train/81/334cran.mdl",
    pos = pos,
    ang = ang,
    scale=0.1,
}--]]
--Vector(-0.3,0.03,3.4)
ENT.Lights = {
    [1] = { "headlight",        Vector(478,0,-40),Angle(0,0,0),Color(216,161,92),farz=5144,brightness = 4, fov=100, texture = "models/metrostroi_train/equipment/headlight",shadows = 1,headlight=true},
    [2] = { "headlight",        Vector(478,0,50), Angle(-20,0,0), Color(255,0,0), fov=160 ,brightness = 0.3, farz=450,texture = "models/metrostroi_train/equipment/headlight2",shadows = 0,backlight=true},

    [3] = { "headlight",        Vector(365,-9,50), Angle(50,40,-0), Color(206,135,80), hfov=80, vfov=80,farz=100,brightness = 6,shadows=1},
    [4] = { "headlight",        Vector(365,-51,50), Angle(50,40,-0), Color(206,135,80), hfov=80, vfov=80,farz=100,brightness = 6,shadows=1},

    -- Manometers
    [40] = { "headlight",Vector(451.9,-13.5,-2+5.35)+pult,Angle(52.571899-15-5,-129.269775+25+15,49.853062) ,Color(255,130,25),farz = 8,nearz = 2,shadows = 1,brightness = 1,fov = 145 },
    [41] = { "headlight",Vector(451.8,-21,-2+5.35)+pult,Angle(52.571899-15-5,-129.269775+25+15,49.853062),Color(255,130,25),farz = 8,nearz = 2,shadows = 1,brightness = 1,fov = 140 },
    [42] = { "headlight",Vector(450.3,13.1,-4.4+5.35)+pult,Angle(-136.613632-33,-95.636734-28,137.434570),Color(255,130,25),farz = 8,nearz = 2,shadows = 0,brightness = 1.5,fov = 120 },
    -- Voltmeter
    [44] = { "headlight",ENT.ClientProps["ampermeter2"].pos+Vector(-0.25,-0.06,3.75),Angle(70,-20,180),Color(255,130,25),farz = 4.5,nearz = 2,shadows = 0,brightness = 2,fov = 140 },
    [45] = { "headlight",ENT.ClientProps["voltmeter2"].pos+Vector(-0.25,-0.06,3.75),Angle(70,-20,180),Color(255,130,25),farz = 4.5,nearz = 2,shadows = 0,brightness = 2,fov = 140 },

    --[46] = { "headlight",Vector(452,-32.2,12+3.5),Angle(60,-30,180),Color(255,130,25),farz = 8,nearz = 2,shadows = 0,brightness = 1,fov = 130 },
    --[47] = { "headlight",Vector(454.3,-28.3,12+3.5),Angle(60,-30,180),Color(255,130,25),farz = 8,nearz = 2,shadows = 0,brightness = 1,fov = 130 },


    -- Manometers
    [50] = { "headlight",Vector(451.9,-13.5,-2+5.35)+pult,Angle(52.571899-15-5,-129.269775+25+15,49.853062) ,Color(200,200,255),farz = 8,nearz = 2,shadows = 1,brightness = 2,fov = 145 },
    [51] = { "headlight",Vector(451.8,-21,-2+5.35)+pult,Angle(52.571899-15-5,-129.269775+25+15,49.853062),Color(200,200,255),farz = 8,nearz = 2,shadows = 1,brightness = 2,fov = 140 },
    [52] = { "headlight",Vector(450.3,13.1,-4.4+5.35)+pult,Angle(-136.613632-33,-95.636734-28,137.434570),Color(150,150,255),farz = 8,nearz = 2,shadows = 0,brightness = 2.5,fov = 120 },
    -- Voltmeter
    ---[54] = { "headlight",Vector(450.273468,-32.306019,13.236823),Angle(-18.000000,25.541767,-90.600349),Color(200,200,255),farz = 10,nearz = 2,shadows = 1,brightness = 2,fov = 100 },
    ---[55] = { "headlight",Vector(450.273468,-32.306019,18.236823),Angle(-12.000000,25.541767,-90.600349),Color(200,200,255),farz = 10,nearz = 2,shadows = 1,brightness = 2,fov = 100 },

    --[56] = { "headlight",Vector(452,-32.2,12+3.5),Angle(60,-30,180),Color(200,200,255),farz = 8,nearz = 2,shadows = 0,brightness = 2,fov = 130 },
    --[57] = { "headlight",Vector(454.3,-28.3,12+3.5),Angle(60,-30,180),Color(200,200,255),farz = 8,nearz = 2,shadows = 0,brightness = 2,fov = 130 },

    [70] = { "headlight",Vector( 437,-56,-70),Angle(0,-90,0),Color(255,220,180),brightness = 0.3,distance = 300 ,fov=120,shadows = 1, texture="effects/flashlight/soft" },
}

function ENT:Initialize()
    self.BaseClass.Initialize(self)
    self.PUAV = self:CreateRT("7171PUAV",512,128)
    self.PAM = self:CreateRT("7171PAM",1024,512)
    --self.LeftMirror = self:CreateRT("LeftMirror",128,256)
    --self.RightMirror = self:CreateRT("RightMirror",128,256)
	self.Tickers = self:CreateRT("7171Ticker",1024,64)
	self.ECRSScr = self:CreateRT("7171PECRS",256,256)
	self.KTSOScr = self:CreateRT("7171PKTSO",320,240)
    self.RVSScr = self:CreateRT("7171RVS",256,256)

    self.CraneRamp = 0
    self.CraneRRamp = 0
    self.ReleasedPdT = 0
    self.EmergencyValveRamp = 0
    self.EmergencyValveEPKRamp = 0
    self.EmergencyBrakeValveRamp = 0
    self.FrontLeak = 0
    self.RearLeak = 0
    self.DoorValve1Ramp = 0
    self.DoorValve2Ramp = 0
    self.DoorValve3Ramp = 0

    self.VentCab = 0
    
    self.VentRand = {}
    self.VentState = {}
    self.VentVol = {}
    for i=1,7 do
        self.VentRand[i] = math.Rand(0.9,1.1)
        self.VentState[i] = 0
        self.VentVol[i] = 0
    end

    self.BPSNBuzzVolume = 0
end

function ENT:UpdateTextures()
    self.Texture = self:GetNW2String("Texture")
    self.PassTexture = self:GetNW2String("PassTexture")
    self.CabinTexture = self:GetNW2String("CabTexture")

	Metrostroi.Skins["train"][self.Texture] = {}
	Metrostroi.Skins["train"][self.Texture].textures = {
		["pult_panel_yellow_old"] = "models/metrostroi_train/81-5401/cab_pult_panel",
		["p_b_yellow"] = "models/metrostroi_train/81-5401/cab_pult_base",
        ["button_locker"] = "models/metrostroi_train/81-5401/button_locker",
	}

    local texture = Metrostroi.Skins["train"][self.Texture]
    local passtexture = Metrostroi.Skins["pass"][self.PassTexture]
    local cabintexture = Metrostroi.Skins["cab"][self.CabinTexture]
    for id,ent in pairs(self.ClientEnts) do
        if not IsValid(ent) then continue end
        if self.ClientProps[id].callback then self.ClientProps[id].callback(self,ent) end
        for k in pairs(ent:GetMaterials()) do ent:SetSubMaterial(k-1,"") end
        for k,v in pairs(ent:GetMaterials()) do
            local tex = string.Explode("/",v)
            tex = tex[#tex]
            if cabintexture and cabintexture.textures and cabintexture.textures[tex] then
                ent:SetSubMaterial(k-1,cabintexture.textures[tex])
            end
            if passtexture and passtexture.textures and passtexture.textures[tex] then
                ent:SetSubMaterial(k-1,passtexture.textures[tex])
            end
            if texture and texture.textures and texture.textures[tex] then
                ent:SetSubMaterial(k-1,texture.textures[tex])
            end
        end
    end
end


function ENT:UpdateWagonNumber()
    local WagonNumber = "10222"
    local count = math.max(4,math.ceil(math.log10(WagonNumber+1)))
    for i=0,4 do
        self:ShowHide("TrainNumberL"..i,i<count)
        self:ShowHide("TrainNumberR"..i,i<count)
        if i< count and WagonNumber then
            local leftNum,rightNum = self.ClientEnts["TrainNumberL"..i],self.ClientEnts["TrainNumberR"..i]
            local num = math.floor(WagonNumber%(10^(i+1))/10^i)
            if IsValid(leftNum) then
                leftNum:SetPos(self:LocalToWorld(Vector(41+16+i*6.6-count*6.6/2,67.4,-20.1)))
                leftNum:SetSkin(num)
            end
            if IsValid(rightNum) then
                rightNum:SetPos(self:LocalToWorld(Vector(64+16-i*6.6-count*6.6/2,-67.4,-20.1)))
                rightNum:SetSkin(num)
            end
        end
    end
end

local function interpolate(tbl, num)
  for i=1,#tbl do
    local curr,next = tbl[i],tbl[i+1]
    if not next then
      return curr[2]
    elseif curr[1] <= num and num <= next[1] then
      return curr[2] + (next[2]-curr[2])*((num-curr[1])/(next[1]-curr[1]))
    end
  end
end
local SeatInt = {
    [0] = {
        {0.000, Vector(0,0,0)},
        {0.250, Vector(0,0,0)},
        {0.375, Vector(2.05,-0.35,0)},
        {0.500, Vector(4.1,-1,0)},
        {0.625, Vector(7.78,-3,0)},
        {0.750, Vector(10.8,-5.97,0)},
        {0.900, Vector(12.93,-9.7,0)},
        {1.000, Vector(13.8,-12.53,0)},    
    },
    [1] = {
        {0.000, Angle(0,0,0)},
        {0.250, Angle(0,0,0)},
        {0.500, Angle(0,-15,0)},
        {0.750, Angle(0,-45,0)},
        {1.000, Angle(0,-70.6,0)},
    },
}
local SeatCab = {
    [0] = {
        {0.000, Vector(0,0,0)},
        {0.250, Vector(0,0,0)},
        {0.375, Vector(-0.95,-2.6,0)},
        {0.500, Vector(-2.2,-4.94,0)},
        {0.625, Vector(-5.4,-8.4,0)},
        {0.750, Vector(-9.5,-10.7,0)},
        {0.900, Vector(-12.6,-11.55,0)},
        {1.000, Vector(-14.8,-11.7,0)},    
    },
    [1] = {
        {0.000, Angle(0,0,0)},
        {0.250, Angle(0,0,0)},
        {0.500, Angle(0,-20,0)},
        {0.750, Angle(0,-55,0)},
        {1.000, Angle(0,-75.2,0)},
    },
}
local Cpos = {
    0,0.2,0.4,0.5,0.6,0.8,1
}
local BURpos = {
	0,0.17,0.345,0.433,0.54,0.765,1
}
local BDWrench = {
    {0.0,Vector(0,0,0)},
    {0.5,Vector(0,0.3,0.15)},
    {1.0,Vector(0,0.4,0.45)},
}
--------------------------------------------------------------------------------
function ENT:Think()
    self.BaseClass.Think(self)
    if not self.RenderClientEnts or self.CreatingCSEnts then
        self.RKTimer = nil

        self.RingType = nil
        self.LastStation = false
        return
    end
    if self.RelaysConfig ~= self:GetNW2String("RelaysConfig") then
        self.RelaysConfig = self:GetNW2String("RelaysConfig")
        self:SetRelays()
    end
    
    self:SetLightPower(40, self:GetPackedBool("PanelLights"))
    self:SetLightPower(41, self:GetPackedBool("PanelLights"))
    self:SetLightPower(44, self:GetPackedBool("PanelLights"))
    self:SetLightPower(45, self:GetPackedBool("PanelLights"))
    self:SetLightPower(52, self:GetPackedBool("PanelLights"))

    local sosd = self:Animate("SOSD",self:GetPackedBool("SOSDL") and 1 or 0,0,1,6,false)
    self:ShowHideSmooth("sosd_lamp",sosd)
    self:SetLightPower(70,sosd>0,sosd)

    local HL1 = self:Animate("Headlights1",self:GetPackedBool("Headlights1") and 1 or 0,0,1,6,false)
    local HL2 = self:Animate("Headlights2",self:GetPackedBool("Headlights2") and 1 or 0,0,1,6,false)
    local RL1 = self:Animate("RedLights1",self:GetPackedBool("RedLight1") and 1 or 0,0,1,6,false)
    local RL2 = self:Animate("RedLights2",self:GetPackedBool("RedLight2") and 1 or 0,0,1,6,false)
    self:ShowHideSmooth("Headlight1",HL1)
    self:ShowHideSmooth("Headlight2",HL2)
    self:ShowHideSmooth("RedLightL",RL1)
    self:ShowHideSmooth("RedLightR",RL2)

    local headlight = HL1*0.6+HL2*0.4
    self:SetLightPower(1,headlight>0,headlight)
    local RL = RL1*0.5+RL2*0.5
    self:SetLightPower(2,RL>0,RL)
    
    --if IsValid(self.ClientEnts["Dest"]) then PrintTable(self.ClientEnts["Dest"]:GetMaterials()) self.ClientEnts["Dest"]:SetSkin(1) end

    if IsValid(self.GlowingLights[1]) then
        if not self:GetPackedBool("Headlights1") and self.GlowingLights[1]:GetFarZ() ~= 3144 then
            self.GlowingLights[1]:SetFarZ(3144)
        end
        if self:GetPackedBool("Headlights1") and self.GlowingLights[1]:GetFarZ() ~= 5144 then
            self.GlowingLights[1]:SetFarZ(5144)
        end
    end

    local Bortlamp_w = self:Animate("Bortlamp_w",self:GetPackedBool("DoorsW") and 1 or 0,0,1,16,false)
    local Bortlamp_g = self:Animate("Bortlamp_g",self:GetPackedBool("GRP") and 1 or 0,0,1,16,false)
    local Bortlamp_y = self:Animate("Bortlamp_y",self:GetPackedBool("BrW") and 1 or 0,0,1,16,false)
    self:ShowHideSmooth("bortlamp1_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp1_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp1_y",Bortlamp_y)
    self:ShowHideSmooth("bortlamp2_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp2_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp2_y",Bortlamp_y)
    
    self:ShowHideSmooth("ecrs_light", self:Animate("ecrslight",self:GetPackedBool("MTLight") and 1 or 0,0,1,16,false))

    self:Animate("Controller",self:GetPackedRatio("ControllerPosition"),0,1,2,false)

    self:Animate("reverser",self:GetNW2Int("ReverserPosition")/2,0,0.27,4,false)
    self:Animate("krureverser",self:GetNW2Int("KRUPosition")/2,0.53,0.95,4,false)
    self:ShowHide("reverser",self:GetNW2Int("WrenchMode",0)==1)
    self:ShowHide("krureverser",self:GetNW2Int("WrenchMode",0)==2)

    self:Animate("PB",self:GetPackedBool("PB") and 1 or 0,0,0.2,  12,false)
    self:Animate("UAVALever",   self:GetPackedBool("UAVA") and 1 or 0,     0,0.6, 128,  3,false)
    self:Animate("parking_brake",   self:GetPackedBool("ParkingBrake") and 0 or 1,0.275,0,  4,false)
    self:Animate("EPV_disconnect",   self:GetPackedBool("EPK") and 0 or 1,0.4,0,  4,false)
    self:Animate("valve_disconnect",self:GetPackedBool("DriverValveDisconnect") and 1 or 0,0.25,0,  4,false)

    local cranpos = self:GetPackedRatio("CranePosition")
    self:Animate("brake013",        Cpos[cranpos] or 0, 0.03, 0.458,  256,24)
    self:Animate("crane_bur_handle",BURpos[cranpos] or 0, 0.446 ,0 ,  256,24)
    self:Animate("UAVALever",   self:GetPackedBool("UAVA") and 1 or 0,     0,0.6, 128,  3,false)
    self:Animate("brake_line",self:GetPackedRatio("BLPressure"),0.143,0.88,256,2)--,0.01)
    self:Animate("train_line",self:GetPackedRatio("TLPressure"),0.143,0.88,256,0)--,0.01)
    self:Animate("brake_cylinder",self:GetPackedRatio("BCPressure"),0.134,0.874,256,2)--,0.03)

    self:Animate("voltmeter2",self:GetPackedRatio("EnginesVoltage"),0.398-0.002,0.648+0.002,nil,nil)--,256,2,0.01)
    self:Animate("ampermeter2",self:GetPackedRatio("EnginesCurrent"),0.398-0.009,0.648+0.008,nil,nil,256,2,0.01)
    self:Animate("volt1",self:GetPackedRatio("BatteryVoltage"),0.625,0.376,256,0.2,false)
    self:Animate("stopkran",   self:GetPackedBool("EmergencyBrakeValve") and 0 or 1,     0.5,0, 128,  3,false)

    local cab_cover = self:Animate("cab_cover1", (self:GetPackedBool("cab_cover1") and 1 or 0),0,1,2,false)
    self:HidePanel("CabinFusePanel", cab_cover==0)
    self:Animate("int_cover3", (self:GetPackedBool("int_cover3") and 1 or 0),0,1,1,false)
    self:Animate("int_cover4", (self:GetPackedBool("int_cover4") and 1 or 0),0,1,1,false)

    self:Animate("doorcrane1", self:GetPackedBool("DoorCrane1",false) and 1 or 0,0,0.5,2,false)
    self:Animate("doorcrane2", self:GetPackedBool("DoorCrane2",false) and 1 or 0,0,0.5,2,false)
    self:Animate("doorcrane3", self:GetPackedBool("DoorCrane3",false) and 1 or 0,0,0.5,2,false)

    self:ShowHide("SSpeed1",self:GetPackedBool("LUDS"))
    self:ShowHide("SSpeed2",self:GetPackedBool("LUDS"))
    self:ShowHide("SpeedFact1",self:GetPackedBool("LUDS"))
    self:ShowHide("SpeedFact2",self:GetPackedBool("LUDS"))
    if self:GetPackedBool("LUDS") then
        local speed = self:GetNW2Int("ALSSpeed")
        if IsValid(self.ClientEnts["SSpeed1"])then self.ClientEnts["SSpeed1"]:SetSkin(math.floor(speed)%10) end
        if IsValid(self.ClientEnts["SSpeed2"])then self.ClientEnts["SSpeed2"]:SetSkin(math.floor(speed/10)) end
    end

    local otsek1 = self:Animate("door_otsek1",self:GetPackedBool("OtsekDoor1") and 1 or 0,0,1,4,0.5)
    local otsek2 = self:Animate("door_otsek2",self:GetPackedBool("OtsekDoor2") and 1 or 0,0,1,4,0.5)
    local door1 = self:Animate("door1",self:GetPackedBool("RearDoor") and 1 or 0,0,1,4,0.5)
    local door2 = self:Animate("door2",self:GetPackedBool("PassengerDoor") and 1 or 0,0,0.985,4,0.5)
    local door3 = self:Animate("door3",self:GetPackedBool("CabinDoor") and 1 or 0,0,1,4,0.5)
    local door2_seat = self:Animate("door_int_seat", self:GetPackedBool("PassengerIntSeat") and 1 or 0, 0, 1, 16, 0.5)
    if IsValid(self.ClientEnts["door_int_seat"]) then
        self.ClientEnts["door_int_seat"]:SetLocalPos(self.ClientProps["door_int_seat"].pos + interpolate(SeatInt[0], door2))
        self.ClientEnts["door_int_seat"]:SetLocalAngles(self.ClientProps["door_int_seat"].ang + interpolate(SeatInt[1], door2))
    end
    local door3_seat = self:Animate("door_cab_seat", self:GetPackedBool("PassengerCabSeat") and 1 or 0, 0, 1, 16, 0.5)
    if IsValid(self.ClientEnts["door_cab_seat"]) then
        self.ClientEnts["door_cab_seat"]:SetLocalPos(self.ClientProps["door_cab_seat"].pos + interpolate(SeatCab[0], door3))
        self.ClientEnts["door_cab_seat"]:SetLocalAngles(self.ClientProps["door_cab_seat"].ang + interpolate(SeatCab[1], door3))
    end   
    if self.Door1 ~= (door1 > 0.25) then
        self.Door1 = door1 > 0.25
        self:PlayOnce("door1","bass",self.Door1 and 1 or 0)
    end
    if self.Door2 ~= (door2 > 0.25) then
        self.Door2 = door2 > 0.25
        self:PlayOnce("door2","bass",self.Door2 and 1 or 0)
    end
    if self.Door3 ~= (door3 > 0.25) then
        self.Door3 = door3 > 0.25
        self:PlayOnce("door3","bass",self.Door3 and 1 or 0)
    end
    if self.Otsek1 ~= (otsek1 > 0) then
        self.Otsek1 = otsek1 > 0
        if not self.Otsek1 then
            self:PlayOnce("door_otsek1","bass",1)
        end
    end
    if self.Otsek2 ~= (otsek2 > 0) then
        self.Otsek2 = otsek2 > 0
        if not self.Otsek2 then
            self:PlayOnce("door_otsek2","bass",1)
        end
    end
    self:SetLightPower(3,self.Otsek1 and self:GetPackedBool("EqLights"))
    self:SetLightPower(4,self.Otsek2 and self:GetPackedBool("EqLights"))
    self:HidePanel("AV_S",not (self.Otsek1 or self.Otsek2))
    self:HidePanel("PassengerIntSeat",self.Door2)
    self:HidePanel("PassengerCabSeat",self.Door3)
    self:HidePanel("PassengerDoor",door2_seat > 0.5)
    self:HidePanel("PassengerDoor1",door2_seat > 0.5)
    self:HidePanel("CabinDoor",door3_seat > 0.5)

	self:ShowHide("P_29",self:GetPackedBool("P_29") and (self.Anims["P_29KToggle"] and self.Anims["P_29KToggle"].value>0 or false))
	self:ShowHide("P_11",self:GetPackedBool("P_11") and (self.Anims["P_11KToggle"] and self.Anims["P_11KToggle"].value>0 or false))
	self:ShowHide("P_1",self:GetPackedBool("P_1") and (self.Anims["P_1KToggle"] and self.Anims["P_1KToggle"].value>0 or false))
	self:ShowHide("P_5",self:GetPackedBool("P_5") and (self.Anims["P_5KToggle"] and self.Anims["P_5KToggle"].value>0 or false))
	self:ShowHide("P_6",self:GetPackedBool("P_6") and (self.Anims["P_6KToggle"] and self.Anims["P_6KToggle"].value>0 or false))
    
    for i = 1,14 do
        self:ShowHideSmooth("lamp1_"..i,self:Animate("Lamp1_"..i,(self:GetPackedBool("lightsActive"..i)) and self:GetPackedRatio("lightsActive") or 0,0,1,6,false))
    end
    if self.KVR ~= self:GetNW2Bool("KVR") or self.Type ~= self:GetNW2Int("AVType",1) then
        self.KVR = self:GetNW2Bool("KVR")
        self.Type = self:GetNW2Int("AVType",1)
        self.RingTypePA = nil
        self.RingType = nil
    end

	local cablight = self:GetPackedRatio("CabLight")
    local lamps_cab2 = self:Animate("lamps_cab2",self:GetPackedBool("EqLights") and cablight or 0,0,1,5,false)
    local lamps_cab1 = self:Animate("lamps_cab1",self:GetPackedBool("CabLights") and cablight or 0,0,1,5,false)
    local lamps_rtm = self:Animate("lamps_rtm",self:GetPackedBool("VPR") and 1 or 0,0,1,8,false)
    self:ShowHideSmooth("Lamps_cab2",lamps_cab2)
    self:ShowHideSmooth("Lamps_cab1",lamps_cab1)
    
    self:SetSoundState("vpr",lamps_rtm>0 and 1 or 0,1)

    self:Animate("FrontBrake",  self:GetNW2Bool("FbI") and 0 or 1,0,1, 3, false)
    self:Animate("FrontTrain",  self:GetNW2Bool("FtI") and 0 or 1,0,1, 3, false)
    self:Animate("RearBrake",   self:GetNW2Bool("RbI") and 0 or 1,0,1, 3, false)
    self:Animate("RearTrain",   self:GetNW2Bool("RtI") and 1 or 0,0,1, 3, false)

    -- Main switch
    if self.LastGVValue ~= self:GetPackedBool("GV") then
        self.GVResetTime = CurTime()+1.5
        self.LastGVValue = self:GetPackedBool("GV")
    end
    self:Animate("gv_wrench",self.LastGVValue and 1 or 0,0.425,1,128,1,false)
    self:ShowHideSmooth("gv_wrench", CurTime() < self.GVResetTime and 1 or 0.1)
    
    for i=1,4 do
        for k=1,2 do
            if self["LastBlockDoors"..i..k] ~= self:GetPackedBool("BlockDoors"..i..k) then
                self["BlockDoorsResetTime"..i..k] = CurTime()+0.5
                self["LastBlockDoors"..i..k] = self:GetPackedBool("BlockDoors"..i..k)
            end
            if IsValid(self.ClientEnts["bd_wrench"..i..k]) then
                local state = (self["LastBlockDoors"..i..k] and 1 or 0) + (self["LastBlockDoors"..i..k] and -1 or 1)*-(math.min(0,-(self["BlockDoorsResetTime"..i..k]-CurTime())))*2
                self.ClientEnts["bd_wrench"..i..k]:SetLocalAngles(Angle(90*state,-90,0))             
                self.ClientEnts["bd_wrench"..i..k]:SetLocalPos(self.ClientProps["bd_wrench"..i..k].pos+interpolate(BDWrench,state))
            end
            self:ShowHideSmooth("bd_wrench"..i..k, CurTime() < self["BlockDoorsResetTime"..i..k]+1 and 1 or 0.1)    
        end
    end
    
 	if self.LastEPKValue ~= self:GetPackedBool("EPK") then
        self.EPKResetTime = CurTime()+1.5
        self.LastEPKValue = self:GetPackedBool("EPK")
    end
    self:Animate("epv_wrench",self.LastEPKValue and 0 or 1,0.5,0,4,false)
    self:ShowHideSmooth("epv_wrench",    CurTime() < self.EPKResetTime and 1 or 0.1)   
    --self:InitializeSounds()
    if not self.DoorStates then self.DoorStates = {} end
    if not self.DoorLoopStates then self.DoorLoopStates = {} end
    for i=0,3 do
        for k=0,1 do
            local st = k==1 and "DoorL" or "DoorR"
            local doorstate = self:GetPackedBool(st..(i+1))
            local id,sid = st.."Pos"..(i+1),"door"..i.."x"..k
            local state = self:GetPackedRatio(id)
            local doorspeed = self:GetPackedRatio(st..(i+1).."Speed")
            if (state ~= 1 and state ~= 0) ~= self.DoorStates[id] then
                if doorstate and state < 1 or not doorstate and state > 0 then
                else
                    if state > 0 then
                        self:PlayOnce(sid.."o","",1,math.Rand(0.8,1.2))
                    else
                        self:PlayOnce(sid.."c","",doorspeed,math.Rand(0.8,1.2))
                    end
                end
                self.DoorStates[id] = (state ~= 1 and state ~= 0)
            end
            if (state ~= 1 and state ~= 0) and self:GetPackedBool(st.."Change"..(i+1),false) then
                self.DoorLoopStates[id] = math.Clamp((self.DoorLoopStates[id] or 0) + 2*self.DeltaTime,0,1)
            else
                self.DoorLoopStates[id] = math.Clamp((self.DoorLoopStates[id] or 0) - 6*self.DeltaTime,0,1)
            end
            self:SetSoundState(sid.."r",self.DoorLoopStates[id],(0.8+self.DoorLoopStates[id]*0.2)*doorspeed)
            local n_l = "door"..i.."x"..k--.."a"
            --local n_r = "door"..i.."x"..k.."b"
            local dlo = 1
            if self.Anims[n_l] then
                dlo = math.abs(state-(self.Anims[n_l] and self.Anims[n_l].oldival or 0))
                if dlo <= 0 and self.Anims[n_l].oldspeed then dlo = self.Anims[n_l].oldspeed/14 end
            end
            self:Animate(n_l,state,0,1,dlo*14,false)
        end
    end
    

    local dT = self.DeltaTime
    local speed = self:GetPackedRatio("Speed",0)*100
    
    --[[
    local VentWork = self:GetPackedBool("Vent1Work") and 0.72 or 0
    for i=1,7 do
        local rand = self.VentRand[i]
        local vol = self.VentVol[i]
        local target = math.min(1,VentWork*rand)*2
        if self.VentVol[i] < target then
            self.VentVol[i] = math.min(target,vol + dT/1.5*rand)
        elseif self.VentVol[i] > target then
            self.VentVol[i] = math.max(0,vol - dT/8*rand*(vol*0.3))
        end
        self.VentState[i] = (self.VentState[i] + 10*((self.VentVol[i]/2)^3)*dT)%1
        local vol1 = math.max(0,self.VentVol[i]-1)
        local vol2 = math.max(0,(self.VentVol[i-1] or self.VentVol[i+1])-1)
        self:SetSoundState("vent"..i,vol1*(0.3+vol2*0.3),0.5+0.5*vol1+math.Rand(-0.01,0.01))
        if IsValid(self.ClientEnts["vent"..i]) then
            self.ClientEnts["vent"..i]:SetPoseParameter("position",self.VentState[i])
        end
    end
    ]]
    
    local ventSpeedAdd = math.Clamp(speed/30,0,1)

    local v1state = self:GetPackedBool("Vent1Work")
    --local v2state = false--self:GetPackedBool("Vent2Work")
    for i=1,7 do
        local rand = self.VentRand[i]
        local vol = self.VentVol[i]
        local target = math.min(1,((i%2 == 0 and v1state) and 0.72 or 0)*rand+ventSpeedAdd*0.4*rand)*2
        if self.VentVol[i] < target then
            self.VentVol[i] = math.min(target,vol + dT/1.5*rand)
        elseif self.VentVol[i] > target then
            self.VentVol[i] = math.max(0,vol - dT/8*rand*(vol*0.3))
        end
        self.VentState[i] = (self.VentState[i] + 10*((self.VentVol[i]/2)^3)*dT)%1
        local vol1 = math.max(0,self.VentVol[i]-1)
        local vol2 = math.max(0,(self.VentVol[i-1] or self.VentVol[i+1])-1)
        self:SetSoundState("vent"..i,vol1*(0.9+vol2*0.3),0.5+0.5*vol1+math.Rand(-0.01,0.01))
        if IsValid(self.ClientEnts["vent"..i]) then
            self.ClientEnts["vent"..i]:SetPoseParameter("position",self.VentState[i])
        end
    end
    
    local rollingi = math.min(1,self.TunnelCoeff+math.Clamp((self.StreetCoeff-0.82)/0.3,0,1))
    local rollings = math.max(self.TunnelCoeff*0.6,self.StreetCoeff)
    -- Brake-related sounds
    local rol5 = math.Clamp(speed/1,0,1)*(1-math.Clamp((speed-3)/8,0,1))
    local rol10 = math.Clamp(speed/12,0,1)*(1-math.Clamp((speed-25)/8,0,1))
    local rol40p = Lerp((speed-25)/12,0.6,1)
    local rol40 = math.Clamp((speed-23)/8,0,1)*(1-math.Clamp((speed-55)/8,0,1))
    local rol40p = Lerp((speed-23)/50,0.6,1)
    local rol70 = math.Clamp((speed-50)/8,0,1)*(1-math.Clamp((speed-72)/5,0,1))
    local rol70p = Lerp(0.8+(speed-65)/25*0.2,0.8,1.2)
    local rol80 = math.Clamp((speed-70)/5,0,1)
    local rol80p = Lerp(0.8+(speed-72)/15*0.2,0.8,1.2)
    self:SetSoundState("rolling_5",math.min(1,rollingi*(1-rollings)+rollings*0.8)*rol5,1)
    self:SetSoundState("rolling_10",rollingi*rol10,1)
    self:SetSoundState("rolling_40",rollingi*rol40,rol40p)
    self:SetSoundState("rolling_70",rollingi*rol70,rol70p)
    self:SetSoundState("rolling_80",rollingi*rol80,rol80p)

    local rol10 = math.Clamp(speed/15,0,1)*(1-math.Clamp((speed-18)/35,0,1))
    local rol10p = Lerp((speed-15)/14,0.6,0.78)
    local rol40 = math.Clamp((speed-18)/35,0,1)*(1-math.Clamp((speed-55)/40,0,1))
    local rol40p = Lerp((speed-15)/66,0.6,1.3)
    local rol70 = math.Clamp((speed-55)/20,0,1)--*(1-math.Clamp((speed-72)/5,0,1))
    local rol70p = Lerp((speed-55)/27,0.78,1.15)
    self:SetSoundState("rolling_low"    ,rol10*rollings,rol10p) --15
    self:SetSoundState("rolling_medium2",rol40*rollings,rol40p) --57
    self:SetSoundState("rolling_high2"  ,rol70*rollings,rol70p) --70

    self.ReleasedPdT = math.Clamp(self.ReleasedPdT + 2*(-self:GetPackedRatio("BrakeCylinderPressure_dPdT",0)-self.ReleasedPdT)*dT,0,1)
    local release1 = math.Clamp((self.ReleasedPdT-0.1)/0.8,0,1)^2
    self:SetSoundState("release1",release1,1)
    self:SetSoundState("release2",(math.Clamp(0.3-release1,0,0.3)/0.3)*(release1/0.3),1.0)
    local parking_brake = self:GetPackedRatio("ParkingBrakePressure_dPdT",0)
    local parking_brake_abs = math.Clamp(math.abs(parking_brake)-0.3,0,1)
    if self.ParkingBrake1 ~= (parking_brake<1) then
        self.ParkingBrake1 = (parking_brake<1)
        if self.ParkingBrake1 then self:PlayOnce("parking_brake_en","bass",1,1) end
    end
    if self.ParkingBrake2 ~= (parking_brake>-0.8) then
        self.ParkingBrake2 = (parking_brake>-0.8)
        if self.ParkingBrake2 then self:PlayOnce("parking_brake_rel","bass",0.6,1) end
    end
    self:SetSoundState("parking_brake",parking_brake_abs,1)
    self.FrontLeak = math.Clamp(self.FrontLeak + 10*(-self:GetPackedRatio("FrontLeak")-self.FrontLeak)*dT,0,1)
    self.RearLeak = math.Clamp(self.RearLeak + 10*(-self:GetPackedRatio("RearLeak")-self.RearLeak)*dT,0,1)
    self:SetSoundState("front_isolation",self.FrontLeak,0.9+0.2*self.FrontLeak)
    self:SetSoundState("rear_isolation",self.RearLeak,0.9+0.2*self.RearLeak)

    local ramp = self:GetPackedRatio("Crane_dPdT",0)
    if ramp > 0 then
        self.CraneRamp = self.CraneRamp + ((0.2*ramp)-self.CraneRamp)*dT
    else
        self.CraneRamp = self.CraneRamp + ((0.9*ramp)-self.CraneRamp)*dT
    end
    self.CraneRRamp = math.Clamp(self.CraneRRamp + 1.0*((1*ramp)-self.CraneRRamp)*dT,0,1)
    self:SetSoundState("crane013_release",self.CraneRRamp^1.5,1.0)
    self:SetSoundState("crane013_brake",math.Clamp(-self.CraneRamp*1.5,0,1)^1.3,1.0)
    self:SetSoundState("crane013_brake2",math.Clamp(-self.CraneRamp*1.5-0.95,0,1.5)^2,1.0)

    local emergencyValveEPK = self:GetPackedRatio("EmergencyValveEPK_dPdT",0)
    self.EmergencyValveEPKRamp = math.Clamp(self.EmergencyValveEPKRamp + 1.0*((0.5*emergencyValveEPK)-self.EmergencyValveEPKRamp)*dT,0,1)
    self:SetSoundState("epk_brake",self.EmergencyValveEPKRamp,1.0)
    if emergencyValveEPK <= 0 and self.EmergencyValveEPKStart then
        self.EmergencyValveEPKStart = false
    end

    local emergencyBrakeValve = self:GetPackedRatio("EmergencyBrakeValve_dPdT", 0)
    self.EmergencyBrakeValveRamp = math.Clamp(self.EmergencyBrakeValveRamp + (emergencyBrakeValve-self.EmergencyBrakeValveRamp)*dT*8,0,1)
    self:SetSoundState("valve_brake",self.EmergencyBrakeValveRamp,0.8+math.min(0.4,self.EmergencyBrakeValveRamp*0.8))

    local doorValve1 = self:GetPackedRatio("Door2Pressure_dPdT", 0)
    self.DoorValve1Ramp = math.Clamp(self.DoorValve1Ramp + (doorValve1-self.DoorValve1Ramp)*dT*8,0,1)
    self:SetSoundState("valve_door1",math.max(self.DoorValve1Ramp-0.3, 0),0.8+math.min(0.4,self.DoorValve1Ramp*0.8))

    local doorValve2 = self:GetPackedRatio("DoorLineRightPressure_dPdT", 0)
    self.DoorValve2Ramp = math.Clamp(self.DoorValve2Ramp + (doorValve2-self.DoorValve2Ramp)*dT*8,0,1)
    self:SetSoundState("valve_door2",math.max(self.DoorValve2Ramp-0.3, 0),0.8+math.min(0.4,self.DoorValve2Ramp*0.8))

    local doorValve3 = self:GetPackedRatio("DoorLineLeftPressure_dPdT", 0)
    self.DoorValve3Ramp = math.Clamp(self.DoorValve3Ramp + (doorValve3-self.DoorValve3Ramp)*dT*8,0,1)
    self:SetSoundState("valve_door3",math.max(self.DoorValve3Ramp-0.3, 0),0.8+math.min(0.4,self.DoorValve3Ramp*0.8))

    local emergencyValve = self:GetPackedRatio("EmergencyValve_dPdT", 0)^0.4*1.2
    self.EmergencyValveRamp = math.Clamp(self.EmergencyValveRamp + (emergencyValve-self.EmergencyValveRamp)*dT*16,0,1)
    local emer_brake = math.Clamp((self.EmergencyValveRamp-0.9)/0.05,0,1)
    local emer_brake2 = math.Clamp((self.EmergencyValveRamp-0.2)/0.4,0,1)*(1-math.Clamp((self.EmergencyValveRamp-0.9)/0.1,0,1))
    self:SetSoundState("emer_brake",emer_brake,1)
    self:SetSoundState("emer_brake2",emer_brake2,math.min(1,0.8+0.2*emer_brake2))
    -- Compressor
    self:SetSoundState("compressor",self:GetPackedBool("Compressor") and 0.6 or 0,1)
    self:SetSoundState("compressor2",self:GetPackedBool("Compressor") and 0.8 or 0,1)

    local vCstate = self:GetPackedRatio("M8")/2
    if self.VentCab < vCstate then
        self.VentCab = math.min(1,self.VentCab + dT/2.7)
    elseif self.VentCab > vCstate then
        self.VentCab = math.max(0,self.VentCab - dT/2.7)
    end
    self:SetSoundState("vent_cabl",math.Clamp(self.VentCab*2,0,1) ,1)
    self:SetSoundState("vent_cabh",math.Clamp((self.VentCab-0.5)*2,0,1),1)

    if self.RingType ~= self:GetNW2Int("RingType",1) then
        self.RingType = self:GetNW2Int("RingType",1)
        self:SetSoundState(self.RingName,0,0)

        self.RingName = "ring3"
        self.RingPitch = 1
        if self.RingType == 2 then
            self.RingName = "ring2"
        elseif self.RingType==3 then
            self.RingPitch = 0.8
        elseif self.RingType==4 then
            self.RingName = "ring"
        end
    end
    if self.RingTypePA ~= self:GetNW2Int("RingTypePA",1) then
        self.RingTypePA = self:GetNW2Int("RingTypePA",1)
        self:SetSoundState(self.PARingName,0,0)

        self.RingPitchPA = 1
        if self.Type==2 then
            self.PARingName = "pu_ring2"
            if self.RingTypePA == 2 then
                self.PARingName = "pu_ring"
            elseif self.RingTypePA==3 then
                self.RingPitchPA = 0.8
            end
        else
            self.PARingName = "pa_ring"
            if self.RingTypePA == 2 then
                self.RingPitchPA = 0.8
            elseif self.RingTypePA == 3 then
                self.PARingName = "pa_ring2"
            end
        end
    end
    -- ARS/ringer alert
    self:SetSoundState(self.RingName,self:GetPackedBool("Buzzer") and 0.6 or 0,self.RingPitch)
    if self:GetPackedBool("PURingZ") and not self.PUZeroTimer  then self.PUZeroTimer = RealTime() end
    if not self:GetPackedBool("PURingZ") and self.PUZeroTimer  then self.PUZeroTimer = nil end
    local pTime = self.PUZeroTimer and RealTime()-self.PUZeroTimer
    self:SetSoundState(self.PARingName,(self.Type~=2 and self:GetPackedBool("PURing") or self.Type==2 and (self:GetPackedBool("PURing") or pTime and (pTime < 3 or pTime%1 > 0.5) and pTime<=7))  and 0.6 or 0,self.RingPitchPA)--0.79

    if self:GetPackedBool("RK") then self.RKTimer = CurTime() end
    self:SetSoundState("rk",(self.RKTimer and (CurTime() - self.RKTimer) < 0.2) and 0.7 or 0,1)

    local cabspeaker = self:GetPackedBool("AnnCab")
    local work = self:GetPackedBool("AnnPlay")
    local buzz = self:GetPackedBool("AnnBuzz") and self:GetNW2Int("AnnouncerBuzz")
    local noise = self:GetNW2Int("AnnouncerNoise", -1)
    local volume = self:GetNW2Float("UPOVolume",1)
    local noisevolume = self:GetNW2Float("UPONoiseVolume",1)

    local buzzvolume = volume
    if self.Sounds["announcer2"] and IsValid(self.Sounds["announcer2"]) then buzzvolume = (1-(self.Sounds["announcer2"]:GetLevel())*math.Rand(0.9,3))*buzzvolume end
    if self.BPSNBuzzVolume > buzzvolume then
        self.BPSNBuzzVolume = math.Clamp(self.BPSNBuzzVolume + 8*(buzzvolume-self.BPSNBuzzVolume)*dT,0.1,1)
    else
        self.BPSNBuzzVolume = math.Clamp(self.BPSNBuzzVolume + 0.4*(buzzvolume-self.BPSNBuzzVolume)*dT,0.1,1)
    end

    for k,v in ipairs(self.AnnouncerPositions) do
        local play = k==1 and cabspeaker or k~=1 and work
        self:SetSoundState("announcer_noiseW"..k,play and noisevolume*volume or 0,1)
        for i=1,3 do
            self:SetSoundState(Format("announcer_noise%d_%d",i,k),(play and i==noise) and volume*self.BPSNBuzzVolume*self:GetNW2Float("UPOBuzzVolume",1) or 0,1)
        end
        for i=1,2 do
            self:SetSoundState(Format("announcer_buzz%d_%d",i,k),(play and i==buzz) and volume*self.BPSNBuzzVolume*self:GetNW2Float("UPOBuzzVolume",1) or 0,1)
        end
        if self.Sounds["announcer"..k] and IsValid(self.Sounds["announcer"..k]) then self.Sounds["announcer"..k]:SetVolume((k ~= 1 and work or k==1 and cabspeaker) and  v[3]*volume or 0) end
    end
end

function ENT:Draw()
    self.BaseClass.Draw(self)
end
function ENT:DrawPost(special)
    --local dc = render.GetLightColor(self:LocalToWorld(Vector(460.0,0.0,5.0)))

    local distance = self:GetPos():Distance(LocalPlayer():GetPos())
    if distance > 1024 or special then return end
	self.RTMaterial:SetTexture("$basetexture", self.ECRSScr)
    self:DrawOnPanel("ECRSScreen",function(...)
        surface.SetMaterial(self.RTMaterial)
        surface.SetDrawColor(255,255,255)
        surface.DrawTexturedRectRotated(128,178,256,340,0)
    end)    
	self.RTMaterial:SetTexture("$basetexture", self.KTSOScr)
    self:DrawOnPanel("KTSOScreen",function(...)
        surface.SetMaterial(self.RTMaterial)
        surface.SetDrawColor(255,255,255)
        surface.DrawTexturedRectRotated(160,120,320,240,0)
    end) 
    self.RTMaterial:SetTexture("$basetexture", self.RVSScr)
    self:DrawOnPanel("RVSScreen",function(...)
        surface.SetMaterial(self.RTMaterial)
        surface.SetDrawColor(255,255,255)
        surface.DrawTexturedRectRotated(128,128,256,256,0)
    end)    
    self.RTMaterial:SetTexture("$basetexture",self.PAM)
    self:DrawOnPanel("PAMScreen",function(...)
        surface.SetMaterial(self.RTMaterial)
        surface.SetDrawColor(255,255,255)
        surface.DrawTexturedRectRotated(512,256,1024,512,0)
    end)
 	self.RTMaterial:SetTexture("$basetexture", self.Tickers)
    self:DrawOnPanel("Ticker",function(...)
        surface.SetMaterial(self.RTMaterial)
        surface.SetDrawColor(255,255,255)
        surface.DrawTexturedRectRotated(412,30,812,58,0)
    end)
    self:DrawOnPanel("Ticker1",function(...)
        surface.SetMaterial(self.RTMaterial)
        surface.SetDrawColor(255,255,255)
        surface.DrawTexturedRectRotated(412,30,812,58,0)
    end)
    self:DrawOnPanel("AirDistributor",function()
        draw.DrawText(self:GetNW2Bool("AD") and "Air Distributor ON" or "Air Distributor OFF","Trebuchet24",0,0,Color(0,0,0,255))
    end)
end

function ENT:OnButtonPressed(button)
    if button == "ShowHelp" then
        RunConsoleCommand("metrostroi_train_manual")
    end
end

function ENT:OnPlay(soundid,location,range,pitch)
    if location == "stop" then
        if IsValid(self.Sounds[soundid]) then
            self.Sounds[soundid]:Pause()
            self.Sounds[soundid]:SetTime(0)
        end
        return
    end
    if soundid == "pkg" then return end
    if location == "bass" then
        if soundid == "VDOL" then
            return range > 0 and "vdol_on" or "vdol_off",location,1,pitch
        end
        if soundid == "VDOP" then
            return range > 0 and "vdor_on" or "vdor_off",location,1,pitch
        end
        if soundid == "VDZ" then
            return range > 0 and "vdz_on" or "vdz_off",location,1,pitch
        end
        if soundid:sub(1,4) == "IGLA" then
            return range > 0 and "igla_on" or "igla_off",location,1,pitch
        end
        if soundid == "LK2" then
            local speed = self:GetPackedRatio("Speed")
            local id = range > 0 and "lk2_on" or "lk2_off"
            self.SoundPositions[id][1] = 350-Lerp(speed/0.1,0,250)
            return id,location,1-Lerp(speed/10,0.2,0.8),pitch
        end
        if soundid == "LK3" then
            local speed = self:GetPackedRatio("Speed")
            local id = range > 0 and "lk3_on" or "lk3_off"
            self.SoundPositions[id][1] = 350-Lerp(speed/0.1,0,250)
            return id,location,1-Lerp(speed/10,0.2,0.8),pitch
        end
        if soundid == "LK5" and range > 0 then
            local speed = self:GetPackedRatio("Speed")
            self.SoundPositions["lk5_on"][1] = 350-Lerp(speed/0.1,0,250)
            return "lk5_on",location,1-Lerp(speed/10,0.2,0.8),pitch
        end
        if soundid == "brake" then
            self:PlayOnce("brake_f",location,range,pitch)
            self:PlayOnce("brake_b",location,range,pitch)
            return
        end    
        if soundid == "RVT" then
            return range > 0 and "rvt_on" or "rvt_off",location,1,pitch
        end
        if soundid == "K6" then
            return range > 0 and "k6_on" or  "k6_off",location,1,pitch
        end
        if soundid == "R1_5" then
            return range > 0 and "r1_5_on" or "r1_5_off",location,1,pitch
        end
        if soundid == "RPB" then
            return range > 0 and "rpb_on" or "rpb_off",location,1,pitch
        end
        if soundid == "KD" then
            return range > 0 and "kd_on" or "kd_off",location,1,pitch
        end
        if soundid == "KK" then
            return range > 0 and "kk_on" or "kk_on",location,1,0.6+range*0.1
        end
        if soundid == "K25" then
            return range > 0 and "k25_on" or "k25_off",location,1,pitch
        end
        if soundid == "RO" then
            return range > 0 and "ro_on" or "ro_off",location,1,pitch
        end
        if soundid == "Rp8" then
            return range > 0 and "rp8_on" or "rp8_off",location,1,pitch
        end
        if soundid == "ROT" then
            return range > 0 and "rot_on" or "rot_off",location,1,pitch
        end
        if soundid == "AVU" then
            return range > 0 and "avu_on" or "avu_off",location,1,0.9
        end
        if soundid == "UAVAC" then
            return "uava_reset",location,range,pitch
        end        
    elseif soundid:sub(1,4)=="kv70" and self:GetNW2Bool("SecondKV") then return soundid.."_2",location,range,pitch end
    return soundid,location,range,pitch
end
Metrostroi.GenerateClientProps()