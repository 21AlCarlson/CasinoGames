local Game = {}

API = require("buttonAPI")
math = require("Math")
components = require("components")
local mon = component.gpu

local function fillTable() 
  API.setTable("Spin", Game.Spin, 5,15,76,78)
  API.setTable("Exit", Game.Exit, 145,155,76,78)
  API.screen()
end

function Game.Exit() 
  HomeScreen.setScreen()
end

function Game.Spin() 
  API.newMenu()
  -- 80 is the center of the screen
  API.heading("Pick a number, color, or parity.")
  API.setTable("Number", Game.PickedNumber, 5,15,39,41)
  API.setTable("Color", Game.PickedColor, 75,85,39,41)
  API.setTable("Parity",Game.PickedParity, 145,155,39,41)
  API.screen()
  math.random()
end

function Game.PickedNumber()
end

function Game.PickedColor()
end

function Game.PickedParity()
end

function Game.start() 
  API.newMenu()
  fillTable()
end
  
  API.fillTable()

