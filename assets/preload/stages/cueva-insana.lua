function onCreate()

	makeLuaSprite( 'Cueva_pe', 'cueva_pe', -400, -70)
	scaleObject('Cueva_pe', 2.3, 2.3);
	setLuaSpriteScrollFactor('Cueva_pe', 1.0, 1.0)
	addLuaSprite('Cueva_pe', false)

	setProperty('Cueva_pe.visible', true)

	makeLuaSprite('bf', 'When_te_mueres', 110, 1410)

	scaleObject('bf', 1.9, 1.9);

	setLuaSpriteScrollFactor('bf', 1.0, 1.0)
	addLuaSprite('bf', false)

	setProperty('bf.visible', false)
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'fondo1' then
			setProperty('Cueva_pe.visible', true);
			setProperty('bf.visible', false);
		end
		if value1 == 'fondo2' then
			setProperty('Cueva_pe.visible', true);
			setProperty('bf.visible', true);
		end
	end
end