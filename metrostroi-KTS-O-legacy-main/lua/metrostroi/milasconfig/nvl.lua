-- local Map = game.GetMap() or ""
-- if Map:find("gm_metronvl") then
   -- -- Metrostroi.PlatformMap = "gm_metro_crossline"
   -- -- Metrostroi.CurrentMap = "gm_metro_crossline"
-- else
    -- return
-- end
timer.Simple(1,function()
	Metrostroi.AddMilasConfig("НВЛ","NVL Tree",
	[[
	<route version="3" id="1582474243">
		<name description="NVL/PBL">NVL</name>
		<direction description="Рыбацкое">
			<station description="Приморская">
				<item description="Приморская. Primorskaya. Следующая станция Василеостровская. The next station is Vasileostrovskaya."/>
			</station>
			<station description="Василеостровская">
				<item description="Василеостровская. Vasileostrovskaya. Следующая станция Гостиный двор, переход на станцию Невский проспект к поездам 2 линии. The next station is Gostiny dvor, transfer to line 2."/>
			</station>
			<station description="Гостиный двор">
				<item description="Гостиный двор. Gostiny dvor. Следующая станция Маяковская, переход на станцию Площадь восстания к поездам 1 линии. The next station is Mayakovskaya, transfer to line 1."/>
			</station>
			<station description="Маяковская">
				<item description="Маяковская. Mayakovskaya. Следующая станция Площадь Александра Невского 1, переход на станцию Площадь Александра Невского 2 к поездам 4 линии. The next station is Ploschad' Aleksandra Nevskogo 1, transfer to line 4."/>
			</station>
			<station description="Площадь Александра Невского 1">
				<item description="Площадь Александра Невского 1. Ploschad' Aleksandra Nevskogo 1. Следующая станция Елизаровская. The next station is Elizarovskaya."/>
			</station>
			<station description="Елизаровская">
				<item description="Елизаровская. Elizarovskaya. Следующая станция Ломоносовская. The next station is Lomonosovskaya."/>
			</station>
			<station description="Ломоносовская">
				<item description="Ломоносовская. Lomonosovskaya. Следующая станция Пролетарская. The next station is Proletarskaya."/>
			</station>
			<station description="Пролетарская">
				<item description="Пролетарская. Proletarskaya. Следующая станция Обухово, железнодорожная станция Обухово. The next station is Obukhovo, Obukhovo Railway Station."/>
			</station>
			<station description="Обухово">
				<item description="Обухово. Obukhovo. Следующая станция Рыбацкое, железнодорожная станция Рыбацкое. The next station is Rybatskoye, Rybatskoye Railway Station."/>
			</station>
			<station description="Рыбацкое">
				<item description="Поезд прибыл на конечную станцию Рыбацкое, железнодорожная станция Рыбацкое, выход на правую сторону. The train has arrived to Rybatskoye station, the last station of this line and Rybatskoye Railway Station, your exit is on the right."/>
			</station>
		</direction>
		<direction description="Приморская">
			<station description="Рыбацкое">
				<item description="Рыбацкое. Rybatskoye. Следующая станция Обухово, железнодорожная станция Обухово. The next station is Obukhovo, Obukhovo Railway Station."/>
			</station>
			<station description="Обухово">
				<item description="Обухово. Obukhovo. Следующая станция Пролетарская. The next station is Proletarskaya."/>
			</station>
			<station description="Пролетарская">
				<item description="Пролетарская. Proletarskaya. Следующая станция Ломоносовская. The next station is Lomonosovskaya."/>
			</station>
			<station description="Ломоносовская">
				<item description="Ломоносовская. Lomonosovskaya. Следующая станция Елизаровская. The next station is Elizarovskaya."/>
			</station>
			<station description="Елизаровская">
				<item description="Елизаровская. Elizarovskaya. Следующая станция Площадь Александра Невского 1, переход на станцию Площадь Александра Невского 2 к поездам 4 линии. The next station is Ploschad' Aleksandra Nevskogo 1, transfer to line 4."/>
			</station>
			<station description="Площадь Александра Невского 1">
				<item description="Площадь Александра Невского 1. Ploschad' Aleksandra Nevskogo 1. Следующая станция Маяковская, переход на станцию Площадь восстанция к поездам 1 линии. The next station is Mayakovskaya, tranfer to line 1."/>
			</station>
			<station description="Маяковская">
				<item description="Маяковская. Mayakovskaya. Следующая станция Гостиный двор, переход на станцию Невский проспект к поездам 2 линии. The next station is Gostiny dvor, transfer to line 2."/>
			</station>
			<station description="Гостиный двор">
				<item description="Гостиный двор. Gostiny dvor. Следующая станция Василеостровская. The next station is Vasileostrovskaya."/>
			</station>
			<station description="Василеостровская">
				<item description="Василеостровская. Vasileostrovskaya. Следующая станция Приморская. The next station is Primorskaya."/>
			</station>
			<station description="Приморская">
				<item description="Поезд прибыл на конечную станцию Приморская. The train has arrived to Primorskaya station, the last station of this line."/>
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