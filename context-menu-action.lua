function onload()
    allthings = getAllObjects()
    for a, thing in pairs(allthings) do
        thing.addContextMenuItem('flip me', flipme, false)
    end
end
  
function flipme(player_color)
    things = Player[player_color].getSelectedObjects()
    for o, obj in pairs(things) do
        obj.flip()
    end
end
