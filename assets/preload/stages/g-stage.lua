function onCreate()
	-- background shit
	makeLuaSprite('g-back', 'g-back, -250, -400);
	setScrollFactor('g-back', 0.9, 0.9);
	scaleObject('g-front', 1.1, 1.1);

	makeLuaSprite('g-front', 'g-front', -650, 600);
	setScrollFactor('g-front', 0.9, 0.9);
	scaleObject('g-front', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);

	end

	addLuaSprite('g-back', false);
	addLuaSprite('g-front', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end