function onCreate()
	-- background shit
	makeLuaSprite('stagebackgo', 'stagebackgo', -500, -300);
	setLuaSpriteScrollFactor('stagebackgo', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefrontgo', -650, 600);
	setLuaSpriteScrollFactor('stagefrontgo', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_leftgo', 'stage_lightgo', -125, -100);
		setLuaSpriteScrollFactor('stagelight_leftgo', 0.9, 0.9);
		scaleObject('stagelight_leftgo', 1.1, 1.1);
		
		makeLuaSprite('stagelight_rightgo', 'stage_lightgo', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_rightgo', 0.9, 0.9);
		scaleObject('stagelight_rightgo', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_rightgo', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtainsgo', 'stagecurtainsgo', -500, -300);
		setLuaSpriteScrollFactor('stagecurtainsgo', 1.3, 1.3);
		scaleObject('stagecurtainsgo', 0.9, 0.9);
	end

	addLuaSprite('stagebackgo', false);
	addLuaSprite('stagefrontgo', false);
	addLuaSprite('stagelight_leftgo', false);
	addLuaSprite('stagelight_rightgo', false);
	addLuaSprite('stagecurtainsgo', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
