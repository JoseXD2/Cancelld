function onCreate()
	makeLuaSprite('blackScreenSomething','',0,0)
	setObjectCamera('blackScreenSomething','hud')
	setProperty('blackScreenSomething.alpha',0.001)
	makeGraphic('blackScreenSomething',screenWidth,screenHeight,'000000')
	addLuaSprite('blackScreenSomething')
end
function opponentNoteHit()
    if getProperty('health') > 0.4 then
        setProperty('health', getProperty('health')- 0.017);
    end
end
function onStepHit()
	if curStep == 784 then
		setProperty('blackScreenSomething.alpha',1)
	end
	if curStep == 803 then
		removeLuaSprite('blackScreenSomething',true)
	end
end