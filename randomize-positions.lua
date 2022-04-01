-- Randomizes the positions of all objects by swapping their positions with a randomly chosen object
function onload()
    stuff = getAllObjects()
    for o, object in pairs(stuff) do
        local random = math.random(1, #stuff)
        local startpos = object.getPosition()
        local randompos = stuff[random].getPosition()
        object.setPosition(randompos)
        stuff[random].setPosition(startpos)
    end
end
