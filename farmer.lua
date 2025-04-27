local colSize = 11

function Start()
   print("Start")
   forward()
end

function forward()

   refuel()

   for i=1,colSize do
      turtle.forward()
   end
end

function refuel()
   if turtle.getFuelLevel() < 10 then
      turtle.refuel()
   end
end

Start()
