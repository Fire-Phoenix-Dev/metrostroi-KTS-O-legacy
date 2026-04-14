if not Metrostroi then return end
Metrostroi.MilasConfig = {}

function Metrostroi.AddMilasConfig(name,treename,datatable)
    if not datatable then return end --Если нихуя нет - закрываем лавочку
	if not treename then return end --Если не дали переменную под указатель - закрываем лавочку
	treename = xmltree:new()
	xml2lua.parser(treename):parse(datatable)
	datatable = treename.root
    for k,v in pairs(Metrostroi.MilasConfig) do
        if v.name == name then
            Metrostroi.MilasConfig[k] = datatable
			Metrostroi.MilasConfig[k].name = name
            print("Metrostroi Milas: Changed \""..name.."\" config.")
            return
        end
    end
    local id = table.insert(Metrostroi.MilasConfig,datatable)
    Metrostroi.MilasConfig[id].name = name
	print("Metrostroi Milas: Adding \""..name.."\" config")
end

if SERVER then

	local files = file.Find("metrostroi/milasconfig/*.lua","LUA")
    for _,filename in pairs(files) do
        AddCSLuaFile("metrostroi/milasconfig/"..filename)
        include("metrostroi/milasconfig/"..filename)
    end
	
else

	local files = file.Find("metrostroi/milasconfig/*.lua","LUA")
    for _,filename in pairs(files) do   include("metrostroi/milasconfig/"..filename) end

end