local colSize = 4
local rowSize = 11
local isFloded = true
local startX, startY, StartZ = 0, 0, 0
local leftDirection = true

function Start()
   print("Start")
   startHarwesting()
end

function startHarwesting()
   local col
   for row = 1,colSize do
      refuel()
      forward()
      chooseDirection()
   end
end

function forward()
   for i=1,rowSize do
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

Start()
