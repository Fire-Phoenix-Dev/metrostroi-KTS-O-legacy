-- local Map = game.GetMap() or ""
-- if Map:find("gm_metro_crossline_c") then
    -- Metrostroi.PlatformMap = "gm_metro_crossline"
    -- Metrostroi.CurrentMap = "gm_metro_crossline"
-- else
    -- return
-- end
timer.Simple(1,function()
	Metrostroi.AddMilasConfig("Rur2","Rurl Tree",
	[[
	<route version="3" id="1582417156">
		<name description="Rur2">rurl2</name>
		<direction description="Market Street - Rocklake">
			<station description="Market Street">
				<item description="Станция Market Street. Следующая станция Aviation University."/>
			</station>
			<station description="Aviation University">
				<item description="Станция Aviation University. Следующая станция City Hall."/>
			</station>
			<station description="City Hall">
				<item description="Станция City Hall. Следующая станция White Forest."/>
			</station>
			<station description="White Forest">
				<item description="Станция White Forest. Следующая станция Urban Park."/>
			</station>
			<station description="Urban Park">
				<item description="Станция Urban Park. Следующая станция Rocklake."/>
			</station>
			<station description="Rocklake">
				<item description="Поезд прибыл на конечную станцию Rocklake. Просьба освободить вагоны."/>
			</station>
		</direction>
		<direction description="Rocklake - Market Street">
			<station description="Rocklake">
				<item description="Станция Rocklake. Следующая станция Urban Park."/>
			</station>
			<station description="Urban Park">
				<item description="Станция Urban Park. Следующая станция White Forest."/>
			</station>
			<station description="White Forest">
				<item description="Станция White Forest. Следующая станция City Hall."/>
			</station>
			<station description="City Hall">
				<item description="Станция City Hall. Следующая станция Aviation University."/>
			</station>
			<station description="Aviation University">
				<item description="Станция Aviation University. Следующая станция Market Street."/>
			</station>
			<station description="Market Street">
				<item description="Поезд прибыл на конечную станцию Market Street. Просьба освободить вагоны."/>
			</station>
		</direction>
		
		<list description="Сообщения">
			<item description="Уважаемые пассажиры! Во избежание травм держитесь за поручни! Уступайте места пассажирам с детьми, инвалидам, лицам пожилого возраста и беременным женщинам."/>
			<item description="Будьте взаимно вежливы, при нахождении в вагоне снимайте рюкзаки!"/>
			<item description="Уважаемые пассажиры! Станциz Ravenholm закрыта на ремонт."/>
			<item description="Уступайте места беременным женщинам, пожилым людям, инвалидам и пассажирам с детьми."/>
			<item description="Единый номер экстренных служб - 112."/>
			<item description="Не забывайте свои вещи в салоне вагона. Если вы обнаружили бесхозные предметы, немедленно сообщите машинисту или дежурному по станции."/>
		</list>
	</route>
	]]
	)
end)