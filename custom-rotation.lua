-- Uses a raycast to allow for custom rotation steps with scripting hotkeys
function onLoad()
  rotationstep = 1
  
  -- Script key indecies
  clockwiseindex = 1
  counterindex = 2
end

function onScriptingButtonDown(index, color)
  local pos = Player[color].getPointerPosition()
  local hit = Physics.cast({
      origin       = Vector(pos.x, pos.y + 1, pos.z),
      direction    = Vector(0,-1,0),
      type         = 1,
      size         = {1,1,1},
      max_distance = 9999,
      debug        = false,
  })
  if index == clockwiseindex then
    local objrot = hit[1].hit_object.getRotation()
    hit[1].hit_object.setRotation({objrot.x, objrot.y + rotationstep, objrot.z})
  end
  if index == counterindex then
    local objrot = hit[1].hit_object.getRotation()
    hit[1].hit_object.setRotation({objrot.x, objrot.y - rotationstep, objrot.z})
  end
end
