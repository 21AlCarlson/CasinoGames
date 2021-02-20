local Game = {}

API = require("buttonAPI")
components = require("component")
computer = require("computer")
local mon = components.gpu

local function fillTable() 
  API.setTable("Spin", Spin, 5,55,38,48)
  API.setTable("Exit", Exit, 105,155,38,48)
  API.screen()
end

function Exit() 
  computer.shutdown(true)
end

function Spin() 
  API.newMenu()
  -- 80 is the center of the screen
  API.heading("Pick a number, color, or parity.")
  API.setTable("Number", PickedNumber, 5,45,24,26)
  API.setTable("Color", PickedColor, 60,100,24,26)
  API.setTable("Parity", PickedParity, 115,155,24,26)
  API.screen()
end

function PickedNumber()
end

function PickedColor()
end

function PickedParity()
end

function Game.start() 
  API.newMenu()
  fillTable()
end

return Game

