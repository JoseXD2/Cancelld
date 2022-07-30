function onCreate()
	-- background shit
	makeLuaSprite('stageback3', 'tgt/stageback3', -600, -300);
	setScrollFactor('stageback3', 0.9, 0.9);
	
	makeLuaSprite('stagefront3', 'tgt/stagefront3', -650, 600);
	setScrollFactor('stagefront3', 0.9, 0.9);
	scaleObject('stagefront3', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagecurtains3', 'tgt/stagecurtains3', -500, -230);
		setScrollFactor('stagecurtains3', 1.3, 1.3);
		scaleObject('stagecurtains3', 0.9, 0.9);
	end

	addLuaSprite('stageback3', false);
	addLuaSprite('stagefront3', false);
	addLuaSprite('stagecurtains3', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end