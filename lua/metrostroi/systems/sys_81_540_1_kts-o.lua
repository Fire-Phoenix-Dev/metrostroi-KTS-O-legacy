-----------------------------------------------------------------
-- 81-717.5П КТС-О (ported to 81-540.1)
-----------------------------------------------------------------
Metrostroi.DefineSystem("81_540_1_KTS_O")
TRAIN_SYSTEM.DontAccelerateSimulation = true

function TRAIN_SYSTEM:Initialize()
	self.Train:LoadSystem("KTSO_Menu","Relay","Switch",{bass = true})
    self.Train:LoadSystem("KTSO_Up","Relay","Switch",{bass = true })
    self.Train:LoadSystem("KTSO_Down","Relay","Switch",{bass = true })
    self.Train:LoadSystem("KTSO_Enter","Relay","Switch",{bass = true })
    self.Train:LoadSystem("KTSO_P","Relay","Switch",{bass = true })
    
    self.TriggerNames = {
		"KTSO_Menu",
		"KTSO_Up",
		"KTSO_Down",
		"KTSO_Enter",
        "KTSO_P"
    }
    self.Triggers = {}
	for k,v in pairs(self.TriggerNames) do
		self.Triggers[v] = false
	end
	
	self.State = 0
	self.Select = 1
	
	self.Route = 1
	self.Direction = 1
	self.Station = 1
	
	self.OnStation = false
	self.ODZ = false

	self.Time = 0

	self.Line = 1
end

function TRAIN_SYSTEM:Outputs()
    return {}
end

function TRAIN_SYSTEM:Inputs()
   return {"CheckUPO"}
end
if TURBOSTROI then return end

function TRAIN_SYSTEM:TriggerInput(name,value)
	if name == "CheckUPO" then
		self.UPOTriggired = true
		if self.OnStation then 
			if Metrostroi.MilasConfig and Metrostroi.MilasConfig[self.Route] and Metrostroi.MilasConfig[self.Route].route then
				local cfg = Metrostroi.MilasConfig[self.Route].route
				if cfg.direction and #cfg.direction > 0 then
					if cfg.direction[self.Direction] and cfg.direction[self.Direction].station and #cfg.direction[self.Direction].station > 0 then
						if self.Station == #cfg.direction[self.Direction].station then
							self.Station = 1
						else
							self.Station = self.Station + 1
						end
					else
						self.Station = 1
					end
				else
					if cfg.direction and cfg.direction.station and #cfg.direction.station > 0 then
						if self.Station == #cfg.direction.station then
							self.Station = 1
						else
							self.Station = self.Station + 1
						end
					else
						self.Station = 1
					end
				end
			else
				self.Station = 1
			end
			self.ODZ = true
			self.ODZTimer = CurTime()
		end
		self.OnStation = not self.OnStation
		self:UpdateBoards()
	end
end

if SERVER then
	function TRAIN_SYSTEM:UpdateBoards()
		if not (self.Train and self.Train.GetWagonNumber) then return end
		self.Train:CANWrite("KTS_O",self.Train:GetWagonNumber(),"Ticker",nil,"Activate")
		self.Train:CANWrite("KTS_O",self.Train:GetWagonNumber(),"Ticker",nil,"Station",self.OnStation)
		self.Train:CANWrite("KTS_O",self.Train:GetWagonNumber(),"Ticker",nil,"ODZ",self.ODZ)
		local msg = ""
		if Metrostroi.MilasConfig and Metrostroi.MilasConfig[self.Route] and Metrostroi.MilasConfig[self.Route].route then
			local stbl = Metrostroi.MilasConfig[self.Route].route
			if stbl.direction and #stbl.direction > 0 then
				if stbl.direction[self.Direction] and stbl.direction[self.Direction].station and #stbl.direction[self.Direction].station > 0 then
					local s = stbl.direction[self.Direction].station[self.Station]
					if s and s.item and s.item._attr and s.item._attr.description then msg = s.item._attr.description end
				else
					if stbl.direction[self.Direction] and stbl.direction[self.Direction].station and stbl.direction[self.Direction].station.item and stbl.direction[self.Direction].station.item._attr then
						msg = stbl.direction[self.Direction].station.item._attr.description or ""
					end
				end
			else
				if stbl.direction and stbl.direction.station and #stbl.direction.station > 0 then
					local s = stbl.direction.station[self.Station]
					if s and s.item and s.item._attr and s.item._attr.description then msg = s.item._attr.description end
				else
					if stbl.direction and stbl.direction.station and stbl.direction.station.item and stbl.direction.station.item._attr then
						msg = stbl.direction.station.item._attr.description or ""
					end
				end
			end
		end
		self.Train:CANWrite("KTS_O",self.Train:GetWagonNumber(),"Ticker",nil,"StationMessage",msg)
	end

	function TRAIN_SYSTEM:SendSpecial(sel)
		if not (self.Train and self.Train.GetWagonNumber) then return end
		self.Train:CANWrite("KTS_O",self.Train:GetWagonNumber(),"Ticker",nil,"Activate")
		self.Train:CANWrite("KTS_O",self.Train:GetWagonNumber(),"Ticker",nil,"Station",false)
		local val = ""
		if Metrostroi.MilasConfig and Metrostroi.MilasConfig[self.Route] and Metrostroi.MilasConfig[self.Route].route and Metrostroi.MilasConfig[self.Route].route.list and Metrostroi.MilasConfig[self.Route].route.list.item then
			local list = Metrostroi.MilasConfig[self.Route].route.list.item
			if #list > 0 then
				if list[sel] and list[sel]._attr and list[sel]._attr.description then val = list[sel]._attr.description end
			else
				if list._attr and list._attr.description then val = list._attr.description end
			end
		end
		self.Train:CANWrite("KTS_O",self.Train:GetWagonNumber(),"Ticker",nil,"Special",val)
	end

	function TRAIN_SYSTEM:Trigger(name,value)
		local Train = self.Train
		if name == "KTSO_Menu" and not value then
			if self.State == 1 then
				self.State = 2
				self.Select = 1
			elseif self.State == 2 then
				self.State = 1
			elseif self.State == 21 or self.State == 24 or self.State == 25 then
				self.State = 2
				self.Select = self.SelectS
			elseif self.State == 22 or self.State == 23 then
				self.SelChange = 0
				self.State = 2
				self.Select = self.SelectS
			elseif self.State == 121 or self.State == 221 or self.State == 321 then
				self.State = 21
				self.Select = self.SelectS1
			elseif self.State == 125 or self.State == 225 or self.State == 325 or self.State == 425 then
				self.State = 25
				self.Select = self.SelectS1
			end
		end
		
		if self.State == 1 then
			if name == "KTSO_Up" and value then
				self.Select = math.max(1,self.Select-1)
			end
			if name == "KTSO_Down" and value then
				if Metrostroi.MilasConfig and Metrostroi.MilasConfig[self.Route] and Metrostroi.MilasConfig[self.Route].route and Metrostroi.MilasConfig[self.Route].route.list and Metrostroi.MilasConfig[self.Route].route.list.item then
					local count = (#Metrostroi.MilasConfig[self.Route].route.list.item > 0) and #Metrostroi.MilasConfig[self.Route].route.list.item or 1
					self.Select = math.min(count,self.Select + 1)
				else
					self.Select = math.min(1,self.Select + 1)
				end
			end
			if name == "KTSO_Enter" and value then
				self:SendSpecial(self.Select)
			end
		end
		
		if self.State == 2 then
			if name == "KTSO_Up" and value then
				self.Select = math.max(1,self.Select-1)
			end
			if name == "KTSO_Down" and value then
				self.Select = math.min(5,self.Select+1)
			end
			if name == "KTSO_Enter" and not value then
				self.State = self.Select + 20
				self.SelectS = self.Select
				self.Select = 1
			end
		end
		
		if self.State == 21 then
			if name == "KTSO_Up" and value then
				self.Select = math.max(1,self.Select-1)
			end
			if name == "KTSO_Down" and value then
				self.Select = math.min(3,self.Select+1)
			end
			if name == "KTSO_Enter" and value then
				if not Metrostroi.MilasConfig or #Metrostroi.MilasConfig == 0 then self.State = 210 else self.State = self.Select * 100 + 21 end
				self.SelectS1 = self.Select
				self.Select = self.SelectS1 == 1 and self.Route or self.SelectS1 == 2 and self.Direction or self.SelectS1 == 3 and self.Station or 1
			end
		end
		
		if self.State == 121 then
			if name == "KTSO_Down" and value then
				self.Select = math.min(self.Select+1,#Metrostroi.MilasConfig)
			end
			if name == "KTSO_Up" and value then
				self.Select = math.max(self.Select-1,1)
			end
			if name == "KTSO_Enter" and not value then
				self.SelectS1 = 0
			end
			if name == "KTSO_Enter" and value and self.SelectS1 == 0 then
				self.Route = self.Select
				self.Direction = 1
				self.Station = 1
				self.OnStation = false
				self:UpdateBoards()
				self.State = 21
				self.Select = 1
			end
			if name == "KTSO_Menu" and value then
				self.SelectS1 = 1
			end
		end
		
		if self.State == 221 then
			if name == "KTSO_Down" and value then
				local maxdir = 1
				if Metrostroi.MilasConfig and Metrostroi.MilasConfig[self.Route] and Metrostroi.MilasConfig[self.Route].route and Metrostroi.MilasConfig[self.Route].route.direction then
					maxdir = (#Metrostroi.MilasConfig[self.Route].route.direction > 0) and #Metrostroi.MilasConfig[self.Route].route.direction or 1
				end
				self.Select = math.min(self.Select+1, maxdir)
			end
			if name == "KTSO_Up" and value then
				self.Select = math.max(self.Select-1,1)
			end
			if name == "KTSO_Enter" and not value then
				self.SelectS1 = 0
			end
			if name == "KTSO_Enter" and value and self.SelectS1 == 0 then
				self.Direction = self.Select
				self.Station = 1
				self.OnStation = false
				self:UpdateBoards()
				self.State = 21
				self.Select = 2
			end
			if name == "KTSO_Menu" and value then
				self.SelectS1 = 2
			end
		end
		
		if self.State == 321 then
			if name == "KTSO_Down" and value then
				if Metrostroi.MilasConfig and Metrostroi.MilasConfig[self.Route] and Metrostroi.MilasConfig[self.Route].route then
					local stbl = Metrostroi.MilasConfig[self.Route].route
					if stbl.direction and #stbl.direction > 0 then
						if stbl.direction[self.Direction] and stbl.direction[self.Direction].station and #stbl.direction[self.Direction].station > 0 then
							self.Select = math.min(self.Select+1,#stbl.direction[self.Direction].station)
						else
							self.Select = 1
						end
					else
						if stbl.direction and stbl.direction.station and #stbl.direction.station > 0 then
							self.Select = math.min(self.Select+1,#stbl.direction.station)
						else
							self.Select = 1
						end
					end
				end
			end
			if name == "KTSO_Up" and value then
				self.Select = math.max(self.Select-1,1)
			end
			if name == "KTSO_Enter" and not value then
				self.SelectS1 = 0
			end
			if name == "KTSO_Enter" and value and self.SelectS1 == 0 then
				self.Station = self.Select
				self.OnStation = true
				self.ODZ = false
				self:UpdateBoards()
				self.State = 21
				self.Select = 3
			end
			if name == "KTSO_Menu" and value then
				self.SelectS1 = 3
			end
		end
		
		if self.State == 210 then
			if name == "KTSO_Enter" and not value and self.Select ~= 1 then
				self.State = 21
				self.Select = self.SelectS1
			end
			if name == "KTSO_Enter" and  value and self.Select == 1 then self.Select = 2 end
		end
		
		if self.State == 22 then
			if name == "KTSO_Enter" and value then
				self.Select = self.Select < 3 and self.Select + 1 or 1
				self.SelChange = 0
			end
			if name == "KTSO_Up" and value then
				self.SelChange = self.Select
				if self.Select == 1 then
					self.Time = self.Time + 3600 < 2^31 - 1 and self.Time + 3600 or self.Time
				elseif self.Select == 2 then
					self.Time = self.Time + 60 < 2^31 - 1 and self.Time + 60 or self.Time
				elseif self.Select == 3 then
					self.Time = self.Time + 1 < 2^31 - 1 and self.Time + 1 or self.Time
				end
			end
			if name == "KTSO_Down" and value then
				self.SelChange = self.Select
				if self.Select == 1 then
					self.Time = self.Time + ( (Metrostroi.GetSyncTime() + self.Time - 3600) > 0 and -3600 or 0)
				elseif self.Select == 2 then
					self.Time = self.Time + ( (Metrostroi.GetSyncTime() + self.Time - 60) > 0 and -60 or 0)
				elseif self.Select == 3 then
					self.Time = self.Time + ( (Metrostroi.GetSyncTime() + self.Time - 1) > 0 and -1 or 0)
				end
			end
		end
		
		if self.State == 23 then
			if name == "KTSO_Enter" and value then
				self.Select = self.Select < 3 and self.Select + 1 or 1
				self.SelChange = 0
			end
			if name == "KTSO_Up" and value then
				self.SelChange = self.Select
				if self.Select == 1 then
					self.Time = self.Time + 86400 < 2^31 - 1 and self.Time + 86400 or self.Time
				elseif self.Select == 2 then
					self.Time = self.Time + 2629743 < 2^31 - 1 and self.Time + 2629743 or self.Time
				elseif self.Select == 3 then
					self.Time = self.Time + 31556926 < 2^31 - 1 and self.Time + 31556926 or self.Time
				end
			end
			if name == "KTSO_Down" and value then
				self.SelChange = self.Select
				if self.Select == 1 then
					self.Time = self.Time + ( (Metrostroi.GetSyncTime() + self.Time - 86400) > 0 and -86400 or 0)
				elseif self.Select == 2 then
					self.Time = self.Time + ( (Metrostroi.GetSyncTime() + self.Time - 2629743) > 0 and -2629743 or 0)
				elseif self.Select == 3 then
					self.Time = self.Time + ( (Metrostroi.GetSyncTime() + self.Time - 31556926) > 0 and -31556926 or 0)
				end
			end
		end
		
		if self.State == 24 then
			if name == "KTSO_Up" and value then
				self.Select = math.max(1,self.Select-1)
			end
			if name == "KTSO_Down" and value then
				self.Select = math.min(3,self.Select+1)
			end
		end
		
		if self.State == 25 then
			if name == "KTSO_Up" and value then
				self.Select = math.max(1,self.Select-1)
			end
			if name == "KTSO_Down" and value then
				self.Select = math.min(6,self.Select+1)
			end
			if name == "KTSO_Enter" and value then
				self.State = self.Select * 100 + 25
				self.SelectS1 = self.Select
				self.Select = 1
			end
		end
		
		if self.State == 525 then
			if name == "KTSO_Enter" and not value and self.Select ~= 1 then
				self.State = 25
				self.Select = self.SelectS1
			end
			if name == "KTSO_Enter" and not value and self.Select == 1 then self.Select = 2 end
		end

		Train:SetNW2Int("KTS-O:Select",self.Select)
	end
	
	function TRAIN_SYSTEM:Think(dT)
		local Train = self.Train
		local Power = (Train.VB and Train.VB.Value > 0) and (Train.A76 and Train.A76.Value > 0)
		if not Power and self.State ~= 0 then
			self.State = 0
		end
		if Power and self.State == 0 then
			self.State = 1
		end
		if Power then
			if self.State == 22 or self.State == 23 then
				Train:SetNW2Int("KTS-O:SelChange",self.SelChange)
			end
			if not self.UPOTriggired and Train.UPO and Train.UPO.LineOut>0 then self:TriggerInput("CheckUPO") end
			if self.UPOTriggired and Train.UPO and Train.UPO.LineOut<1 then self.UPOTriggired = false end
			if Train.ReadTrainWire and Train:ReadTrainWire(15) > 0 and self.ODZ then self.ODZ = false self:UpdateBoards() end
			if not self.OnStation and not self.ODZ and Train.KV and Train.KV.ReverserPosition ~= 0 then
				if not self.TickerRandomMSG then
					if Metrostroi.MilasConfig and Metrostroi.MilasConfig[self.Route] and Metrostroi.MilasConfig[self.Route].route and Metrostroi.MilasConfig[self.Route].route.list and Metrostroi.MilasConfig[self.Route].route.list.item then
						local list = Metrostroi.MilasConfig[self.Route].route.list.item
						local count = (#list > 0) and #list or 1
						local rnd = math.random(1,count)
						self:SendSpecial(rnd)
					end
					self.TickerRandomMSG = CurTime()
				end
				if self.TickerRandomMSG and CurTime() - self.TickerRandomMSG > 35 then
					if Metrostroi.MilasConfig and Metrostroi.MilasConfig[self.Route] and Metrostroi.MilasConfig[self.Route].route and Metrostroi.MilasConfig[self.Route].route.list and Metrostroi.MilasConfig[self.Route].route.list.item then
						local list = Metrostroi.MilasConfig[self.Route].route.list.item
						local count = (#list > 0) and #list or 1
						local rnd = math.random(1,count)
						self:SendSpecial(rnd)
					end
					self.TickerRandomMSG = CurTime()
				end
			else
				self.TickerRandomMSG = nil
			end
		end
		for k,v in pairs(self.TriggerNames) do
			if Train[v] and (Train[v].Value > 0.5) ~= self.Triggers[v] then
				self:Trigger(v,Train[v].Value > 0.5)
				self.Triggers[v] = Train[v].Value > 0.5
			end
		end
		
		Train:SetNW2Int("KTS-O:Time",self.Time)
		Train:SetNW2Int("KTS-O:Route",self.Route)
		Train:SetNW2Int("KTS-O:Direction",self.Direction)
		Train:SetNW2Int("KTS-O:Station",self.Station)
		Train:SetNW2Int("KTS-O:State",self.State)
		Train:SetNW2Int("KTS-O:Line",self.Line)
	end
end

if CLIENT then
    local function createFont(name,font,size,weight)
        surface.CreateFont("Metrostroi_"..name, {
            font = font,
            size = size,
            weight = weight or 400,
            blursize = 0,
            antialias = true,
            underline = false,
            italic = false,
            strikeout = false,
            symbol = false,
            rotary = false,
            shadow = false,
            additive = false,
            outline = false,
            extended = true,
        })
    end
    createFont("U1","Unifont",16)
    createFont("UTime","Unifont",24,800)
    createFont("U1B","Unifont",20)
	
	local tday = {[0] ="Вс","Пн","Вт","Ср","Чт","Пт","Сб",}
	local tmonth = {"Январь","Февраль","Март","Апрель","Май","Июнь","Июль","Август","Сентябрь","Октябрь","Ноябрь","Декабрь"}
	
	local close = surface.GetTextureID("kts_o/icons/close")
	local dot = surface.GetTextureID("kts_o/icons/dot")
	local err = surface.GetTextureID("kts_o/icons/err")
	local full = surface.GetTextureID("kts_o/icons/full")
	
	local menu = surface.GetTextureID("kts_o/icons/menu/menu")
	local date = surface.GetTextureID("kts_o/icons/menu/date")
	local route = surface.GetTextureID("kts_o/icons/menu/route")
	local settings = surface.GetTextureID("kts_o/icons/menu/settings")
	local sound = surface.GetTextureID("kts_o/icons/menu/sound")
	local time = surface.GetTextureID("kts_o/icons/menu/time")
	
	local copy = surface.GetTextureID("kts_o/icons/menu/route/copy")
	local del = surface.GetTextureID("kts_o/icons/menu/route/del")
	local dest = surface.GetTextureID("kts_o/icons/menu/route/dest")
	local brick = surface.GetTextureID("kts_o/icons/menu/route/brick")
	
	local mixer = surface.GetTextureID("kts_o/icons/menu/sound/mixer")
	
    function TRAIN_SYSTEM:ClientThink()
		if not self.Train:ShouldDrawPanel("KTSOScreen") then return end
        render.PushRenderTarget(self.Train.KTSOScr,0,0,320, 240)
        render.Clear(0, 0, 0, 0)
        cam.Start2D()
			self:KTSOScreen(self.Train)
        cam.End2D()
        render.PopRenderTarget()
    end
	function TRAIN_SYSTEM:KTSOScreen(Train)
		local state = Train:GetNW2Int("KTS-O:State",0)
		local TDev = Metrostroi.GetSyncTime() + Train:GetNW2Int("KTS-O:Time",0)
		local EnLang = Train:GetNW2Bool("KTS-O:English",false)
		local color = Color(30,71,0)
		local colorhalf = Color(55,130,0)
		local colorinv = Color(80,190,0)
		local routeIndex = Train:GetNW2Int("KTS-O:Route",0)
		local stbl = nil
		local RouteName = "Не выбрано"
		if routeIndex and routeIndex ~= 0 and Metrostroi and Metrostroi.MilasConfig and Metrostroi.MilasConfig[routeIndex] and Metrostroi.MilasConfig[routeIndex].route then
			stbl = Metrostroi.MilasConfig[routeIndex].route
			if stbl.name and stbl.name._attr and stbl.name._attr.description then
				RouteName = stbl.name._attr.description
			elseif Metrostroi.MilasConfig[routeIndex].name then
				RouteName = Metrostroi.MilasConfig[routeIndex].name
			end
		end
		if state == 0 then return end
		if state ~= 0 then
			surface.SetDrawColor(80,190,0,255)
			surface.DrawRect(0,0,320,240)
		end
		if state > 0 then
			surface.SetDrawColor(30,71,0,255)
			for i=0,3 do
				surface.DrawRect(3+79*i,216,77,22)
			end
			if state > 1 then
				surface.SetDrawColor(30,71,0,210)
				surface.SetTexture(dot)
				surface.DrawTexturedRectRotated(270,11,16,16,0)
				surface.SetTexture(full)
				surface.DrawTexturedRectRotated(288,11,16,16,0)
				surface.SetTexture(close)
				surface.DrawTexturedRectRotated(306,11,16,16,0)
			end
		end
		if state == 1 then
			draw.SimpleText(Format("Маршрут: %s",RouteName),"Metrostroi_U1",240,10,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			local dirText = ""
			if stbl and stbl.direction then
				if #stbl.direction > 0 then
					local d = stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)]
					if d and d._attr and d._attr.description then dirText = d._attr.description end
				else
					if stbl.direction and stbl.direction._attr and stbl.direction._attr.description then dirText = stbl.direction._attr.description end
				end
			end
			draw.SimpleText(dirText,"Metrostroi_U1",240,30,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText(Format("%s, %s %d",tday[tonumber(os.date("!%w",TDev))],tmonth[tonumber(os.date("!%m",TDev))],os.date("!%d",TDev)),"Metrostroi_U1",79,10,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText(os.date("!%H:%M:%S",TDev),"Metrostroi_UTime",79,28, color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			
			if stbl and stbl.list and stbl.list.item then
				local list = stbl.list.item
				local count = (#list > 0) and #list or 1
				local sel = Train:GetNW2Int("KTS-O:Select",1)
				local page = math.ceil(sel/7) - 1
				
				surface.SetDrawColor(color)
				surface.DrawRect(1,19+(sel-page*7)*24,318,24)
				
				for i=1,math.min(7,count) do
					local idx = math.Clamp(i + page*7,1,count)
					local y = 29+(i)*24
					local desc = ""
					if #list > 0 then
						if list[idx] and list[idx]._attr then desc = list[idx]._attr.description or "" end
					else
						if list._attr then desc = list._attr.description or "" end
					end
					draw.SimpleText(desc,"Metrostroi_U1",4,y,sel == idx and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
				end
				
				if count > 7 then
					surface.SetDrawColor(colorinv)
					surface.DrawRect(305,43,16,168)
					surface.SetDrawColor(colorhalf)
					surface.DrawRect(305,43,14,168)
					
					surface.SetDrawColor(color)
					draw.NoTexture()
					surface.DrawPoly({
						{ x = 307, y = 54 },
						{ x = 312, y = 44 },
						{ x = 317, y = 54 }
					})
					surface.DrawPoly({
						{ x = 312, y = 210 },
						{ x = 307, y = 200 },
						{ x = 317, y = 200 }
					})
					
					surface.SetDrawColor(color)
					surface.DrawRect(307,55+(sel-1)*144/count,10,144/count)
				end
				
				if sel > 1 then draw.SimpleText("Пред.","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
				if sel < count then draw.SimpleText("След.","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
				draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			else
				local sel = Train:GetNW2Int("KTS-O:Select",1)
				if stbl and stbl.list and stbl.list.item and stbl.list.item._attr then
					local y = 29
					surface.SetDrawColor(color)
					surface.DrawRect(1,19+(sel-1)*24,318,24)
					draw.SimpleText(stbl.list.item._attr.description,"Metrostroi_U1",4,y,sel == 1 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
					draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
				else
					draw.SimpleText("Нет сообщений","Metrostroi_U1",160,120,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
				end
			end
			
			Metrostroi.DrawRectOutline(0,0,159,42,color,1)
			Metrostroi.DrawRectOutline(161,22,158,20,color,1)
			draw.SimpleText("Меню","Metrostroi_U1",41,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 2 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local menulist = {
				"Управление маршрутом",
				"Установка времени",
				"Установка даты",
				"Громкость и звук",
				"Настройки устройства"
			}
			local menutex = {
				route,
				time,
				date,
				sound,
				settings
			}
			
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(menu)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Меню","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			
			surface.SetDrawColor(color)
			surface.DrawRect(1,22+(sel-1)*24,318,24)
			surface.SetDrawColor(colorinv)
			surface.DrawRect(4,26+(sel-1)*24,16,16)
			
			for i=1,#menulist do
				surface.SetDrawColor(30,71,0,210)
				surface.SetTexture(menutex[i])
				surface.DrawTexturedRectRotated(12,34+(i-1)*24,16,16,0)
				draw.SimpleText(Format("%d. %s",i,menulist[i]),"Metrostroi_U1",28,32+(i-1)*24,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			end
			
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			if sel > 1 then draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			if sel < #menulist then draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 21 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local menulist = {
				"Установка маршрута",
				"Выбор направления",
				"Выбор станции",
			}
			local menutex = {
				route,
				dest,
				brick,
			}
			
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(route)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Управление маршрутом","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			surface.SetDrawColor(color)
			surface.DrawRect(1,22+(sel-1)*24,318,24)
			surface.SetDrawColor(colorinv)
			surface.DrawRect(4,26+(sel-1)*24,16,16)
			
			for i=1,#menulist do
				surface.SetDrawColor(30,71,0,210)
				surface.SetTexture(menutex[i])
				surface.DrawTexturedRectRotated(12,34+(i-1)*24,16,16,0)
				draw.SimpleText(Format("%d. %s",i,menulist[i]),"Metrostroi_U1",28,32+(i-1)*24,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			end
				
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			if sel > 1 then draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			if sel < #menulist then draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 210 then
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(err)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Ошибка","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			draw.SimpleText("Каталоги маршрутов отсутствуют на","Metrostroi_U1",160,112,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText("диске.","Metrostroi_U1",160,128,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			
			draw.SimpleText("Готово","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 121 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local page = math.ceil(sel/7) - 1
			
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(route)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Установка маршрута","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			surface.SetDrawColor(color)
			surface.DrawRect(1,18+(sel-page*7)*24,318,24)
			draw.SimpleText("Выберите каталог маршрута:","Metrostroi_U1",4,32,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			if Metrostroi.MilasConfig then
				for i=1,math.min(7,#Metrostroi.MilasConfig) do
					local idx = math.Clamp(i + page*7,1,#Metrostroi.MilasConfig)
					local name = Metrostroi.MilasConfig[idx].name or (Metrostroi.MilasConfig[idx].route and Metrostroi.MilasConfig[idx].route.name and Metrostroi.MilasConfig[idx].route.name._attr and Metrostroi.MilasConfig[idx].route.name._attr.description) or ("Config "..idx)
					local y = 28+(i)*24
					draw.SimpleText(Format("%d. %s",idx,name),"Metrostroi_U1",4,y,sel == idx and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
				end
			end
			
			if Metrostroi.MilasConfig and #Metrostroi.MilasConfig > 7 then
				surface.SetDrawColor(colorhalf)
				surface.DrawRect(305,42,14,168)
				
				surface.SetDrawColor(color)
				draw.NoTexture()
				surface.DrawPoly({
					{ x = 307, y = 53 },
					{ x = 312, y = 43 },
					{ x = 317, y = 53 }
				})
				surface.DrawPoly({
					{ x = 312, y = 209 },
					{ x = 307, y = 199 },
					{ x = 317, y = 199 }
				})
				
				surface.SetDrawColor(color)
				surface.DrawRect(307,54+(sel-1)*144/#Metrostroi.MilasConfig,10,144/#Metrostroi.MilasConfig)
			end
			
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			if sel > 1 then draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			if sel < #Metrostroi.MilasConfig then draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 221 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local page = math.ceil(sel/7) - 1
			
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(dest)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Выбор направления","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			surface.SetDrawColor(color)
			surface.DrawRect(1,18+(sel-page*7)*24,318,24)
			
			draw.SimpleText("Выберите направление:","Metrostroi_U1",4,32,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			if stbl and stbl.direction then
				if #stbl.direction > 0 then
					for i=1,math.min(7,#stbl.direction) do
						i = math.Clamp(i + page*7,1,#stbl.direction)
						local y = 28+(i-page*7)*24
						draw.SimpleText(Format("%d. %s",i,stbl.direction[i]._attr.description),"Metrostroi_U1",4,y,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
					end
				else
					draw.SimpleText(Format("%d. %s",1,stbl.direction._attr.description),"Metrostroi_U1",4,28+(1-page*7)*24,sel == 1 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
				end
			end
			
			if stbl and #stbl.direction > 7 then
				surface.SetDrawColor(colorhalf)
				surface.DrawRect(305,42,14,168)
				
				surface.SetDrawColor(color)
				draw.NoTexture()
				surface.DrawPoly({
					{ x = 307, y = 53 },
					{ x = 312, y = 43 },
					{ x = 317, y = 53 }
				})
				surface.DrawPoly({
					{ x = 312, y = 209 },
					{ x = 307, y = 199 },
					{ x = 317, y = 199 }
				})
				
				surface.SetDrawColor(color)
				surface.DrawRect(307,54+(sel-1)*144/#stbl.direction,10,144/#stbl.direction)
			end
			
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			if sel > 1 then draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			if stbl and sel < #stbl.direction then draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 321 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local page = math.ceil(sel/7) - 1
			
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(brick)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Выбор станции","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			surface.SetDrawColor(color)
			surface.DrawRect(1,18+(sel-page*7)*24,318,24)
			
			draw.SimpleText("Выберите станцию:","Metrostroi_U1",4,32,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			if stbl and stbl.direction then
				if #stbl.direction > 0 and stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)] then
					local dir = stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)]
					if dir.station and #dir.station > 0 then
						for i=1,math.min(7,#dir.station) do
							i = math.Clamp(i + page*7,1,#dir.station)
							local y = 28+(i-page*7)*24
							draw.SimpleText(Format("%d. %s",i,dir.station[i]._attr.description),"Metrostroi_U1",4,y,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
						end
					else
						if dir.station and dir.station._attr then
							draw.SimpleText(Format("%d. %s",1,dir.station._attr.description),"Metrostroi_U1",4,28,sel == 1 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
						end
					end
				else
					if stbl.direction and stbl.direction.station then
						if #stbl.direction.station > 0 then
							for i=1,math.min(7,#stbl.direction.station) do
								i = math.Clamp(i + page*7,1,#stbl.direction.station)
								local y = 28+(i-page*7)*24
								draw.SimpleText(Format("%d. %s",i,stbl.direction.station[i]._attr.description),"Metrostroi_U1",4,y,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
							end
						else
							if stbl.direction.station and stbl.direction.station._attr then
								draw.SimpleText(Format("%d. %s",1,stbl.direction.station._attr.description),"Metrostroi_U1",4,28,sel == 1 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
							end
						end
					end
				end
			end
			
			if stbl and stbl.direction and #stbl.direction > 0 and stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)] and #stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)].station > 7 then
				surface.SetDrawColor(colorhalf)
				surface.DrawRect(305,42,14,168)
				
				surface.SetDrawColor(color)
				draw.NoTexture()
				surface.DrawPoly({
					{ x = 307, y = 53 },
					{ x = 312, y = 43 },
					{ x = 317, y = 53 }
				})
				surface.DrawPoly({
					{ x = 312, y = 209 },
					{ x = 307, y = 199 },
					{ x = 317, y = 199 }
				})
				
				surface.SetDrawColor(color)
				surface.DrawRect(307,54+(sel-1)*144/#stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)].station,10,144/#stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)].station)
			end
			
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			if sel > 1 then draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			if stbl and sel < ((stbl.direction and #stbl.direction > 0 and stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)] and #stbl.direction[Train:GetNW2Int("KTS-O:Direction",0)].station) or 1) then draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 22 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local selch = Train:GetNW2Int("KTS-O:SelChange",0)
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(time)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Время","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			draw.SimpleText("Час","Metrostroi_UTime",240,38,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			Metrostroi.DrawRectOutline(164,56,129,28,color,2)
			surface.SetDrawColor(color)
			surface.DrawRect(294,55,21,14)
			surface.DrawRect(294,70,21,14)
			surface.SetDrawColor(colorinv)
			draw.NoTexture()
			surface.DrawPoly({
				{ x = 298, y = 65 },
				{ x = 305, y = 58 },
				{ x = 312, y = 65 }
			})
			surface.DrawPoly({
				{ x = 305, y = 81 },
				{ x = 298, y = 74 },
				{ x = 312, y = 74 }
			})
			if selch == 1 then
				surface.SetDrawColor(color)
				surface.DrawRect(166,58,28,23)
			end
			draw.SimpleText(os.date("!%H",TDev),"Metrostroi_UTime",166,68,selch == 1 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			draw.SimpleText(Format("%s",(sel == 1 and CurTime()%1 > 0.5) and "|" or ""),"Metrostroi_UTime",189,68,color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			draw.SimpleText("Мин","Metrostroi_UTime",240,100,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			Metrostroi.DrawRectOutline(164,118,129,28,color,2)
			surface.SetDrawColor(color)
			surface.DrawRect(294,117,21,14)
			surface.DrawRect(294,132,21,14)
			surface.SetDrawColor(colorinv)
			draw.NoTexture()
			surface.DrawPoly({
				{ x = 298, y = 127 },
				{ x = 305, y = 120 },
				{ x = 312, y = 127 }
			})
			surface.DrawPoly({
				{ x = 305, y = 142 },
				{ x = 298, y = 135 },
				{ x = 312, y = 135 }
			})
			if selch == 2 then
				surface.SetDrawColor(color)
				surface.DrawRect(166,120,28,23)
			end
			draw.SimpleText(os.date("!%M",TDev),"Metrostroi_UTime",166,130,selch == 2 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			draw.SimpleText(Format("%s",(sel == 2 and CurTime()%1 > 0.5) and "|" or ""),"Metrostroi_UTime",189,130,color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			draw.SimpleText("Сек","Metrostroi_UTime",240,164,color,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			Metrostroi.DrawRectOutline(164,180,129,28,color,2)
			surface.SetDrawColor(color)
			surface.DrawRect(294,179,21,14)
			surface.DrawRect(294,194,21,14)
			surface.SetDrawColor(colorinv)
			draw.NoTexture()
			surface.DrawPoly({
				{ x = 298, y = 189 },
				{ x = 305, y = 182 },
				{ x = 312, y = 189 }
			})
			surface.DrawPoly({
				{ x = 305, y = 205 },
				{ x = 298, y = 198 },
				{ x = 312, y = 198 }
			})
			if selch == 3 then
				surface.SetDrawColor(color)
				surface.DrawRect(166,182,28,23)
			end
			draw.SimpleText(os.date("!%S",TDev),"Metrostroi_UTime",166,192,selch == 3 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			draw.SimpleText(Format("%s",(sel == 3 and CurTime()%1 > 0.5) and "|" or ""),"Metrostroi_UTime",189,192,color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			Metrostroi.DrawRectOutline(6,26,152,182,color,2)
			surface.SetDrawColor(color)
			for i=0,11 do
				local a = math.rad((i/12)*(-360))
				surface.DrawLine(81 + math.sin(a)*68,115 + math.cos(a)*68,81 + math.sin(a)*72,115 + math.cos(a)*72)
			end
			local second = 30 - tonumber(os.date("!%S",TDev))
			local minutes = 30 - tonumber(os.date("!%M",TDev))
			local hours = 6 - tonumber(os.date("!%H",TDev)) + (minutes - 30)/60
			
			surface.SetDrawColor(color)
			draw.NoTexture()
			surface.DrawPoly({
				{ x = 81 + math.sin(math.rad( ((second-5)/60)*360 ))*-5, y = 115 + math.cos(math.rad( ((second-5)/60)*360) )*-5},
				{ x = 81 + math.sin(math.rad(  (second/60)     *360))*73,y = 115 + math.cos(math.rad(  (second/60)    *360) )*73},
				{ x = 81 + math.sin(math.rad( ((second+5)/60)*360 ))*-5, y = 115 + math.cos(math.rad( ((second+5)/60)*360) )*-5},
			})
			
			surface.DrawPoly({
				{ x = 81 + math.sin(math.rad( ((minutes-5)/60)*360 ))*-5, y = 115 + math.cos(math.rad( ((minutes-5)/60)*360) )*-5},
				{ x = 81 + math.sin(math.rad(  (minutes/60)   *360))*61,y = 115 + math.cos(math.rad( (minutes/60)    *360) )*61},
				{ x = 81 + math.sin(math.rad( ((minutes+5)/60)*360 ))*-5, y = 115 + math.cos(math.rad( ((minutes+5)/60)*360) )*-5},
			})
			
			surface.DrawPoly({
				{ x = 81 + math.sin(math.rad( ((hours-2)/12)*360 ))*-5, y = 115 + math.cos(math.rad( ((hours-2)/12)*360) )*-5},
				{ x = 81 + math.sin(math.rad(  (hours/12)    *360))*57,y = 115 + math.cos(math.rad(    (hours/12)    *360) )*57},
				{ x = 81 + math.sin(math.rad( ((hours+2)/12)*360 ))*-6, y = 115 + math.cos(math.rad( ((hours+2)/12)*360) )*-6},
				{ x = 81 + math.sin(math.rad( ((hours)/12)*360 ))*-8, y = 115 + math.cos(math.rad( ((hours)/12)*360) )*-8},
			})
			
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText("Далее","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 23 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local selch = Train:GetNW2Int("KTS-O:SelChange",0)
			
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(date)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Дата","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			Metrostroi.DrawRectOutline(10,102,48,28,color,2)
			surface.DrawRect(59,101,21,14)
			surface.DrawRect(59,116,21,14)
			surface.SetDrawColor(colorinv)
			draw.NoTexture()
			surface.DrawPoly({
				{ x = 63, y = 111 },
				{ x = 63+7, y = 111-7 },
				{ x = 63+14, y = 111 }
			})
			surface.DrawPoly({
				{ x = 63+7, y = 119+7 },
				{ x = 63,   y = 119 },
				{ x = 63+14,y = 119 }
			})
			if selch == 1 then
				surface.SetDrawColor(color)
				surface.DrawRect(12,104,28,23)
			end
			draw.SimpleText(os.date("!%d",TDev),"Metrostroi_UTime",12,114,selch == 1 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			draw.SimpleText(Format("%s",(sel == 1 and CurTime()%1 > 0.5) and "|" or ""),"Metrostroi_UTime",35,114,color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			Metrostroi.DrawRectOutline(90,102,126,28,color,2)
			if sel == 2 then
				surface.SetDrawColor(color)
				surface.DrawRect(91,103,123,25)
			end
			draw.SimpleText(Format("%s",tmonth[tonumber(os.date("!%m",TDev))]),"Metrostroi_UTime",92,114,sel == 2 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			
			Metrostroi.DrawRectOutline(226,102,65,28,color,2)
			surface.DrawRect(292,101,21,14)
			surface.DrawRect(292,116,21,14)
			surface.SetDrawColor(colorinv)
			draw.NoTexture()
			surface.DrawPoly({
				{ x = 296, y = 111 },
				{ x = 296+7, y = 111-7 },
				{ x = 296+14, y = 111 }
			})
			surface.DrawPoly({
				{ x = 296+7, y = 119+7 },
				{ x = 296,   y = 119 },
				{ x = 296+14,y = 119 }
			})
			if selch == 3 then
				surface.SetDrawColor(color)
				surface.DrawRect(228,104,56,23)
			end
			draw.SimpleText(os.date("!%Y",TDev),"Metrostroi_UTime",230,114,selch == 3 and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			draw.SimpleText(Format("%s",(sel == 3 and CurTime()%1 > 0.5) and "|" or ""),"Metrostroi_UTime",279,114,color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			draw.SimpleText("Далее","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 24 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local menulist = {
				"Звуки клавиш",
				"Громкость в кабине",
				"Громкость в салоне",
			}
			local menutex = {
				route,
				mixer,
				mixer,
			}
			
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(sound)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Громкость и звук","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			surface.SetDrawColor(color)
			surface.DrawRect(1,22+(sel-1)*24,318,24)
			surface.SetDrawColor(colorinv)
			surface.DrawRect(4,26+(sel-1)*24,16,16)
			
			for i=1,#menulist do
				surface.SetDrawColor(30,71,0,210)
				surface.SetTexture(menutex[i])
				surface.DrawTexturedRectRotated(12,34+(i-1)*24,16,16,0)
				draw.SimpleText(Format("%d. %s",i,menulist[i]),"Metrostroi_U1",28,32+(i-1)*24,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			end
			
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			if sel > 1 then draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			if sel < #menulist then draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 25 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local menulist = {
				"Язык интерфейса",
				"Стили окон",
				"Стиль оформления",
				"Подсветка экрана",
				"Информация о системе",
				"Сброс настроек"
			}
			
			surface.SetDrawColor(30,71,0,210)
			surface.SetTexture(settings)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Настройки устройства","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			surface.SetDrawColor(color)
			surface.DrawRect(1,22+(sel-1)*24,318,24)
			surface.SetDrawColor(colorinv)
			surface.DrawRect(4,26+(sel-1)*24,16,16)
			
			for i=1,#menulist do
				surface.SetDrawColor(30,71,0,210)
				draw.SimpleText(Format("%d. %s",i,menulist[i]),"Metrostroi_U1",28,32+(i-1)*24,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			end
			
			draw.SimpleText("Отмена","Metrostroi_U1",42,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
			if sel > 1 then draw.SimpleText("Вверх ","Metrostroi_U1",124,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			if sel < #menulist then draw.SimpleText("Вниз","Metrostroi_U1",198,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER) end
			draw.SimpleText("Выбор","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		elseif state == 125 then
			local sel = Train:GetNW2Int("KTS-O:Select",0)
			local menulist = {
				"English (Английский)",
				"Russian (Русский)"
			}
			
			surface.SetDrawColor(30,71,0,210)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Язык устройства","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			surface.SetDrawColor(color)
			surface.DrawRect(1,22+(sel-1)*24,318,24)
			surface.SetDrawColor(colorinv)
			surface.DrawRect(4,26+(sel-1)*24,16,16)
			
			for i=1,#menulist do
				surface.SetDrawColor(30,71,0,210)
				draw.SimpleText(Format("%d. %s",i,menulist[i]),"Metrostroi_U1",28,32+(i-1)*24,sel == i and colorinv or color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			end
		elseif state == 525 then
			local t1 = {
				"HW Revision",
				"GNU/Linux",
				"uClibc",
				"dosfstools",
				"e2fsprogs",
				"BusyBox",
				"Qt-Library",
				"MM-Informer",
				"Free Memory"
			}
			local t2 = {
				"0x0000 (Build 747)",
				"2.6.27.7-milas1",
				"0.9.30",
				"3.0.0",
				"1.41.3",
				"1.14.0.svn",
				"3.3.8b",
				"0.3 (01.12.2008)",
				"50120 K"
			}
			surface.SetDrawColor(30,71,0,210)
			surface.DrawTexturedRectRotated(12,11,16,16,0)
			surface.SetDrawColor(color)
			surface.DrawRect(22,2,234,18)
			draw.SimpleText("Информация о системе","Metrostroi_U1",26,10,colorinv,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			
			for i=1,#t1 do
				draw.SimpleText(Format("%s:",t1[i]),"Metrostroi_U1",4,42+(i-1)*18,color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
				draw.SimpleText(Format("%s",t2[i]),"Metrostroi_U1",120,42+(i-1)*18,color,TEXT_ALIGN_LEFT,TEXT_ALIGN_CENTER)
			end
			
			draw.SimpleText("Выход","Metrostroi_U1",278,226,colorinv,TEXT_ALIGN_CENTER,TEXT_ALIGN_CENTER)
		end
	end
end