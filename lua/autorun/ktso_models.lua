-- скрипты для моделей ебаного ктс-о
-- написано лапками prizmaa. без вайбкода. через слёзы и хэнджоб.

if CLIENT then
    timer.Simple(5, function() -- функция для 717 эЛВэЗэ
        local lvz_head = {"gmod_subway_81-717_lvz", "gmod_subway_81-717_lvz_custom"}
        for _, class in pairs(lvz_head) do
            local ENT = scripted_ents.GetStored(class)

            if ENT and ENT.t then
                ENT.t.ClientProps = ENT.t.ClientProps or {}

            ENT.t.ClientProps["kts"] = {
                    model = "models/metrostroi_train/81-5402/kts_5p.mdl",
                    pos = Vector(0,0,0),
                    ang = Angle(0,0,0),
                    nohide = true,
                }
            ENT.t.ClientProps["begstroka_tabloR"] = {
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(-462,0,57),
                    ang = Angle(180,0,0),
                    nohide = true,
                }
            ENT.t.ClientProps["begstroka_tabloF"] = {
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(374.7,0,63),
                    ang = Angle(0,0,0),
                    nohide = true,
                }
            end
        end
        local lvz_middle = {"gmod_subway_81-714_lvz", "gmod_subway_81-714_lvz_custom"}
        for _, class in pairs(lvz_middle) do
            local ENT = scripted_ents.GetStored(class)

            if ENT and ENT.t then
                ENT.t.ClientProps = ENT.t.ClientProps or {}

            ENT.t.ClientProps["begstroka_tabloR"] = {
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(-448.65,0,65.7),
                    ang = Angle(180,0,0),
                    nohide = true,
                }
            ENT.t.ClientProps["begstroka_tabloF"] = {
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(435.58,0,59),
                    ang = Angle(0,0,0),
                    scale=1,
                    hide=1.5,
                }
            end
        end
        local lvz_sabl_head = {"gmod_subway_81-540_8"}
        for _, class in pairs(lvz_sabl_head) do
            local ENT = scripted_ents.GetStored(class)

            if ENT and ENT.t then
                ENT.t.ClientProps = ENT.t.ClientProps or {}

            ENT.t.ClientProps["kts"] = {
                    model = "models/metrostroi_train/81-5402/kts_5p.mdl",
                    pos = Vector(10,0,0),
                    ang = Angle(0,0,0),
                    nohide = true,
                }
            ENT.t.ClientProps["begstroka_tabloR"] = {
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(-462,0,57),
                    ang = Angle(180,0,0),
                    nohide = true,
                }
            ENT.t.ClientProps["begstroka_tabloF"] = {
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(374.7,0,63),
                    ang = Angle(0,0,0),
                    nohide = true,
                }
            end
        end
    end)
end