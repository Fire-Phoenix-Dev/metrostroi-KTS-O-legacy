-- local Map = game.GetMap() or ""
-- if Map:find("gm_metronvl") then
   -- -- Metrostroi.PlatformMap = "gm_metro_crossline"
   -- -- Metrostroi.CurrentMap = "gm_metro_crossline"
-- else
    -- return
-- end
timer.Simple(1,function()
	Metrostroi.AddMilasConfig("МПЛ","MPL Tree",
	[[
	<route version="3" id="1582474243">
		<name description="MPL">MPL</name>
		<direction description="Технологический Институт 2">
			<station description="Московская">
				<item description="Московская. Выход к автобусам в аэропорт Пулково. Moskovskaya. Exit to buses to Pulkovo airport. Следующая станция Парк Победы. The next station is Park Pobedy."/>
			</station>
			<station description="Парк Победы">
				<item description="Парк Победы. Park Pobedy. Следующая станция Электросила. The next station is Elektrosila."/>
			</station>
			<station description="Электросила">
				<item description="Электросила. Elektrosila. Следующая станция Московские Ворота. The next station is Moskovskiye Vorota."/>
			</station>
			<station description="Московские Ворота">
				<item description="Московские Ворота. Moskovskiye Vorota. Следующая станция Фрунзенская. The next station is Frunzenskaya."/>
			</station>
			<station description="Фрунзенская">
				<item description="Фрунзенская. Frunzenskaya. Следующая станция Технологический Институт 2, переход на станцию Технологический Институт 1 к поездам 1 линии. The next station is Tekhonolicheskiy Institut 1, transfer to line 1."/>
			</station>
			<station description="Технологический Институт 2">
				<item description="Поезд прибыл на конечную станцию Технологический Институт 2. The train has arrived to Tekhonolicheskiy Institut 2 station, the last station of this line."/>
			</station>
		</direction>
		<direction description="Московская">
			<station description="Технологичский Институт 1">
				<item description="Технологичский Институт 1. Переход на станцию Технологический Институт 2 к поездам 1 линии. Следующая станция Фрунзеская. The next station is Frunzenskaya."/>
			</station>
			<station description="Фрунзенская">
				<item description="Фрунзенская. Frunzenskaya. Следующая станция Московские Ворота. The next station is Moskovskiye Vorota."/>
			</station>
			<station description="Московские Ворота">
				<item description="Московские Ворота. Moskovskiye Vorota. Следующая станция Парк Победы. The next station is Park Pobedy."/>
			</station>
			<station description="Электросила">
				<item description="Электросила. Elektrosila. Следующая станция Парк Победы. The next station is Park Pobedy."/>
			</station>
			<station description="Парк Победы">
				<item description="Парк Победы. Park Pobedy. Следующая станция Московская, выход к автобусам в аэропорт Пулково. The next station is Moskovskaya. Exit to buses to Pulkovo airport."/>
			</station>
			<station description="Московская">
				<item description="Поезд прибыл на конечную станцию Московская. The train has arrived to Moskovskaya station, the last station of this line."/>
			</station>
		</direction>
		<list description="Сообщения">
			<item description="Тестовое сообщение для Феникса. Где мои чулки?"/>
			<item description="В чащах юга жил бы цитрус? да но фальшивый экземпляръ!"/>
			<item description="ГООООООООООЛ"/>
			<item description="Ебал рот всех кто ебёт мне мозги."/>
			<item description="МСА тим энд Курстрой и Ко ищет новых фембойчиков к себе в команду."/>
		</list>
	</route>
	]]
	)
end)