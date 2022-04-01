-- Stacks objects such as cards without them merging in to a deck
function onload()
  preventstack = false
  allthings = getAllObjects()
  for t, thing in pairs(allthings) do
    thing.addContextMenuItem('psuedostack', psuedostack, false)
  end
end

function tryObjectEnterContainer(container, object)
  if preventstack == true then
    return false
  else
    return true
  end
end

function psuedostack(player_color)
  preventstack = true
  local offset = 0.2
  local pos = Player[player_color].getPointerPosition()
  things = Player[player_color].getSelectedObjects()
  for o, obj in pairs(things) do
    obj.setPositionSmooth(pos)
    pos['y'] = pos['y'] + offset
  end
  Wait.time(function() preventstack = false end, 3, 1)
end
