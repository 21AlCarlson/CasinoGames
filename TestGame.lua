local event = require("event")

while true do 
  local _,_,x,y = event.pull("touch")
  print(x,y)
end
