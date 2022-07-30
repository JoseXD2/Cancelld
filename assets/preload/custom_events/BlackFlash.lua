function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s";
    end
    local t={};
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str);
    end
    return t;
end

function onEvent(name, value1, value2)
local tabledos=mysplit(value2,",");
local table=mysplit(value1,",");
    if name == "BlackFlash" then
	makeLuaSprite('image', 'black-image', 0, 0);
	scaleObject('image', 1, 1);
	addLuaSprite('image', true);
	doTweenColor('hello', 'image', 'FFFFFFFF', 0.5, 'quartIn');
	setObjectCamera('image', 'hud');
	runTimer('wait', 1);
    end
end

function onTimerCompleted(tag, loops, loopsleft)
   if tag == 'wait' then
	doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');
   end
end

function onTweenCompleted(tag)
    if tag == 'byebye' then
	removeLuaSprite('image', true);
    end
end