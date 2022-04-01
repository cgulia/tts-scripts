-- Context menu entry to swap the positions of two selected objects
function onLoad()
    for a, thing in pairs(getAllObjects()) do
      thing.addContextMenuItem('swapstuff', swapstuff, false)
    end
end
  
function swapstuff(player_color)
    things = Player[player_color].getSelectedObjects()
    if #things < 2 then -- Does not exclude *more* than two objects, just skips them
        print("Can't swap less than two objects!")
        return
    else
        local position1 = things[1].getPosition()
        local position2 = things[2].getPosition()
        things[1].setPosition(position2)
        things[2].setPosition(position1)
    end
end
