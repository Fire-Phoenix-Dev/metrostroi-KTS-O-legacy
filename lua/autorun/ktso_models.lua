-- скрипты для моделей ебаного ктс-о
-- написано лапками prizmaa. без вайбкода. через слёзы и хэнджоб.

if CLIENT then
    timer.Simple(1, function() -- функция для 717 эЛВэЗэ
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

            ENT.t.ClientProps["begstroka_tabloR"] = { --табло у манометров
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(-449.85,0,65.7),
                    ang = Angle(180,0,0),
                    nohide = true,
                }
            ENT.t.ClientProps["begstroka_tabloF"] = { --табло у... аа.. с другой стороны короче
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(449.15,0,57),
                    ang = Angle(0,0,0),
                    nohide = true,
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
            end
        end
        local lvz_sabl_prom = {"gmod_subway_81-541_8"}
        for _, class in pairs(lvz_sabl_prom) do
            local ENT = scripted_ents.GetStored(class)

            if ENT and ENT.t then
                ENT.t.ClientProps = ENT.t.ClientProps or {}

            ENT.t.ClientProps["begstroka_tabloR"] = { --табло у манометров
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(432.19,0,57),
                    ang = Angle(0,0,0),
                    nohide = true,
                }
            ENT.t.ClientProps["begstroka_tabloF"] = { --ай факд тхере
                    model = "models/metrostroi_train/81-5402/dev4you_begstroka.mdl",
                    pos = Vector(-449.85,0,65.7),
                    ang = Angle(180,0,0),
                    nohide = true,
                }
            end
        end
        local dottwo_head = {"gmod_subway_81-540_2_lvz"}
        for _, class in pairs(dottwo_head) do
            local ENT = scripted_ents.GetStored(class)

            if ENT and ENT.t then
                ENT.t.ClientProps = ENT.t.ClientProps or {}

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
        local lvz_head = {"gmod_subway_81-540"}
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
    end)
end
