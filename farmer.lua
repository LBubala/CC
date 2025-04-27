local colSize = 4
local rowSize = 11
local isFlooded = true
local startX, startY, startZ = 0, 0, 0
local leftDirection = true

function Start()
   print("Start")
   startHarvesting()
end

function startHarvesting()
   for col=1,colSize do
      refuel()
      forward(rowSize)
      chooseDirection()
   end
   goHome()
end

function forward(n)
   for i=1,n do
      local success, data = turtle.inspectDown()
      if success then
         if data.name == "minecraft:wheat" and data.state.age ==7 then
            turtle.digDown()
            turtle.placeDown()
         end
      end
      turtle.forward()
   end
end

function chooseDirection()
   if leftDirection then
      turtle.turnLeft()
      turtle.forward()
      turtle.turnLeft()
      leftDirection = false
   else
      turtle.turnRight()
      turtle.forward()
      turtle.turnRight()
      leftDirection = true
   end
end

function refuel()
   if turtle.getFuelLevel() < 10 then
      turtle.refuel()
   end
end

function goHome()
   turtle.turnRight()
   forward(4)
   turtle.turnLeft()
end

Start()
