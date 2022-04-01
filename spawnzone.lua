-- Spawns a zone and assigns it to a variable for use later
function onload()
  myzone = nil -- Placeholder variable for the zone
  spawnObject({
    type = "ScriptingTrigger",
    position = {0,5,0},
    scale = {10, 10, 10},
    callback_function = assignZone
  })
end

function assignZone(newzone)
  myzone = newzone
end

-- Test function
function onObjectEnterScriptingZone(zone, obj)
  if zone == myzone then
    print("this ma zone")
  end
end
