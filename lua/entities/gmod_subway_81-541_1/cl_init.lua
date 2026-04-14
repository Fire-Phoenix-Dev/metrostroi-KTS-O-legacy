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
ENT.ClientSounds = {}
ENT.AutoAnims = {}


ENT.ClientProps["ext2"] = {
    model = "models/metrostroi_train/81-5401/5411_ext2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["int1"] = {
    model = "models/metrostroi_train/81-5401/5411_int1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["int2"] = {
    model = "models/metrostroi_train/81-5401/5411_int2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["int3"] = {
    model = "models/metrostroi_train/81-5401/5411_int3.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["int4"] = {
    model = "models/metrostroi_train/81-5401/5411_int4.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide=2,
}
ENT.ClientProps["underwagon1"] = {
    model = "models/metrostroi_train/81-5401/5401_underwagon1.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide = 2,
}
ENT.ClientProps["underwagon2"] = {
    model = "models/metrostroi_train/81-5401/5411_underwagon2.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,0,0),
    hide = 2,
}


ENT.ClientProps["otsek_cap"] = {
    model = "models/metrostroi_train/81-5401/5401_int_cover5.mdl",
    pos = Vector(0,0,0),
    ang = Angle(0,180,0),
    hideseat=1,
}

ENT.ButtonMap["FrontPneumatic"] = {
    pos = Vector(470-9,-45.0,-58.0+5),
    ang = Angle(0,90,90),
    width = 900,
    height = 100,
    scale = 0.1,
    hideseat=0.2,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "FrontBrakeLineIsolationToggle",x=000, y=0, w=400, h=100, tooltip=""},
        {ID = "FrontTrainLineIsolationToggle",x=500, y=0, w=400, h=100, tooltip=""},
    }
}
ENT.ClientProps["FrontBrake"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_red.mdl",
    pos = Vector(449+11, -34, -62),
    ang = Angle( 15,-90,0),
    hide = 2,
}
ENT.ClientProps["FrontTrain"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_blue.mdl",
    pos = Vector(449+11, 34, -62),
    ang = Angle(-15,-90,0),
    hide = 2,
}
ENT.ClientSounds["FrontBrakeLineIsolation"] = {{"FrontBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
ENT.ClientSounds["FrontTrainLineIsolation"] = {{"FrontTrain",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}


ENT.ButtonMap["RearPneumatic"] = {
    pos = Vector(-473-0.5,45.0,-58.0+5),
    ang = Angle(0,270,90),
    width = 1050,
    height = 100,
    scale = 0.1,
    hideseat=0.2,
    hide=true,
    screenHide = true,

    buttons = {
        {ID = "RearTrainLineIsolationToggle",x=500, y=0, w=400, h=100, tooltip=""},
        {ID = "RearBrakeLineIsolationToggle",x=000, y=0, w=400, h=100, tooltip=""},
        {ID = "ParkingBrakeToggle",x=900, y=0, w=150, h=100, tooltip=""},
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
}
ENT.ClientProps["ParkingBrake"] = {--
    model = "models/metrostroi_train/bogey/disconnect_valve_white.mdl",
    pos = Vector(-450-22, -55, -62),
    ang = Angle(-15,90,0),
    hide = 0.5,
}
ENT.ClientSounds["ParkingBrake"] = {{"ParkingBrake",function() return "disconnect_valve" end,1,1,50,1e3,Angle(-90,0,0)}}
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

-- Battery panel
ENT.ButtonMap["Battery"] = {
    pos = Vector(-470.0,-16.5,52),
    ang = Angle(0,-90,180),
    width = 100,
    height = 100,
    scale = 0.08,
    hide=0.8,

    buttons = {
        {ID = "VBToggle", x=0, y=0, w=100, h=100, tooltip="ВБ: Выключатель батареи", model = {
            model = "models/metrostroi_train/81-717/battery_enabler.mdl",
            var="VB",speed=0.5,vmin=1,vmax=0.8,
            sndvol = 0.8, snd = function(val) return val and "pak_on" or "pak_off" end,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ButtonMap["couch_cap"] = {
    pos = Vector(-460,60,0),
    ang = Angle(0,0,70),
    width = 1000,
    height = 600,
    scale = 0.0625,
    hide=0.8,
    buttons = {
        {ID = "CouchCap",x=0,y=0,w=1000,h=600, tooltip=""}
    }
}
ENT.ButtonMap["couch_cap_o"] = {
    pos = Vector(-460,55,-25),
    ang = Angle(0,0,0),
    width = 1100,
    height = 380,
    scale = 0.0625,
    hide=0.8,
    buttons = {
        {ID = "CouchCap",x=0,y=0,w=1100,h=380, tooltip=""}
    }
}
ENT.ButtonMap["Stopkran"] = {
    pos = Vector(-397,-60,0),
    ang = Angle(0,180,70),
    width = 1000,
    height = 600,
    scale = 0.0625,
    hide=0.8,
    buttons = {
        {ID = "EmergencyBrakeValveToggle",x=0,y=0,w=1000,h=600,tooltip=""},
    }
}


ENT.ButtonMap["DoorCrane2"] = {
    pos = Vector(292,-62,24),
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
    pos = Vector(284.2,-62.41,21.45),
    ang = Angle(0,180,0),
    hideseat=0.2,
}
ENT.ButtonMap["DoorCrane3"] = {
    pos = Vector(277,62,24),
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
    pos = Vector(284.2,62.41,21.45),
    ang = Angle(0,0,0),
    hideseat=0.2,
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

ENT.ButtonMap["AV_S"] = {
    pos = Vector(-456,60,-15),
    ang = Angle(0,0,90),
    width = 325,
    height = 205,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "A53Toggle",x=25*0,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A56Toggle",x=25*1,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A54Toggle",x=25*2,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A24Toggle",x=25*3,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A39Toggle",x=25*4,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A23Toggle",x=25*5,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A14Toggle",x=25*6,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A13Toggle",x=25*7,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A31Toggle",x=25*8,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A32Toggle",x=25*9,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A16Toggle",x=25*10,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A12Toggle",x=25*11,y=80*0,w=25,h=45,tooltip=""},
        {ID = "A49Toggle",x=25*12,y=80*0,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A15Toggle",x=25*0,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A27Toggle",x=25*1,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A50Toggle",x=25*2,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A8Toggle",x=25*3,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A52Toggle",x=25*4,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A19Toggle",x=25*5,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A10Toggle",x=25*6,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A22Toggle",x=25*7,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A30Toggle",x=25*8,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A1Toggle",x=25*9,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A2Toggle",x=25*10,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A3Toggle",x=25*11,y=80*1,w=25,h=45,tooltip=""},
        {ID = "A4Toggle",x=25*12,y=80*1,w=25,h=45,tooltip=""},
        ------------------------------------------------------------------------
        {ID = "A5Toggle",x=25*0,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A6Toggle",x=25*1,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A72Toggle",x=25*2,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A38Toggle",x=25*3,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A20Toggle",x=25*4,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A25Toggle",x=25*5,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A37Toggle",x=25*6,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A55Toggle",x=25*7,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A45Toggle",x=25*8,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A66Toggle",x=25*9,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A51Toggle",x=25*10,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A65Toggle",x=25*11,y=80*2,w=25,h=45,tooltip=""},
        {ID = "A28Toggle",x=25*12,y=80*2,w=25,h=45,tooltip=""},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_S.buttons) do
    button.model = {
        model = "models/metrostroi_train/81-720/button_av1.mdl",
        var=button.ID:Replace("Toggle",""),speed=8,
        sndvol = 0.8,snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
    }
    button.ID = "1:"..button.ID
end
ENT.ButtonMap["AV_T"] = {
    pos = Vector(-470,30,-18),
    ang = Angle(0,80,90),
    width = 200,
    height = 45,
    scale = 0.0625,
    hide=0.8,

    buttons = {
        {ID = "A70Toggle",x=25*0,y=0,w=25,h=45,tooltip=""},
        {ID = "A81Toggle",x=25*4,y=0,w=25,h=45,tooltip=""},
        {ID = "A80Toggle",x=25*5,y=0,w=25,h=45,tooltip=""},
        {ID = "A18Toggle",x=25*6,y=0,w=25,h=45,tooltip=""},
    }
}
for i,button in pairs(ENT.ButtonMap.AV_T.buttons) do
    button.model = {
        model = "models/metrostroi_train/81-720/button_av1.mdl",
        var=button.ID:Replace("Toggle",""),speed=8,
        sndvol = 0.8,snd = function(val) return val and "av_on" or "av_off" end,sndmin = 80,sndmax = 1e3/3,sndang = Angle(-90,0,0),
    }
    button.ID = "1:"..button.ID
end

ENT.ButtonMap["DriverValveBLTLDisconnect"] = {
    pos = Vector(-466,44,-18),
    ang = Angle(0,80,90),
    width = 160,
    height = 140,
    scale = 0.0625,

    buttons = {
        {ID = "DriverValveBLDisconnectToggle", x=0, y=0, w=80, h=140, tooltip="", model = {
            var="DriverValveBLDisconnect",sndid="brake_disconnect",
            sndvol = 1, snd = function(val) return "disconnect_valve" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
        {ID = "DriverValveTLDisconnectToggle", x=80, y=0, w=80, h=140, tooltip="", model = {
            var="DriverValveTLDisconnect",sndid="train_disconnect",
            sndvol = 1, snd = function(val) return val and "pneumo_TL_open" or "pneumo_TL_disconnect" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}

ENT.ClientProps["brake_disconnect"] = {
    model = "models/metrostroi_train/81-707/cran1.mdl",
    pos = Vector(-466,47,-24),
    ang = Angle(90,80,90),
    hideseat=0.2,
}
ENT.ClientProps["train_disconnect"] = {
    model = "models/metrostroi_train/81-707/cran3.mdl",
    pos = Vector(-465,51,-24),
    ang = Angle(90,80,90),
    hideseat=0.2,
}
ENT.ClientProps["brake013"] = {
    model = "models/metrostroi_train/81-717/cran13.mdl",
    pos = Vector(-466,49,-10),
    ang = Angle(0,58,0),
    hideseat = 0.2,
}
if not ENT.ClientSounds["br_013"] then ENT.ClientSounds["br_013"] = {} end
table.insert(ENT.ClientSounds["br_013"],{"brake013",function(ent,_,var) return "br_013" end,0.7,1,50,1e3,Angle(-90,0,0)})

ENT.ButtonMap["Shunt"] = {
    pos = Vector(-468,28,-5),
    ang = Angle(0,80,90),
    width = 206,
    height = 200,
    scale = 0.0625,
    hideseat=0.2,

    buttons = {
        {ID = "BPSNonToggle",x=39,y=30,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-5,
            var="BPSNon",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end,sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "!RZPLight",x=39,y=130,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_slc77.mdl",z = -3,
            lamp = {model = "models/metrostroi_train/81-717/buttons/slc_77_lamp.mdl",ang=2,x=-0.3,y=-0.3,z=20.6,var="RZP",color=Color(255,60,40)}
        }},
        {ID = "ConverterProtectionSet",x=39,y=180,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -4,
            var="ConverterProtection",speed=16,min=1,max=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button3_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "L_1Toggle",x=80,y=30,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_tumbler_pp250.mdl",ang = 180,z=-5,
            var="L_1",speed=16,
            sndvol = 1,snd = function(val) return val and "switch_on" or "switch_off" end, sndmin = 90,sndmax = 1e3,sndang = Angle(-90,0,0),
        }},
        {ID = "StartSet",x=80,y=180,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="Start",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button3_on" or "button2_off" end, sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},
        {ID = "VozvratRPSet",x=121,y=180,radius=20,tooltip="",model = {
            model = "models/metrostroi_train/81-710/ezh3_button_black.mdl",z = -3,
            var="VozvratRP",speed=16,vmin=1,vmax=0,
            sndvol = 0.07,snd = function(val) return val and "button2_on" or "button1_off" end,sndmin = 60,sndmax = 1e3/3,sndang = Angle(-90,0,0),
        }},

        {ID = "RV", x=176, y=140, radius=0, model = {
            model = "models/metrostroi_train/81-717/buttons/breaker_common001.mdl",ang=270,z=12,
            var="RV",speed=2,min=1,max=0.5,getfunc = function(ent) return ent:GetPackedRatio("RV") end,
            sndvol = 0.8, snd = function(_,val) return val%2>0 and "pak_on" or "pak_off" end,sndmin = 80, sndmax = 1e3/3, sndang = Angle(-90,0,0),
        }},
        {ID="RV-",x=176-30, y=140-30, w=30,h=60, tooltip="ВТПР(влево)"},
        {ID="RV+",x=176   , y=140-30, w=30,h=60, tooltip="ВТПР(вправо)"},
    }
}

ENT.ButtonMap["VU"] = {
    pos = Vector(-468.7,24,-5),
    ang = Angle(0,80,90),
    width = 60,
    height = 120,
    scale = 0.0625,
    hideseat = 0.2,

    buttons = {
        {ID = "A84Toggle", x=0, y=0, w=60,h=120, tooltip="", model = {
            model = "models/metrostroi_train/Equipment/vu22_brown.mdl", z=-20, ang = Angle(180,-90,0),
            plomb = {model = "models/metrostroi_train/equipment/vu_plomb_right.mdl",ang=Angle(-90,90,0),x=25,y=33.2,z=9.3,var="A84Pl", ID="A84Pl",},
            var="A84",speed=6,
            sndvol = 1, snd = function(val) return val and "vu22_on" or "vu22_off" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(0,0,0),
        }},
    }
}

ENT.ButtonMap["FrontDoor"] = {
    pos = Vector(470-11,16,48.4-2),
    ang = Angle(0,-90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "FrontDoor",x=0,y=0,w=642,h=1900, tooltip="Передняя дверь", model = {
            var="door1",sndid="door1",
            sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ClientProps["door1"] = {
    model = "models/metrostroi_train/81-5401/5401_ext_door2.mdl",
    pos = Vector(456.73,-18.55,-1.15),
    ang = Angle(0,180,0),
    hide=2,
}

ENT.ButtonMap["RearDoor"] = {
    pos = Vector(-470-3,-16,48.4-2),
    ang = Angle(0,90,90),
    width = 642,
    height = 1900,
    scale = 0.1/2,
    buttons = {
        {ID = "RearDoor",x=0,y=0,w=642,h=1900, tooltip="Задняя дверь", model = {
            var="door2",sndid="door2",
            sndvol = 1, snd = function(val) return val and "cab_door_open" or "cab_door_close" end,
            sndmin = 90, sndmax = 1e3, sndang = Angle(-90,0,0),
        }},
    }
}
ENT.ClientProps["door2"] = {
    model = "models/metrostroi_train/81-5401/5401_ext_door2.mdl", --"models/metrostroi_train/81-717/door_torec_spb.mdl",
    pos = Vector(-469.82,18.52,-1.15),
    ang = Angle(0,0,0),
    hide=2,
}

ENT.ButtonMap["Ticker"] = {
    pos = Vector(394,25.725,62.66),
    ang = Angle(0,-90,99.35),
    width = 694,
    height = 45,
    scale = 0.074,
    hideseat=1.5,
}
ENT.ButtonMap["Ticker1"] = {
    pos = Vector(-406.12,-25.725,62.66),
    ang = Angle(0,90,99.35),
    width = 694,
    height = 45,
    scale = 0.074,
    hideseat=1.5,
}
--------------------------------------------------------------------------------
ENT.ClientPropsInitialized = false
ENT.ClientProps["train_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(-465.06,8.75,58.7),
    ang = Angle(-90,0,180),  
    hideseat=0.8,
}
ENT.ClientProps["brake_line"] = {
    model = "models/metrostroi_train/Equipment/arrow_tm.mdl",
    pos = Vector(-465.1,8.75,58.7),
    ang = Angle(-90,0,180),    
    hideseat=0.8,
}
ENT.ClientProps["brake_cylinder"] = {
    model = "models/metrostroi_train/Equipment/arrow_nm.mdl",
    pos = Vector(-465,14.05,58.6),
    ang = Angle(-90,0,180),
    hideseat=0.8,
}
--------------------------------------------------------------------------------
ENT.ClientProps["voltmeter"] = {
    model = "models/metrostroi_train/81-710/ezh3_voltages.mdl",
    pos = Vector(-464.9,-13.07,57.2),
    ang = Angle(-90,0,180),
    hideseat=0.8,
    bscale = Vector(1,1,1.4)
}
ENT.ClientProps["ampermeter"] = {
    model = "models/metrostroi_train/81-710/ezh3_voltages.mdl",
    pos = Vector(-464.9,-8.02,57.2),
    ang = Angle(-90,0,180),
    hideseat=0.8,
    bscale = Vector(1,1,1.4)
}


ENT.ClientProps["bortlamps1"] = {
    model = "models/metrostroi_train/81-502/bort_lamps_body.mdl",
    pos = Vector(-52,67,45.5),
    ang = Angle(0,0,0),
    hide = 2,
}
ENT.ClientProps["bortlamp1_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.9,3.25),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp1_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.9,-0.1),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp1_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps1.pos+Vector(0,0.9,-3.3),
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
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.9,3.25),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp2_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.9,-0.1),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp2_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps2.pos+Vector(0,-0.9,-3.3),
    ang = Angle(0,180,0),
    nohide = true,
}
--[[
ENT.ClientProps["bortlamps3"] = {
    model = "models/metrostroi_train/81-502/bort_lamps_body.mdl",
    pos = Vector(-6.5,67,51.2),
    ang = Angle(90,0,0),
    hide = 2,
}
ENT.ClientProps["bortlamp3_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps3.pos+Vector(3.28,0.9,-0.02),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp3_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps3.pos+Vector(-0.06,0.9,-0.02),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamp3_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps3.pos+Vector(-3.33,0.9,-0.02),
    ang = Angle(0,0,0),
    nohide = true,
}
ENT.ClientProps["bortlamps4"] = {
    model = "models/metrostroi_train/81-502/bort_lamps_body.mdl",
    pos = Vector(-6.5,-67,51.2),
    ang = Angle(90,180,0),
    hide = 2,
}
ENT.ClientProps["bortlamp4_w"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_b.mdl",
    pos = ENT.ClientProps.bortlamps4.pos+Vector(-3.28,-0.9,-0.02),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp4_g"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_g.mdl",
    pos = ENT.ClientProps.bortlamps4.pos+Vector(0.06,-0.9,-0.02),
    ang = Angle(0,180,0),
    nohide = true,
}
ENT.ClientProps["bortlamp4_y"] = {
    model = "models/metrostroi_train/equipment/bort_lamps_y.mdl",
    pos = ENT.ClientProps.bortlamps4.pos+Vector(3.33,-0.9,-0.02),
    ang = Angle(0,180,0),
    nohide = true,
}--]]
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
for k=0,1 do
    for i=0,3 do
        ENT.ButtonMap["BlockDoors"..i..k] = {
            pos = Vector(304.45-230.1*i+68.25,k == 0 and -64 or 60,-24),
            ang = Angle(90,90,-90),
            width = 100,
            height = 100,
            scale = 0.04,
            buttons = {
                {ID = "BlockDoors"..(i+1)..(k+1),x=0,y=0,w=100,h=100,tooltip=""},
            }        
        }
    end
end
for i=0,3 do
    for k=0,1 do
        ENT.ClientProps["bd_wrench"..(i+1)..(k+1)] = {
            model = "models/metrostroi_train/reversor/reversor_classic.mdl",
            pos = Vector(313-230.1*i+51.25,k == 0 and -63.5 or 63.4,-26.48),
            ang = Angle(0,-90,-180),
            hide = 0.5,
            --scale = 1,
        }
    end
end
for i = 0,15 do
    --[[
    local b = 15--math.random()*15
    local g = 15--b+math.random()*(15-b)
    if math.random() > 0.4 then
        g = math.random()*15
        b = g
    else
        g = 15
        b = -10+math.random()*25
    end
    ]]
    ENT.ClientProps["lamp1_"..i+1] = {
        model = "models/metrostroi_train/81-5401/5401_int_lamp1.mdl",--"models/metrostroi_train/81-717/lamps/lamp_typ1.mdl",
        pos = Vector(397.37 - 57.66*(i-i%2),(i%2)*-79,-0.04),
        ang = Angle(0,0,0),
        color = Color(255,255,255),--Color(255,235+g,235+b),
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
for i=0,4 do
    ENT.ClientProps["TrainNumberL"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(41+16+i*6.6-5*6.6/2,67.4,-17.8),
        ang = Angle(0,180,0),
        skin=i,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
    ENT.ClientProps["TrainNumberR"..i] = {
        model = "models/metrostroi_train/common/bort_numbers.mdl",
        pos = Vector(64+16-i*6.6-5*6.6/2,-67.4,-17.8),
        ang = Angle(0,0,0),
        skin=i,
        hide = 1.5,
        callback = function(ent)
            ent.WagonNumber = false
        end,
    }
end
--------------------------------------------------------------------------------
function ENT:UpdateWagonNumber()
    local count = math.max(4,math.ceil(math.log10(self.WagonNumber+1)))
    for i=0,4 do
        self:ShowHide("TrainNumberL"..i,i<count)
        self:ShowHide("TrainNumberR"..i,i<count)
        if i< count and self.WagonNumber then
            local leftNum,rightNum = self.ClientEnts["TrainNumberL"..i],self.ClientEnts["TrainNumberR"..i]
            local num = math.floor(self.WagonNumber%(10^(i+1))/10^i)
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
function ENT:Initialize()
    self.BaseClass.Initialize(self)
    
    self.Tickers = self:CreateRT("7171Ticker",1024,64)

    
    self.CraneRamp = 0
    self.CraneLRamp = 0
    self.CraneRRamp = 0
    self.EmergencyBrakeValveRamp = 0
    self.DoorValve2Ramp = 0
    self.DoorValve3Ramp = 0
    self.ReleasedPdT = 0
    self.FrontLeak = 0
    self.RearLeak = 0

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
--------------------------------------------------------------------------------

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

local Cpos = {
    0,0.2,0.4,0.5,0.6,0.8,1
}
local BDWrench = {
    {0.0,Vector(0,0,0)},
    {0.5,Vector(0,-0.3,0.15)},
    {1.0,Vector(0,-0.4,0.45)},
}

function ENT:Think()
    self.BaseClass.Think(self)
    if self.FirstTick~=false and (not self.RenderClientEnts or self.CreatingCSEnts) then
        self.RKTimer = nil
        return
    end

    --[[
    if self.Scheme ~= self:GetNW2Int("Scheme",1) then
        self.PassSchemesDone = false
        self.Scheme = self:GetNW2Int("Scheme",1)
    end
    if not self.PassSchemesDone and IsValid(self.ClientEnts.schemes) then
        local scheme = Metrostroi.Skins["717_new_schemes"] and Metrostroi.Skins["717_new_schemes"][self.Scheme]
        self.ClientEnts.schemes:SetSubMaterial(1,scheme and scheme[1])
        self.PassSchemesDone = true
    end
    ]]

    local Bortlamp_w = self:Animate("Bortlamp_w",self:GetPackedBool("DoorsW") and 1 or 0,0,1,16,false)
    local Bortlamp_g = self:Animate("Bortlamp_g",self:GetPackedBool("GRP") and 1 or 0,0,1,16,false)
    local Bortlamp_y = self:Animate("Bortlamp_y",self:GetPackedBool("BrW") and 1 or 0,0,1,16,false)
    self:ShowHideSmooth("bortlamp1_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp1_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp1_y",Bortlamp_y)
    self:ShowHideSmooth("bortlamp2_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp2_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp2_y",Bortlamp_y)
    self:ShowHideSmooth("bortlamp3_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp3_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp3_y",Bortlamp_y)
    self:ShowHideSmooth("bortlamp4_w",Bortlamp_w)
    self:ShowHideSmooth("bortlamp4_g",Bortlamp_g)
    self:ShowHideSmooth("bortlamp4_y",Bortlamp_y)


    self:Animate("int_cover3", (self:GetPackedBool("int_cover3") and 1 or 0),0,1,1,false)
    self:Animate("int_cover4", (self:GetPackedBool("int_cover4") and 1 or 0),0,1,1,false)
  
    self:Animate("doorcrane2", self:GetPackedBool("DoorCrane2",false) and 1 or 0,0,0.5,2,false)
    self:Animate("doorcrane3", self:GetPackedBool("DoorCrane3",false) and 1 or 0,0,0.5,2,false)
    
    local capOpened = self:Animate("otsek_cap",self:GetPackedBool("CouchCap") and 1 or 0,0,1,  1,false) > 0
    self:HidePanel("couch_cap",capOpened)
    self:HidePanel("couch_cap_o",not capOpened)
    self:HidePanel("AV_S",not capOpened)
    self:HidePanel("AV_T",not capOpened)
    self:HidePanel("Stopkran",not capOpened)
    self:ShowHide("otsek_cap_r",not capOpened)
    self:ShowHide("brake013",capOpened)
    self:ShowHide("brake_disconnect",capOpened)
    self:ShowHide("train_disconnect",capOpened)
    self:HidePanel("DriverValveBLTLDisconnect",not capOpened)
    self:HidePanel("Shunt",not capOpened)
    self:HidePanel("VU",not capOpened)

    self:Animate("brake_disconnect",self:GetPackedBool("DriverValveBLDisconnect") and 1 or 0,0.25,0,  4,false)
    self:Animate("train_disconnect",self:GetPackedBool("DriverValveTLDisconnect") and 1 or 0,0.25,0,  4,false)
    self:Animate("brake013",Cpos[self:GetPackedRatio("CranePosition")] or 0, 0.03, 0.458,  256,24)

    self:Animate("brake_line",      self:GetPackedRatio("BLPressure"),0.14, 0.875,  256,2)--,,0.01)
    self:Animate("train_line",      self:GetPackedRatio("TLPressure"),0.14, 0.875,  256,2)--,,0.01)
    self:Animate("brake_cylinder",  self:GetPackedRatio("BCPressure"),0.14, 0.875,  256,2)--,,0.03)
    self:Animate("voltmeter",       self:GetPackedRatio("BatteryVoltage"),0.601, 0.400)
    if self:GetPackedRatio("BatteryVoltage") > 0 then
        self:Animate("ampermeter",      0.47+math.Clamp((self:GetPackedRatio("BatteryVoltage")-0.44)/1.3,0,1),0.604, 0.398)
    else
        self:Animate("ampermeter",      0.5,0.604, 0.398)
    end

    if self.LampType ~= self:GetNW2Int("LampType",1) then
        self.LampType = self:GetNW2Int("LampType",1)
    end
    for i = 1,16 do
        self:ShowHideSmooth("lamp1_"..i,self:Animate("Lamp1_"..i,(self:GetPackedBool("lightsActive"..i)) and self:GetPackedRatio("lightsActive") or 0,0,1,6,false))
    end

    local door1 = self:Animate("door1", self:GetPackedBool("FrontDoor") and 1 or 0,0,1, 4, 0.5)
    local door2 = self:Animate("door2", self:GetPackedBool("RearDoor") and 1 or 0,0,1, 4, 0.5)--and (self:GetPackedBool("CouchCap") and 0.25 or 1) or 

    if self.Door1 ~= (door1 > 0.25) then
        self.Door1 = door1 > 0.25
        self:PlayOnce("door1","bass",self.Door1 and 1 or 0)
    end
    if self.Door2 ~= (door2 > 0.25) then
        self.Door2 = door2 > 0.25
        self:PlayOnce("door2","bass",self.Door2 and 1 or 0)
    end


    self:Animate("FrontBrake", self:GetNW2Bool("FbI") and 0 or 1,0,1, 3, false)
    self:Animate("FrontTrain",  self:GetNW2Bool("FtI") and 1 or 0,0,1, 3, false)
    self:Animate("RearBrake",   self:GetNW2Bool("RbI") and 0 or 1,0,1, 3, false)
    self:Animate("RearTrain",   self:GetNW2Bool("RtI") and 1 or 0,0,1, 3, false)
    self:Animate("ParkingBrake",    self:GetPackedBool("ParkingBrake") and 1 or 0,1,0, 3, false)
    
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
                self.ClientEnts["bd_wrench"..i..k]:SetLocalAngles(Angle(90*state,90,0))             
                self.ClientEnts["bd_wrench"..i..k]:SetLocalPos(self.ClientProps["bd_wrench"..i..k].pos+interpolate(BDWrench,state))
            end
            self:ShowHideSmooth("bd_wrench"..i..k, CurTime() < self["BlockDoorsResetTime"..i..k]+1 and 1 or 0.1)    
        end
    end

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
    
    --self.TunnelCoeff = 0.8
    --self.StreetCoeff = 0
    local rollingi = math.min(1,self.TunnelCoeff+math.Clamp((self.StreetCoeff-0.82)/0.3,0,1))
    local rollings = math.max(self.TunnelCoeff*0.6,self.StreetCoeff)
    --if self:EntIndex() == 3239 then LocalPlayer():ChatPrint(Format("T: %.2f, S: %.2f",rollingi,rollings)) end
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
    --local rol80 = math.Clamp((speed-70)/5,0,1)
    --local rol80p = Lerp(0.8+(speed-72)/15*0.2,0.8,1.2)
    self:SetSoundState("rolling_low"    ,rol10*rollings,rol10p) --15
    self:SetSoundState("rolling_medium2",rol40*rollings,rol40p) --57
    --self:SetSoundState("rolling_medium1",0 or rol40*rollings,rol40p) --57
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
    self:SetSoundState("crane334_brake",0,1.0)
    self:SetSoundState("crane334_brake_reflection",0,1.0)
    self:SetSoundState("crane334_brake_slow",0,1.0)
    self:SetSoundState("crane334_release",0,1.0)
    self:SetSoundState("crane013_release",self.CraneRRamp^1.5,1.0)
    self:SetSoundState("crane013_brake",math.Clamp(-self.CraneRamp*1.5-0.1,0,1)^1.3,1.0)
    local loudV = self:GetNW2Float("Crane013Loud",0)
    if loudV>0 then
        if ramp>0 then
            self.CraneLRamp = self.CraneLRamp + (math.min(ramp,0)-self.CraneLRamp)*dT*0.5
        else
            self.CraneLRamp = self.CraneLRamp + (math.min(ramp,0)-self.CraneLRamp)*dT*1
        end
        self:SetSoundState("crane013_brake_l",(math.Clamp(-self.CraneRamp*2.5-0.1,0,1)^1.3)*(1-math.Clamp((-self.CraneLRamp-loudV)*3,0,1)),1.12-math.Clamp((-self.CraneLRamp-0.15)*2,0,1)*0.12)
    else
        self:SetSoundState("crane013_brake_l",0,1)
    end
    self:SetSoundState("crane013_brake2",math.Clamp(-self.CraneRamp*1.5-0.95,0,1.5)^2,1.0)
    
    local emergencyBrakeValve = self:GetPackedRatio("EmergencyBrakeValve_dPdT", 0)
    self.EmergencyBrakeValveRamp = math.Clamp(self.EmergencyBrakeValveRamp + (emergencyBrakeValve-self.EmergencyBrakeValveRamp)*dT*8,0,1)
    self:SetSoundState("valve_brake",self.EmergencyBrakeValveRamp,0.8+math.min(0.4,self.EmergencyBrakeValveRamp*0.8))

    local doorValve2 = self:GetPackedRatio("DoorLineRightPressure_dPdT", 0)
    self.DoorValve2Ramp = math.Clamp(self.DoorValve2Ramp + (doorValve2-self.DoorValve2Ramp)*dT*8,0,1)
    self:SetSoundState("valve_door2",math.max(self.DoorValve2Ramp-0.3, 0),0.8+math.min(0.4,self.DoorValve2Ramp*0.8))

    local doorValve3 = self:GetPackedRatio("DoorLineLeftPressure_dPdT", 0)
    self.DoorValve3Ramp = math.Clamp(self.DoorValve3Ramp + (doorValve3-self.DoorValve3Ramp)*dT*8,0,1)
    self:SetSoundState("valve_door3",math.max(self.DoorValve3Ramp-0.3, 0),0.8+math.min(0.4,self.DoorValve3Ramp*0.8))
    
    -- Compressor
    self:SetSoundState("compressor",self:GetPackedBool("Compressor") and 0.6 or 0,1)
    self:SetSoundState("compressor2",self:GetPackedBool("Compressor") and 0.8 or 0,1)

    -- RK rotation
    if self:GetPackedBool("RK") then self.RKTimer = CurTime() end
    self:SetSoundState("rk",(self.RKTimer and (CurTime() - self.RKTimer) < 0.2) and 0.7 or 0,1)

    local work = self:GetPackedBool("AnnPlay")
    local buzz = self:GetPackedBool("AnnBuzz") and self:GetNW2Int("AnnouncerBuzz")
    local noise = self:GetNW2Int("AnnouncerNoise", -1)
    local volume = self:GetNW2Float("UPOVolume",1)
    local noisevolume = self:GetNW2Float("UPONoiseVolume",1)
    local buzzvolume = volume
    if self.Sounds["announcer1"] and IsValid(self.Sounds["announcer1"]) then buzzvolume = (1-(self.Sounds["announcer1"]:GetLevel())*math.Rand(0.9,3))*buzzvolume*2 end
    if self.BPSNBuzzVolume > buzzvolume then
        self.BPSNBuzzVolume = math.Clamp(self.BPSNBuzzVolume + 8*(buzzvolume-self.BPSNBuzzVolume)*dT,0.1,1)
    else
        self.BPSNBuzzVolume = math.Clamp(self.BPSNBuzzVolume + 0.4*(buzzvolume-self.BPSNBuzzVolume)*dT,0.1,1)
    end

    for k,v in ipairs(self.AnnouncerPositions) do
        self:SetSoundState("announcer_noiseW"..k,work and v[3]*noisevolume*volume or 0,1)
        for i=1,3 do
            self:SetSoundState(Format("announcer_noise%d_%d",i,k),(work and i==noise) and v[3]*volume*self.BPSNBuzzVolume*self:GetNW2Float("UPOBuzzVolume",1) or 0,1)
        end
        for i=1,2 do
            self:SetSoundState(Format("announcer_buzz%d_%d",i,k),(work and i==buzz) and v[3]*volume*self.BPSNBuzzVolume*self:GetNW2Float("UPOBuzzVolume",1) or 0,1)
        end
        if self.Sounds["announcer"..k] and IsValid(self.Sounds["announcer"..k]) then self.Sounds["announcer"..k]:SetVolume(work and v[3]*volume or 0) end
    end
end

function ENT:Draw()
    self.BaseClass.Draw(self)
end

function ENT:DrawPost()
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
            self.SoundPositions["lk5_on"][1] = 440-Lerp(speed/0.1,0,330)
            return "lk5_on",location,1-Lerp(speed/10,0.2,0.8),pitch
        end
        if soundid == "brake" then
            self:PlayOnce("brake_f",location,range,pitch)
            self:PlayOnce("brake_b",location,range,pitch)
            return
        end
        if soundid == "KK" then
            return range > 0 and "kk_on" or "kk_off",location,1,0.8
        end
    end
    return soundid,location,range,pitch
end
Metrostroi.GenerateClientProps()
