-- Wipes the scripts of all loaded objects
function onload()
    for o, obj in ipairs(getAllObjects()) do
      obj.setLuaScript("")
    end
end
