local modem = component.proxy(component.list('modem')())
local nav = component.proxy(component.list('navigation')())
local drone = component.proxy(component.list('drone')())

modem.open(1)

while true do
  local rng, _, _, _, _, message = computer.pullSignal()
  if rng == "modem_message" then
    if message == "go_up" then
      drone.move(0, 1, 0)
    elseif message == "go_down" then
      drone.move(0, -1, 0)
    elseif message == "go_forward" then
      drone.move(0, 0, -1)
    elseif message == "go_back" then
      drone.move(0, 0, 1)
    elseif message == "go_right" then
      drone.move(1, 0, 0)
    elseif message == "go_left" then
      drone.move(-1, 0, 0)
    end
  end
end