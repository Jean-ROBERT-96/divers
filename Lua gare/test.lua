component = require("component")
sides = require("sides")

detector = component.ir_augment_detector
rs0 = component.proxy("3a112aa8-0e18-4bb1-b4d3-7fddd67d1d86")
rs1 = component.proxy("40ae1e87-a48f-4fdc-a7b9-3c8fa331ad6a")

while true do
  local tag = detector.getTag()
  if tag == "Ligne1" then
    rs0.setOutput(sides.top, 1)
    rs1.setOutput(sides.top, 0)
    os.sleep(5)
  elseif tag == "Ligne2" then
    rs0.setOutput(sides.top, 0)
    rs1.setOutput(sides.top, 0)
    os.sleep(5)
  elseif tag == "Ligne3" then
    rs0.setOutput(sides.top, 0)
    rs1.setOutput(sides.top, 1)
    os.sleep(5)
  else
    os.sleep(0.5)
  end
end