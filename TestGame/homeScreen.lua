-- MOPARDAN
-- SEP 2ND, 2014
-- code from https://pastebin.com/N7ggD2CN

local HomeScreen = {}

API = require("buttonAPI")
Game = require("game")
local event = require("event")
local computer = require("computer")
local term = require("term")
local component = require("component")
local gpu = component.gpu

local rs = component.redstone
local colors = require("colors")
local side = require("sides")

local function fillTable()
  API.setTable("Play Game", PlayGame, 5,55,39,48)
  API.setTable("Shut down", ShutDown, 105,155,39,48)
  API.screen()
end

function getClick()
  local _, _, x, y = event.pull(1,touch)
  if x == nil or y == nil then
    local h, w = gpu.getResolution()
    gpu.set(h, w, ".")
    gpu.set(h, w, " ")
  else 
    API.checkxy(x,y)
  end
end

function PlayGame()
  Game.start()
end

function test2()
  API.toggleButton("Toggle")
  if buttonStatus == true then
    -- # If the button is on (green) do something.
  else
    -- # If the button is off (red) do this instead.
  end
end

function test3()
  term.setCursor(1,25)
  term.write("Free Memory: "..computer.freeMemory().." bytes")
end

function shutDown()
  computer.shutdown(true)
end

function HomeScreen.setScreen()
  API.clearTable()
  fillTable()
  API.heading("Roulette")
end

term.setCursorBlink(false)
gpu.setResolution(160,50)
HomeScreen.setScreen()

while true do
  getClick()
end



--eof
