-- local Map = game.GetMap() or ""
-- if Map:find("gm_metro_crossline_c") then
    -- Metrostroi.PlatformMap = "gm_metro_crossline"
    -- Metrostroi.CurrentMap = "gm_metro_crossline"
-- else
    -- return
-- end
timer.Simple(1,function()
	Metrostroi.AddMilasConfig("Crossline","Crossline Tree",
	[[
	<route version="3" id="1582417156">
		<name description="Crossline">Cros</name>
		<direction description="Пролетарская">
			<station description="Международная">
				<item description="Станция Международная. Следующая станция Парк Культуры. Mezhdunarosnaya station. The next station is Park kultury"/>
			</station>
			<station description="Парк Культуры">
				<item description="Станция Парк Культуры. Следующая станция Политехническая. Park kultury station. The next station is Politekhnicheskaya"/>
			</station>
			<station description="Политехническая">
				<item description="Станция Политехническая. Следующая станция Проспект Суворова. Politekhnicheskaya station. The next station is Prospekt Suvorova"/>
			</station>
			<station description="Проспект Суворова">
				<item description="Станция Проспект Суворова. Следующая станция Нахимовская. Prospekt Suvorova station. The next station is Nakhimovskaya."/>
			</station>
			<station description="Нахимовская">
				<item description="Станция Нахимовская. Следующая станция Октябрьская. Nakhimovskaya station. The next station is Oktyabrskaya"/>
			</station>
			<station description="Октябрьская">
				<item description="Станция Октябрьская. Выход к Московскому вокзалу. Следующая станция Речная. Oktyabrskaya station. The next station is Rechnaya. Doors will open on the right."/>
			</station>
			<station description="Речная">
				<item description="Станция Речная. Платформа справа. Следующая станция Пролетарская. Rechnaya station. The platform is on the right. The next station is Proletarskaya"/>
			</station>
			<station description="Пролетарская">
				<item description="Поезд прибыл на конечную станцию Пролетарская. Train arrived to the last station Proletarskaya"/>
			</station>
		</direction>
		<direction description="Международная">
			<station description="Пролетарская">
				<item description="Станция Пролетарская. Следующая станция Речная. Платформа справа. Proletarskaya station. The next station is Rechnaya. Doors will open on the right."/>
			</station>
			<station description="Речная">
				<item description="Станция Речная. Платформа справа. Следующая станция Октябрьская. Rechnaya station. The platform is on the right. The next station is Oktyabrskaya."/>
			</station>
			<station description="Октябрьская">
				<item description="Станция Октябрьская. Выход к Московскому вокзалу. Следующая станция Нахимовская. Oktyabrskaya station. The next station is Nakhimovskaya."/>
			</station>
			<station description="Нахимовская">
				<item description="Станция Нахимовская. Следующая станция Проспект Суворова. Nakhimovskaya station. The next station is Prospekt Suvorova."/>
			</station>
			<station description="Проспект Суворова">
				<item description="Станция Проспект Суворова. Следующая станция Политехническая. Prospekt Suvorova station. The next station is Politekhnicheskaya."/>
			</station>
			<station description="Политехническая">
				<item description="Станция Политехническая. Следующая станция Парк Культуры. Politekhnicheskaya station. The next station is Park kultury."/>
			</station>
			<station description="Парк Культуры">
				<item description="Станция Парк Культуры. Следующая станция Международная. Park kultury station. The next station is Mezhdunarosnaya."/>
			</station>
			<station description="Международная">
				<item description="Поезд прибыл на конечную станцию Международная. Train arrived to the last station Mezhdunarosnaya."/>
			</station>
		</direction>
		<list description="Сообщения">
			<item description="Осторожно, двери закрываются!"/>
			<item description="Не держите двери"/>
			<item description="Поезд прибыл на конечную станцию."/>
			<item description="Поезд проследует станцию без остановки"/>
			<item description="Поезд остановился по техническим причинам"/>
			<item description="Будьте осторожны, оказывайте помощь другим пассажирам"/>
			<item description="Поезд дальше не пойдет. Просьба освободить вагоны."/>
			<item description="Единый номер экстренных служб - 112."/>
			<item description="Не забывайте свои вещи в салоне вагона. Если вы обнаружили бесхозные предметы, немедленно сообщите машинисту или дежурному по станции."/>
		</list>
	</route>
	]]
	)
end)